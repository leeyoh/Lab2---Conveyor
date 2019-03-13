
TYPE
	EjectorState_typ : 	STRUCT  (*State machine definition for the Ejector Task*)
		Wait : BOOL := TRUE; (*State in which the Ejector Task is waiting for commands from the MainCtrl Task*)
		RunCycle : BOOL := FALSE; (*State in which the Ejector Task is running a single full operation cycle*)
		ExtendCylinder : BOOL := FALSE; (*State in which the Ejector Task is extending the ejection cylinder in response to a manual command from MainCtrl*)
		RetractCylinder : BOOL := FALSE; (*State in which the Ejector Task is retracting the ejection cylinder in response to a manual command from MainCtrl*)
		Error : BOOL := FALSE; (*Error state for the Ejector Task*)
		Home : BOOL; (*State in which the Ejector Station returns to  it's home position*)
	END_STRUCT;
	EjectorAutoStep_Enum : 
		(
		EJECTOR_RETRACT,
		EJECTOR_EXTEND
		);
END_TYPE
