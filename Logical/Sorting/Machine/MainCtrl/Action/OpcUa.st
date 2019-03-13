
ACTION OpcUa: 

	TON_10ms_Opc.IN := TRUE;
	TON_10ms_Opc.PT := 50;

	FOR MIndex := 0 TO 7 BY 1 DO
		IF MachineState[MIndex] <> MachineStateOld[MIndex] THEN 
			MchUpdate := TRUE;
		END_IF
	END_FOR;
		
	IF EDGENEG(Station.OpcUa.Read) THEN 	
		MachineState := OpcUaComm;
	END_IF 
	
	IF TON_10ms_Opc.Q THEN 
		IF MchUpdate THEN 
			Station.OpcUa.Write := TRUE;
			MchUpdate := FALSE;
		ELSE 
			Station.OpcUa.Read := TRUE;
		END_IF
		
		TON_10ms_Opc.IN := FALSE;
	END_IF
	
	MachineStateOld := MachineState;
	TON_10ms_Opc();
	
END_ACTION
