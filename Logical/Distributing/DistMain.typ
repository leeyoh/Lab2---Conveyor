
TYPE
	AutoManualSelector_Enum : 
		( (*Enumeration of manual-automatic mode*)
		DISTCTRL_AUTO := 0,
		DISTCTRL_MANUAL := 1
		);
	MainCtrlRejectionCode_Enum : 
		( (*Enumeration of rejection codes thrown in response to a user requesting an illegal manual action.*)
		DIST_IN_AUTO_MODE := 0, (*Rejection Code thrown when any manual command is issued while the machine is in automatic mode.*)
		EJECTOR_EXTEND_PUCK_IN_TRAY := 1, (*Rejection Code thrown when an ejector extension is requested with a puck already in the ejector tray.*)
		EJECTOR_EXTEND_SWIVEL_IN_TRAY := 2, (*Rejection Code thrown when an ejector is requested with the swivel arm in the magazine position.*)
		SWIVEL_MOVE_MAG_HOLDING_PUCK := 3, (*Rejection Code thrown when the user tries to move the swivel arm to the magazine while the arm is holding a puck. Prevents pucks from being moved back to the ejector station, once removed.*)
		SWIVEL_MOVE_CONV_PUCK_CONFLICT := 4, (*Rejection Code thrown when the user attempts to transfer a puck to the conveyor with a puck already at the conveyor start position.*)
		SWIVEL_VAC_ON_NO_PRODUCT := 5, (*Rejection Code thrown when the user attempts to activate the swivel arm vacuum when there is no product under the suction cup.*)
		SWIVEL_VAC_OFF_PUCK_IN_TRANSIT := 6, (*Rejection Code thrown when the user attempts to deactivate the swivel arm vacuum while a puck is held and the swivel arm is in an intermediate position.*)
		CONV_JOG_BACK_PUCK_AT_START := 7, (*Rejection Code thrown when the user attempts to jog the conveyor backwards such that a puck falls off the conveyor.*)
		DIST_REJECT_PLACEHOLDER := 999,
		EJECTOR_EXTEND_ALREADY_IN_POS := 8, (*Rejection Code thrown when the user attempts to extend the ejection cylinder when it is already in the extended position.*)
		EJECTOR_RETRACT_ALREADY_IN_POS := 9, (*Rejection Code thrown when the user attempts to retract the ejection cylinder when it is already in the retracted position.*)
		SWIVEL_TO_MAG_ALREADY_IN_POS := 10, (*Rejection Code thrown when the user attempts to move the Swivel Arm to the magazine while to Swivel arm is already in that position.*)
		SWIVEL_TO_CONV_ALREADY_IN_POS := 11 (*Rejection Code thrown when the user attempts to move the Swivel Arm to the conveyor while to Swivel arm is already in that position.*)
		);
	MainCtrl_typ : 	STRUCT  (*Top-level interface structure for the MainCtrl task*)
		Input : MainCtrlInput_typ;
		Output : MainCtrlOutput_typ;
	END_STRUCT;
	MainCtrlInput_typ : 	STRUCT  (*Contains command and parameter substructures for the MainCtrl interface*)
		Cmd : MainCtrlCmd_typ; (*Command for MainCtrl*)
		Par : MainCtrlPar_typ; (*Parameters for MainCtrl*)
	END_STRUCT;
	MainCtrlCmd_typ : 	STRUCT  (*Contains commands for the MainCtrl interface*)
		StartAuto : BOOL;
		StopAuto : BOOL;
		Home : BOOL;
		Ejector : MainCtrlCmdEjector_typ; (*Contains a command substructure for the Ejector station*)
		SwivelArm : MainCtrlCmdSwivelArm_typ; (*Contains a command substructure for the Swivel Arm station*)
		Conveyor : MainCtrlCmdConveyor_typ; (*Contains a command substructure for the Conveyor station*)
		Reset : BOOL;
	END_STRUCT;
	MainCtrlCmdEjector_typ : 	STRUCT  (*Contains commands for the Ejector station*)
		Extend : BOOL; (*Command to extend the Ejector cylinder*)
		Retract : BOOL; (*Command to retract the Ejector cylinder*)
	END_STRUCT;
	MainCtrlCmdSwivelArm_typ : 	STRUCT  (*Contains commands for the Swivel Arm station*)
		MoveToConveyor : BOOL; (*Command to move the Swivel Arm to the Conveyor position*)
		MoveToMagazine : BOOL; (*Command to move the Swivel Arm to the magazine (i.e. Ejector) position*)
		VacuumOnImpulse : BOOL; (*Command to activate the Swivel Arm vacuum for an impulse. Used to pick up products.*)
		VacuumOffImpulse : BOOL; (*Command to active the Swivel Arm vacuum ejection impulse. Used to drop products.*)
	END_STRUCT;
	MainCtrlCmdConveyor_typ : 	STRUCT  (*Contains commands for the Conveyor station*)
		JogFwd : BOOL; (*Command to jog the Conveyor forward.*)
		JogBack : BOOL; (*Command to jog the Conveyor backward.*)
	END_STRUCT;
	MainCtrlPar_typ : 	STRUCT  (*Contains parameters for the MainCtrl task*)
		Mode : AutoManualSelector_Enum; (*Parameter to select manual/automatic operation.*)
		Conveyor : MainCtrlParConveyor_typ; (*Contains parameters for the Conveyor station*)
	END_STRUCT;
	MainCtrlParConveyor_typ : 	STRUCT  (*Contains parameters for the Conveyor station*)
		Speed : REAL; (*Parameter to set the speed of the conveyor. This value is applied to the Jog Forward, Jog Backward, and MoveVelocity actions for the conveyor.*)
		Accel : REAL; (*Parameter to set the acceleration of the conveyor. This value is applied to the Jog Forward, Jog Backward, and MoveVelocity actions for the conveyor.*)
		Decel : REAL; (*Parameter to set the deceleration of the conveyor. This value is applied to the Jog Forward, Jog Backward, and MoveVelocity actions for the conveyor.*)
	END_STRUCT;
	MainCtrlOutput_typ : 	STRUCT  (*Contains Status and "Command Rejected" information related to the MainCtrl task*)
		CommandRejected : BOOL; (*Output to indicate that a requested command is not allowed at a given time. True if the command is forbidden, false otherwise.*)
		RejectionCode : MainCtrlRejectionCode_Enum; (*Provides more detailed information about which command was rejected, and why.*)
		Status : MainCtrlStatus_typ; (*Provides additional status information about the MainCtrl task.*)
	END_STRUCT;
	MainCtrlStatus_typ : 	STRUCT  (*Contains status information about the MainCtrl task*)
		AutoRunTime : TIME; (*Time the machine has continuously been in automatic mode.*)
		DistProductCount : UDINT; (*Counter for how many products have been distributed by the distribution side of the machine.*)
		IsHomed : BOOL; (*Indicates whether the distribution half of the machine has been homed. True of the machine is homed.*)
	END_STRUCT;
END_TYPE
