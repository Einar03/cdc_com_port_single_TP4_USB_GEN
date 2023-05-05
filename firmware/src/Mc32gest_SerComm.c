// Mc32Gest_SerComm.C
// fonction d'émission et de réception des message
// transmis en USB CDC
// Canevas TP4 SLO2 2015-2015


#include "app.h"
#include "Mc32gest_SerComm.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>


// Fonction de reception  d'un  message
// Met à jour les paramètres du generateur a partir du message recu
// Format du message
//  !S=TF=2000A=10000O=+5000D=100WP=0#
//  !S=PF=2000A=10000O=-5000D=100WP=1#


void GetMessage(uint8_t *USBReadBuffer, S_ParamGen *pParam, bool *SaveTodo)
{
    // Variable locales
    uint8_t CharFinded = 0;
    char *PtValue;
    char CharValue1[1];
    char CharValue2[4];
    char CharValue3[5];
    
    // Teste pour chercher dans le buffer
//    PtValue = strstr((char*)USBReadBuffer, "F=");
//    PtValue += 2;
//    strcpy(CharValue1, PtValue);
    // Controle du format du message
//    CharFinded = sizeof(USBReadBuffer);
//    CharValue1[0] = '2';
    /*(sizeof(USBReadBuffer) == 29) && */
    if((USBReadBuffer[0] == '!') && (USBReadBuffer[28] == '#'))
    {
        
//        // Forme du signal
        PtValue = strstr((char*)USBReadBuffer, "S=");
        PtValue += 2;
        strncpy(CharValue1, PtValue, 1);
//        
        switch(CharValue1[0])
        {
            case 'S':
                pParam->Forme = SignalSinus;
                break;
            case 'T':
                pParam->Forme = SignalTriangle;
                break;
            case 'D':
                pParam->Forme = SignalDentDeScie;
                break;
            case 'C':
                pParam->Forme = SignalCarre;
                break;
            default:
//                pParam->Forme = SignalTriangle;
                break;
        }
        PtValue = strstr((char*)USBReadBuffer, "F=");
        PtValue += 2;
        strncpy(CharValue2, PtValue, 4);
        pParam->Frequence = atoi(CharValue2);
        
        PtValue = strstr((char*)USBReadBuffer, "A=");
        PtValue += 2;
        strncpy(CharValue3, PtValue, 5);
        pParam->Amplitude = atoi(CharValue3);
      
        PtValue = strstr((char*)USBReadBuffer, "O=");
        PtValue += 2;
        strncpy(CharValue3, PtValue,5);
        pParam->Offset = atoi(CharValue3);
       
//        PtValue = strstr((char*)USBReadBuffer, "W=");
//        PtValue += 2;
//        strcpy(CharValue1, PtValue);
        
    }
    
    
    
    // Decodage et recuperation des valeurs du message
    
    CharFinded = 15;
    //return false; 
} // GetMessage


// Fonction d'envoi d'un  message
// Rempli le tampon d'émission pour USB en fonction des paramètres du générateur
// Format du message
// !S=TF=2000A=10000O=+5000D=25WP=0#
// !S=TF=2000A=10000O=+5000D=25WP=1#    // ack sauvegarde



void SendMessage(uint8_t *USBSendBuffer, S_ParamGen *pParam, bool Saved )
{
    // Varaibles locales
//    uint8_t i = 0;
    char CharValue[6] = "00000";
//    char test;
    
    // Convertions Forme signal en caractere et écriture dans le buffer
    switch(pParam->Forme)
    {
        case SignalSinus:
        {
            USBSendBuffer[3] = 'S';
            break;
        }
        case SignalTriangle:
        {
            USBSendBuffer[3] = 'T';
            break;
        }
        case SignalDentDeScie:
        {
            USBSendBuffer[3] = 'D';
            break;
        }
        case SignalCarre:
        {
            USBSendBuffer[3] = 'C';
            break;
        }
        default:
        {
            USBSendBuffer[3] = '0';
            break;
        }
        
    }
    // Convertion de la frequence en string et ecriture dans el buffer
    sprintf(CharValue, "%04d", pParam->Frequence);
    WriteMessageValue(6,4,USBSendBuffer,CharValue);
//    for(i = 0; i < 4; i++)
//    {
//        USBSendBuffer[i+6] = CharValue[i];
//    }
    // Convertion de l'amplitude en string et ecriture dans el buffer
    sprintf(CharValue, "%05d", pParam->Amplitude);
    WriteMessageValue(12,5,USBSendBuffer,CharValue);
//    for(i = 0; i < 5; i++)
//    {
//        USBSendBuffer[i+12] = CharValue[i];
//    }
    // Convertion de l'offset en string et ecriture dans el buffer
    sprintf(CharValue, "%05d", pParam->Offset);
    WriteMessageValue(19,5,USBSendBuffer,CharValue);
//    for(i = 0; i < 5; i++)
//    {
//        USBSendBuffer[i+19] = CharValue[i];
//    }
    if(Saved == true)
    {
        USBSendBuffer[29] = '1';
    }
    else
    {
        USBSendBuffer[29] = '0';
    }
    
    Update_Message(USBSendBuffer);
    APP_UpdateState(APP_STATE_SCHEDULE_WRITE);
    SetWriteFlag();
    
    
} // SendMessage

void WriteMessageValue(uint8_t Index, uint8_t ValSize, uint8_t *Message, char *Value)
{
    uint8_t i = 0;
    
    for(i = 0; i < ValSize; i++)
    {
        Message[i+Index] = Value[i];
    }
}
//void FindMessageValue(char Message, uint8_t MsgSize, char MsgValue, char *PtValue)
//{
//    // Variables locales
//    char ReadValue[MsgSize];
//    
//    PtValue = strstr((char*)USBReadBuffer, MsgValue);
//    PtValue += 2;
//    strcpy(ReadValue, PtValue);
//}
