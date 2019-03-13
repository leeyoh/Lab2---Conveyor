
TYPE
	MainCtrl_typ : 	STRUCT 
		Input : MainCtrlInput_typ;
		Output : MainCtrlOutput_typ;
	END_STRUCT;
	MainCtrlInput_typ : 	STRUCT 
		Cmd : MainCtrlCmd_typ;
		Par : MainCtrlPar_typ;
	END_STRUCT;
	MainCtrlCmd_typ : 	STRUCT 
		StartAuto : BOOL;
		StopAuto : BOOL;
		Home : BOOL;
		Ejector : MainCtrlCmdEjector_typ;
		SwivelArm : MainCtrlCmdSwivelArm_typ;
		Conveyor : MainCtrlCmdConveyor_typ;
		Reset : BOOL;
	END_STRUCT;
	MainCtrlCmdEjector_typ : 	STRUCT 
		Extend : BOOL;
		Retract : BOOL;
	END_STRUCT;
	MainCtrlCmdSwivelArm_typ : 	STRUCT 
		MoveToConveyor : BOOL;
		MoveToMagazine : BOOL;
		VacuumOnImpulse : BOOL;
		VacuumOffImpulse : BOOL;
	END_STRUCT;
	MainCtrlCmdConveyor_typ : 	STRUCT 
		JogFwd : BOOL;
		JogBack : BOOL;
	END_STRUCT;
	MainCtrlPar_typ : 	STRUCT 
		Mode : AutoManualSelector_Enum;
		Conveyor : MainCtrlParConveyor_typ;
	END_STRUCT;
	AutoManualSelector_Enum : 
		(
		DISTCTRL_AUTO := 0,
		DISTCTRL_MANUAL := 1
		);
	MainCtrlParConveyor_typ : 	STRUCT 
		Speed : REAL;
		Accel : REAL;
		Decel : REAL;
	END_STRUCT;
	MainCtrlOutput_typ : 	STRUCT 
		CommandRejected : BOOL;
		RejectionCode : MainCtrlRejectionCode_Enum;
		Status : MainCtrlStatus_typ;
	END_STRUCT;
	MainCtrlRejectionCode_Enum : 
		(
		DIST_IN_AUTO_MODE
		);
	MainCtrlStatus_typ : 	STRUCT 
		AutoRunTime : TIME;
		DistProductCount : UDINT;
		IsHomed : BOOL;
	END_STRUCT;
END_TYPE
