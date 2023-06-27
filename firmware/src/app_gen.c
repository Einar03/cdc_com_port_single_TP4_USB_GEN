/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app_gen.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "app_gen.h"
#include "Mc32DriverLcd.h"
#include "Mc32gestSpiDac.h"
#include "DefMenuGen.h"
#include "MenuGen.h"
#include "GesPec12.h"
#include "GesS9.h"
#include "Generateur.h"
#include "Mc32gest_SerComm.h"
#include "Mc32gestI2cSeeprom.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

APP_GEN_DATA app_genData;
S_ParamGen LocalParamGen;
S_ParamGen RemoteParamGen;
S_ParamGen CheckUpdateParamGen;

S_ParamGen NewParamGen; // Pour récuperation des nouveaux paramètres
bool UsbConnected ;     // Flag pour l'état de l'USB
static bool SaveData = false; // Flag pour la sauvegarde en mode remote
// Tableu pour la réception des données de l'USB (app.c))
static uint8_t ReceiveMessageString[30] = "!S=CF=1122A=33445O=+5566WP=0#";

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_GEN_Initialize ( void )

  Remarks:
    See prototype in app_gen.h.
 */

void APP_GEN_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    APP_GEN_UpdateState(APP_GEN_STATE_INIT);
    
    DRV_TMR0_Initialize();
    DRV_TMR1_Initialize();
    
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_GEN_Tasks ( void )

  Remarks:
    See prototype in app_gen.h.
 */

void APP_GEN_Tasks ( void )
{
    // Variables locales
    // Tableau pour sauvegarder le message à envoyer
//    static uint8_t MessageString[30] = "!S=0F=0000A=00000O=+0000WP=1#";
    static uint16_t cntSend = 0;
//    static uint8_t MessageString[43] = "!CCT=0000LO=0000CRI=000LUX=0000ITime=0000#";
    static uint8_t MessageString[95] = "!CCT=0000LO=0000CRI=000LUX=0000ITime=0000@001=0.002500@002=0.005000@003=0.007500@004=0.010000#";
    /* Check the application's current state. */
    switch ( app_genData.state )
    {
        /* Application's initial state. */
        case APP_GEN_STATE_INIT:
        {
            lcd_init();
            lcd_init();
            lcd_bl_on();
            // Inititalisation du SPI DAC
            SPI_InitLTC2604();

            // Initialisation PEC12
            Pec12Init();

            // Initialisation S9
            S9Init();
            
            // Init RTCC
            I2C_InitMCP79411();
           
            // Initialisation du generateur
            GENSIG_Initialize(&LocalParamGen);

            // Initialisation du menu
            MENU_Initialize(&LocalParamGen);
            
            // Synchronisation des parametres remote avec locaux
            RemoteParamGen = LocalParamGen;
            
            // Demarrage du generateur de fonction
            GENSIG_UpdateSignal(&LocalParamGen);
            APP_GEN_UpdateState(APP_GEN_WAIT);
            
            // Active les timers
            DRV_TMR0_Start();
            DRV_TMR1_Start();
            break;
        }
        
        case APP_GEN_STATE_SERVICE_TASKS:
        {
            cntSend = (cntSend + 1) % 500;
            // Si des nouvelles donnees ont ete recues
            if (app_genData.newDataReceived == true)
            {
                app_genData.newDataReceived = false;
                // Decodage des donnees recues
                GetMessage(ReceiveMessageString, &RemoteParamGen, &SaveData);
                if(SaveData == true)
                {
                    I2C_WriteSEEPROM(&RemoteParamGen, 0x00, 16);
                }
                SendMessage(MessageString, &RemoteParamGen, &SaveData);
            }
            // Execution du menu en local ou remote
            // ====================================
            // Si USB connecte => mode remote
//            if(UsbConnected == true)
//            {
//                MENU_Execute(&RemoteParamGen, REMOTE);
//                NewParamGen = RemoteParamGen;
//            }
//            // Si non mode local
//            else
//            {
//                MENU_Execute(&LocalParamGen, LOCAL);
//                NewParamGen = LocalParamGen;
//            }
            MENU_Execute(&LocalParamGen, LOCAL);
            NewParamGen = LocalParamGen;
            // Execution du générateur avec les valeurs locales ou remote
            // Si les données sont différentes, mettre à jour le signal de sortie
            if((CheckUpdateParamGen.Forme!=NewParamGen.Forme)||
              (CheckUpdateParamGen.Amplitude!=NewParamGen.Amplitude)||
              (CheckUpdateParamGen.Offset!=NewParamGen.Offset))
            {
                GENSIG_UpdateSignal(&NewParamGen);
            }
            if(CheckUpdateParamGen.Frequence!=NewParamGen.Frequence)
            {
                GENSIG_UpdatePeriode(&NewParamGen);
            }
            APP_GEN_UpdateState(APP_GEN_WAIT);
            if(UsbConnected == true)
            {
                if(cntSend == 0)
                {
                    SendMessage(MessageString, &LocalParamGen, &SaveData);
                }
            }
            // Sauvegarde des parametres precedents
            CheckUpdateParamGen = NewParamGen;
            
            break;
        }
        case APP_GEN_WAIT:
        {
            break;
        }
        /* TODO: implement your application state machine.*/
        

        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}

void APP_GEN_ReadDatasFromSerial(uint8_t *SerialDatas)
{
    // Copie du buffer de l'USB dans le tableu de données
    strncpy((char*)ReceiveMessageString, (char*)SerialDatas, 29);
    // Set flag pour indique la réception d'une nouvelle donnée
    app_genData.newDataReceived = true;
}

void APP_GEN_UpdateState (APP_GEN_STATES NewState)
{
    app_genData.state = NewState;
}

void SetUsbFlag(void)
{
    UsbConnected = true;
}
void ResetUsbFlag(void)
{
    UsbConnected = false;
}
bool GetUsbFlagState(void)
{
    return UsbConnected;
}
/*******************************************************************************
 End of File
 */
