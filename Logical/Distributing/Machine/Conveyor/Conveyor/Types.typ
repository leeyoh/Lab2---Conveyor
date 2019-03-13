
TYPE
	ConveyorState_typ : 	STRUCT 
		Init : BOOL := TRUE;
		Wait : BOOL := FALSE;
		RunCycle : BOOL := FALSE;
		JogFwd : BOOL := FALSE;
		JogBack : BOOL := FALSE;
		Error : BOOL := FALSE;
	END_STRUCT;
END_TYPE
