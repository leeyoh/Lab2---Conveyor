(*********************************************************************************
 * Copyright: I-Automation
 * Author:    John Lee
 * Created:   March 15, 2019/1:21 AM 
 *            Opcua setter, reads commands periodically and writes when 
*             local state has been changed
 *********************************************************************************)

ACTION OpcUa: 
	
	//Opcua state check timer. 
	TON_10ms_Opc.IN := TRUE;
	TON_10ms_Opc.PT := 50;
	
	//Checks if state has been changed. 
	FOR MIndex := 0 TO 7 BY 1 DO
		IF MachineState[MIndex] <> MachineStateOld[MIndex] THEN 
			MchUpdate := TRUE;
		END_IF
	END_FOR;
	
	//If read command finished, update local state
	IF EDGENEG(Station.OpcUa.Read) THEN 	
		IF MchUpdate = FALSE THEN 
			MachineState := OpcUaComm;
		END_IF 
	END_IF

	//Opcua Updater
	IF TON_10ms_Opc.Q THEN 
		IF MchUpdate THEN 
			Station.OpcUa.Write := TRUE;
			MchUpdate := FALSE;
		ELSE 
			Station.OpcUa.Read := TRUE;
		END_IF
		TON_10ms_Opc.IN := FALSE;
	END_IF
	
	//Func block calls
	MachineStateOld := MachineState;
	TON_10ms_Opc();
	
END_ACTION
