#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mx_usb_sk2_int_dyn.mk)" "nbproject/Makefile-local-pic32mx_usb_sk2_int_dyn.mk"
include nbproject/Makefile-local-pic32mx_usb_sk2_int_dyn.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mx_usb_sk2_int_dyn
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/cdc_com_port_single_tu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/cdc_com_port_single_tu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/app.c ../src/main.c ../src/app_gen.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c ../../../../../../bsp/pic32mx_skes/bsp.c ../../../../../../bsp/pic32mx_skes/Mc32Delays.c ../../../../../../bsp/pic32mx_skes/Mc32DriverAdc.c ../../../../../../bsp/pic32mx_skes/Mc32DriverAdcAlt.c ../../../../../../bsp/pic32mx_skes/Mc32DriverLcd.c ../../../../../../bsp/pic32mx_skes/Mc32CoreTimer.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_static.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_mapping.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c ../src/Generateur.c ../src/GesPec12.c ../src/GesS9.c ../src/Mc32Debounce.c ../src/Mc32NVMUtil.c ../src/Mc32SpiUtil.c ../src/Mc32gestSPiDac.c ../src/MenuGen.c ../src/Mc32gest_SerComm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_gen.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/326400065/bsp.o ${OBJECTDIR}/_ext/326400065/Mc32Delays.o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/1150414583/sys_devcon.o ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o ${OBJECTDIR}/_ext/1774247193/system_init.o ${OBJECTDIR}/_ext/1774247193/system_interrupt.o ${OBJECTDIR}/_ext/1774247193/system_exceptions.o ${OBJECTDIR}/_ext/1774247193/system_tasks.o ${OBJECTDIR}/_ext/1360937237/Generateur.o ${OBJECTDIR}/_ext/1360937237/GesPec12.o ${OBJECTDIR}/_ext/1360937237/GesS9.o ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o ${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o ${OBJECTDIR}/_ext/1360937237/MenuGen.o ${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_gen.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d ${OBJECTDIR}/_ext/692885480/usb_device.o.d ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d ${OBJECTDIR}/_ext/326400065/bsp.o.d ${OBJECTDIR}/_ext/326400065/Mc32Delays.o.d ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o.d ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o.d ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o.d ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o.d ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o.d ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o.d ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/1150414583/sys_devcon.o.d ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d ${OBJECTDIR}/_ext/1774247193/system_init.o.d ${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d ${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d ${OBJECTDIR}/_ext/1774247193/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/Generateur.o.d ${OBJECTDIR}/_ext/1360937237/GesPec12.o.d ${OBJECTDIR}/_ext/1360937237/GesS9.o.d ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d ${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o.d ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d ${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o.d ${OBJECTDIR}/_ext/1360937237/MenuGen.o.d ${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_gen.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/326400065/bsp.o ${OBJECTDIR}/_ext/326400065/Mc32Delays.o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/1150414583/sys_devcon.o ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o ${OBJECTDIR}/_ext/1774247193/system_init.o ${OBJECTDIR}/_ext/1774247193/system_interrupt.o ${OBJECTDIR}/_ext/1774247193/system_exceptions.o ${OBJECTDIR}/_ext/1774247193/system_tasks.o ${OBJECTDIR}/_ext/1360937237/Generateur.o ${OBJECTDIR}/_ext/1360937237/GesPec12.o ${OBJECTDIR}/_ext/1360937237/GesS9.o ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o ${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o ${OBJECTDIR}/_ext/1360937237/MenuGen.o ${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o

# Source Files
SOURCEFILES=../src/app.c ../src/main.c ../src/app_gen.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c ../../../../../../bsp/pic32mx_skes/bsp.c ../../../../../../bsp/pic32mx_skes/Mc32Delays.c ../../../../../../bsp/pic32mx_skes/Mc32DriverAdc.c ../../../../../../bsp/pic32mx_skes/Mc32DriverAdcAlt.c ../../../../../../bsp/pic32mx_skes/Mc32DriverLcd.c ../../../../../../bsp/pic32mx_skes/Mc32CoreTimer.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_static.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_mapping.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c ../src/Generateur.c ../src/GesPec12.c ../src/GesS9.c ../src/Mc32Debounce.c ../src/Mc32NVMUtil.c ../src/Mc32SpiUtil.c ../src/Mc32gestSPiDac.c ../src/MenuGen.c ../src/Mc32gest_SerComm.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mx_usb_sk2_int_dyn.mk dist/${CND_CONF}/${IMAGE_TYPE}/cdc_com_port_single_tu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/8fd7ee2ae6513806ddabc64024732b8410b9019.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/50b3cb712821c835609b3c16d7048ec0714a3af0.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_gen.o: ../src/app_gen.c  .generated_files/cd602f3c5f028579e4120430756aefd3ffe7049e.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_gen.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_gen.o ../src/app_gen.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/9fde0b8c046f5804d0a458f783aa2d6e57695bc2.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1585079243/drv_usbfs.o: ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  .generated_files/9558f4faa0d6498a88e7afb530da74b744936daa.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1585079243" 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  .generated_files/cd52f0d942576522ba38bcdbdbe9b637f138c43a.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o: ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  .generated_files/4158b87147f358a4ee83b8f3aa7d824ed9088a13.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1585079243" 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c  .generated_files/836ac483a8631e222c4340f08df7aed090a40034.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  .generated_files/20074787c7723972add8e1bbf02c594904f11cab.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/326400065/bsp.o: ../../../../../../bsp/pic32mx_skes/bsp.c  .generated_files/53ce0f6681572f93dee0b5f1419178b65a362be5.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/326400065/bsp.o.d" -o ${OBJECTDIR}/_ext/326400065/bsp.o ../../../../../../bsp/pic32mx_skes/bsp.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/326400065/Mc32Delays.o: ../../../../../../bsp/pic32mx_skes/Mc32Delays.c  .generated_files/c87b1766e126798ee4c2d43bb8500364c5dcf4e7.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32Delays.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32Delays.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32Delays.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32Delays.o ../../../../../../bsp/pic32mx_skes/Mc32Delays.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o: ../../../../../../bsp/pic32mx_skes/Mc32DriverAdc.c  .generated_files/21104d997fa8cfb04f61b31d687ad068a44efdf7.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o ../../../../../../bsp/pic32mx_skes/Mc32DriverAdc.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o: ../../../../../../bsp/pic32mx_skes/Mc32DriverAdcAlt.c  .generated_files/ca56f22fcc25044b65b19e810cc386f547795bdf.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o ../../../../../../bsp/pic32mx_skes/Mc32DriverAdcAlt.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o: ../../../../../../bsp/pic32mx_skes/Mc32DriverLcd.c  .generated_files/50d8d8179cb03257cd2c8399ba1fdeb206f75e02.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o ../../../../../../bsp/pic32mx_skes/Mc32DriverLcd.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o: ../../../../../../bsp/pic32mx_skes/Mc32CoreTimer.c  .generated_files/c30b50bfe783c73bac7fcf93cf1b2c3a33f031a2.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o ../../../../../../bsp/pic32mx_skes/Mc32CoreTimer.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_static.c  .generated_files/34a179184b31dfd5d971406fedbd4281cf8424d1.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1944736928" 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o.d" -o ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_static.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_mapping.c  .generated_files/db057436b9b3d9d354ed377be13a20ac1bbca334.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1944736928" 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o.d" -o ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_mapping.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/661a1c41968f72d4c0dc886d36ed753c2f025b94.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/102310384" 
	@${RM} ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1150414583/sys_devcon.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon.c  .generated_files/2a9970c9132912407160c7cd46dde246cf8ac8d3.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1150414583" 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1150414583/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1150414583/sys_devcon.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/7b76d17d84f3b8c8255a35d0fa1d1e30b2d79c03.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1150414583" 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1956551008/sys_ports_static.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c  .generated_files/5ba1133631fadb57686514b63052e0d7f97d1df6.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1956551008" 
	@${RM} ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1774247193/system_init.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c  .generated_files/188c7c2774177c06f4ca0013b924ea9eca39ded7.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_init.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_init.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1774247193/system_interrupt.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c  .generated_files/963a263ef844d6b72b1e2bede710bf9d02cafc21.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_interrupt.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1774247193/system_exceptions.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c  .generated_files/89c9e617ff73e6231b3394c9b6c0fd9ffc99305c.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_exceptions.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1774247193/system_tasks.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c  .generated_files/acebbbedc52699063c8006096c37f2fbb185e23a.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_tasks.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Generateur.o: ../src/Generateur.c  .generated_files/936c059d751dc050bac6c585edc10ee08c11d72c.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Generateur.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Generateur.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Generateur.o.d" -o ${OBJECTDIR}/_ext/1360937237/Generateur.o ../src/Generateur.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/GesPec12.o: ../src/GesPec12.c  .generated_files/9fb50824dc215d4f2ace743081b71709d063316f.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/GesPec12.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/GesPec12.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/GesPec12.o.d" -o ${OBJECTDIR}/_ext/1360937237/GesPec12.o ../src/GesPec12.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/GesS9.o: ../src/GesS9.c  .generated_files/f6d10e4c066cca35a9a1d23bbd7b2d55f743728b.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/GesS9.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/GesS9.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/GesS9.o.d" -o ${OBJECTDIR}/_ext/1360937237/GesS9.o ../src/GesS9.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o: ../src/Mc32Debounce.c  .generated_files/a3578f5308e6f0844ad8d276f0558e70373c5f83.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o ../src/Mc32Debounce.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o: ../src/Mc32NVMUtil.c  .generated_files/39faff80bf02984570b4bd804ea29670c9db6409.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o ../src/Mc32NVMUtil.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o: ../src/Mc32SpiUtil.c  .generated_files/edebcba798b9125dba2c573785ff56155f2da582.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ../src/Mc32SpiUtil.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o: ../src/Mc32gestSPiDac.c  .generated_files/48cdaee4d7a22bcee590453c7e298d0968ab037d.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o ../src/Mc32gestSPiDac.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/MenuGen.o: ../src/MenuGen.c  .generated_files/3b30ee3a61c8be94734c686670eaf6ecb5f6bdb2.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/MenuGen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/MenuGen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/MenuGen.o.d" -o ${OBJECTDIR}/_ext/1360937237/MenuGen.o ../src/MenuGen.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o: ../src/Mc32gest_SerComm.c  .generated_files/3ec1650071fd4814d014a28a83a711f45ff96ee5.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o ../src/Mc32gest_SerComm.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/350a4e78724c2516283ae191402f63c15d682c41.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/7f26b074cf36bcf91787b139ecd45b359b27063c.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_gen.o: ../src/app_gen.c  .generated_files/d34246e8cc63b8617c2c823b3da069ac41a3ee35.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_gen.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_gen.o ../src/app_gen.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/a2665b3e8f6ca559b1e0c93d4c9611d8c22c23ff.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1585079243/drv_usbfs.o: ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  .generated_files/333a47123de7866ed08a638d970048d93b5f762a.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1585079243" 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  .generated_files/95c98ee2c9ff71535ce24628bd535cff88f18f80.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o: ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  .generated_files/9514dd67646abd13c6c25397e9c768aabe489d2c.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1585079243" 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c  .generated_files/2d981b5bd53b22724b6d664c445668e2adfbbf94.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  .generated_files/61bd58be06c5145201e2a6fe6eaaccc418e70831.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/326400065/bsp.o: ../../../../../../bsp/pic32mx_skes/bsp.c  .generated_files/699ae4f5be0bd5e172baa8b4bad092d0a150bc07.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/326400065/bsp.o.d" -o ${OBJECTDIR}/_ext/326400065/bsp.o ../../../../../../bsp/pic32mx_skes/bsp.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/326400065/Mc32Delays.o: ../../../../../../bsp/pic32mx_skes/Mc32Delays.c  .generated_files/f6624c813294aacd0ef0c8ea344d67907a2657ae.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32Delays.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32Delays.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32Delays.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32Delays.o ../../../../../../bsp/pic32mx_skes/Mc32Delays.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o: ../../../../../../bsp/pic32mx_skes/Mc32DriverAdc.c  .generated_files/8268eeea3e9abd6b06250fdc567abddd5066465e.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o ../../../../../../bsp/pic32mx_skes/Mc32DriverAdc.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o: ../../../../../../bsp/pic32mx_skes/Mc32DriverAdcAlt.c  .generated_files/17b523cfc53ccd71d05341ad6efef344200fda57.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o ../../../../../../bsp/pic32mx_skes/Mc32DriverAdcAlt.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o: ../../../../../../bsp/pic32mx_skes/Mc32DriverLcd.c  .generated_files/b26b6d1ce68a3bb893c294c35b0e5cf3e57e880d.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o ../../../../../../bsp/pic32mx_skes/Mc32DriverLcd.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o: ../../../../../../bsp/pic32mx_skes/Mc32CoreTimer.c  .generated_files/488cc71f45572c60506b72979efffc5a84dd15da.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o ../../../../../../bsp/pic32mx_skes/Mc32CoreTimer.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_static.c  .generated_files/dffb4a2504f2e57fd981a23f1efabbe339b0aa05.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1944736928" 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o.d" -o ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_static.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_mapping.c  .generated_files/756e88ebe9bf553fa35e819089fcebcbfa5609b5.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1944736928" 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o.d" -o ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_mapping.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/9bf576733ebc2dad0ac5f7f3fa8eb11bd14cbe99.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/102310384" 
	@${RM} ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1150414583/sys_devcon.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon.c  .generated_files/e59e31b7dbbef8ff59e0a397f4b1183e68e85fdd.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1150414583" 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1150414583/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1150414583/sys_devcon.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/15fcdcc935accce448d1c3e4c7a73afcc3ec13f.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1150414583" 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1956551008/sys_ports_static.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c  .generated_files/cf50a077bd7b28f1461c53f37f9d4ebd1d5257d1.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1956551008" 
	@${RM} ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1774247193/system_init.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c  .generated_files/501bca79dc90bb035e27cfcfd3a9ed34f78b0a22.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_init.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_init.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1774247193/system_interrupt.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c  .generated_files/39f82d180152f90070a11729efa2e85e5cea5270.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_interrupt.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1774247193/system_exceptions.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c  .generated_files/6df5f9d968200b44405b031c7ddd4add8323400e.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_exceptions.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1774247193/system_tasks.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c  .generated_files/361931b8bdefa54a73d19d98b8d255c84714ad89.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_tasks.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Generateur.o: ../src/Generateur.c  .generated_files/3c89ef1ffde78eea22292fa40f621bebe65c6f03.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Generateur.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Generateur.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Generateur.o.d" -o ${OBJECTDIR}/_ext/1360937237/Generateur.o ../src/Generateur.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/GesPec12.o: ../src/GesPec12.c  .generated_files/f3f9fd195db91b7aeecc7b6e5c96c80af4cb2530.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/GesPec12.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/GesPec12.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/GesPec12.o.d" -o ${OBJECTDIR}/_ext/1360937237/GesPec12.o ../src/GesPec12.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/GesS9.o: ../src/GesS9.c  .generated_files/6d3ed07334f227669171d1c98fa51dc04308dc3c.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/GesS9.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/GesS9.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/GesS9.o.d" -o ${OBJECTDIR}/_ext/1360937237/GesS9.o ../src/GesS9.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o: ../src/Mc32Debounce.c  .generated_files/3655011ea5877433a73420ed8387841e607d2d24.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o ../src/Mc32Debounce.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o: ../src/Mc32NVMUtil.c  .generated_files/ceb2324ee355132009fd4a2241b581d25552bdc9.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32NVMUtil.o ../src/Mc32NVMUtil.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o: ../src/Mc32SpiUtil.c  .generated_files/7a052433a0e01d530a898ec239b5dc8ced490554.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ../src/Mc32SpiUtil.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o: ../src/Mc32gestSPiDac.c  .generated_files/e93c37de381374ceaf65096a67d73643020a3355.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32gestSPiDac.o ../src/Mc32gestSPiDac.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/MenuGen.o: ../src/MenuGen.c  .generated_files/d636cbad3e35e3a3ec9be8b4a7448689abad9365.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/MenuGen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/MenuGen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/MenuGen.o.d" -o ${OBJECTDIR}/_ext/1360937237/MenuGen.o ../src/MenuGen.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o: ../src/Mc32gest_SerComm.c  .generated_files/4b54499a559e9f2e9d0d37cee0c948b78bb1a1bc.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../framework" -I"../../../../../../bsp/pic32mx_skes" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32gest_SerComm.o ../src/Mc32gest_SerComm.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/cdc_com_port_single_tu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/cdc_com_port_single_tu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/cdc_com_port_single_tu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/cdc_com_port_single_tu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/cdc_com_port_single_tu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mx_usb_sk2_int_dyn
	${RM} -r dist/pic32mx_usb_sk2_int_dyn

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
