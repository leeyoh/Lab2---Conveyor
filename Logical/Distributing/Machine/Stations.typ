(*Ejector Station Interface Structures*)

TYPE
	Ejector_typ : {REDUND_UNREPLICABLE} 	STRUCT  (*Interface for Ejector station. Accessed by the Distributor MainCtrl Program.*)
		Input : {REDUND_UNREPLICABLE} EjectorInput_typ; (*Input for Ejector Station, contains Commands and Parameters.*)
		Output : {REDUND_UNREPLICABLE} EjectorOutput_typ; (*Output for Ejector Station, contains Statuses(e.g. cylinder position) and information regarding which commands are allowed at any given time*)
	END_STRUCT;
	EjectorInput_typ : {REDUND_UNREPLICABLE} 	STRUCT  (*Ejector Input*)
		Cmd : {REDUND_UNREPLICABLE} EjectorCmd_typ; (*Commands for the Ejector Station. Includes a command to run a full ejector cycle, as well as commands for finer control of the station, to be used during manual mode.*)
		Par : {REDUND_UNREPLICABLE} EjectorPar_typ; (*Parameters for the Ejector Station.*)
	END_STRUCT;
	EjectorPar_typ : 	STRUCT  (*Ejector Parameters*)
		Placeholder : USINT; (*Placeholder for parameters*)
	END_STRUCT;
	EjectorCmd_typ : 	STRUCT  (*Ejector Commands*)
		ExtendEjector : BOOL := FALSE; (*Command to extend the ejector cylinder*)
		RetractEjector : BOOL := FALSE; (*Command to retract the ejector cylinder*)
		RunCycle : BOOL := FALSE; (*Command to run one full cycle of the ejector station*)
		ErrorReset : BOOL := FALSE; (*Command to reset station errors*)
		Home : BOOL := FALSE; (*Command to home the station*)
	END_STRUCT;
	EjectorOutput_typ : 	STRUCT  (*Ejector Output*)
		Status : EjectorStatus_typ; (*Status of the ejector station. Contains information about the ejector cylinder position, state of the magazine (empty,not empty), and whether there is an error on the station*)
		CommandRejected : BOOL := FALSE; (*True if the issued command is not allowed. The RejectionCode is set accordingly to provide feedback on why a command may not be allowed.*)
		RejectionCode : EjectorRejectionCode_Enum; (*Provides feedback on why a command may not be allowed at a given time.*)
	END_STRUCT;
	EjectorRejectionCode_Enum : 
		( (*Information about which command was rejected, and why*)
		EJECTOR_CYL_ALREADY_EXTENDED := 0,
		EJECTOR_CYL_ALREADY_RETRACTED,
		EJECTOR_STN_ALREADY_HOMED
		);
	EjectorStatus_typ : 	STRUCT  (*Ejector Status*)
		EjectorExtended : BOOL; (*True if the ejector cylinder is fully extended*)
		EjectorRetracted : BOOL; (*True if the ejector cylinder is fully retracted*)
		Error : BOOL; (*True if the station is in an error state*)
		ErrorID : EjectorErrorID_Enum; (*Container for error information*)
		IsHomed : BOOL; (*True if the station is in the home position*)
	END_STRUCT;
	EjectorErrorID_Enum : 
		( (*Information about Error status of the Ejector Task*)
		EJECTOR_ERROR_EXTEND_BLOCKED
		);
END_TYPE

(*Ejector Station Interface Structures*)

TYPE
	SwivelArm_typ : {REDUND_UNREPLICABLE} 	STRUCT  (*Interface for Ejector station. Accessed by the Distributor MainCtrl Program.*)
	Input : {REDUND_UNREPLICABLE} SwivelArmInput_typ; (*Input for Ejector Station, contains Commands and Parameters.*)
	Output : {REDUND_UNREPLICABLE} SwivelArmOutput_typ; (*Output for Ejector Station, contains Statuses(e.g. cylinder position) and information regarding which commands are allowed at any given time*)
	END_STRUCT;
	SwivelArmInput_typ : {REDUND_UNREPLICABLE} 	STRUCT  (*Ejector Input*)
	Cmd : {REDUND_UNREPLICABLE} SwivelArmCmd_typ; (*Commands for the Ejector Station. Includes a command to run a full ejector cycle, as well as commands for finer control of the station, to be used during manual mode.*)
	Par : {REDUND_UNREPLICABLE} SwivelArmPar_typ; (*Parameters for the Ejector Station.*)
	END_STRUCT;
	SwivelArmPar_typ : 	STRUCT  (*Ejector Parameters*)
		Placeholder : USINT; (*Placeholder for parameters*)
	END_STRUCT;
	SwivelArmCmd_typ : 	STRUCT  (*Ejector Commands*)
		MoveToMagazine : BOOL := FALSE; (*Command to extend the ejector cylinder*)
		MoveToConveyor : BOOL := FALSE; (*Command to retract the ejector cylinder*)
		ActivateVacuum : BOOL := FALSE; (*Command to run one full cycle of the ejector station*)
		DeactivateVacuum : BOOL := FALSE; (*Command to reset station errors*)
		Home : BOOL;
		RunCycle : BOOL;
		ErrorReset : BOOL := FALSE; (*Command to home the station*)
	END_STRUCT;
	SwivelArmOutput_typ : 	STRUCT  (*Ejector Output*)
		Status : SwivelArmStatus_typ; (*Status of the ejector station. Contains information about the ejector cylinder position, state of the magazine (empty,not empty), and whether there is an error on the station*)
		CommandRejected : BOOL := FALSE; (*True if the issued command is not allowed. The RejectionCode is set accordingly to provide feedback on why a command may not be allowed.*)
		RejectionCode : SwivelArmRejectionCode_Enum; (*Provides feedback on why a command may not be allowed at a given time.*)
	END_STRUCT;
	SwivelArmRejectionCode_Enum : 
		( (*Information about which command was rejected, and why*)
		SWIVEL_ALREADY_AT_CONV := 0,
		SWIVEL_ALREADY_AT_MAG,
		SWIVEL_VAC_ALREADY_INACTIVE,
		SWIVEL_VAC_ALREADY_ACTIVE,
		SWIVEL_ALREADY_HOMED
	);
	SwivelArmStatus_typ : 	STRUCT  (*Ejector Status*)
		AtMagazine : BOOL; (*True if the ejector cylinder is fully extended*)
		AtConveyor : BOOL; (*True if the ejector cylinder is fully retracted*)
		VacuumOn : BOOL; (*True if the station is in an error state*)
		ErrorID : SwivelArmErrorID_Enum; (*Container for error information*)
		IsHomed : BOOL; (*True if the station is in the home position*)
	END_STRUCT;
	SwivelArmErrorID_Enum : 
		( (*Information about Error status of the Ejector Task*)
		SWIVEL_ERROR
	);
END_TYPE

(*SwivelArm Station Interface Structures*)

TYPE
	Conveyor_typ : {REDUND_UNREPLICABLE} 	STRUCT  (*Interface for Ejector station. Accessed by the Distributor MainCtrl Program.*)
	Input : {REDUND_UNREPLICABLE} ConveyorInput_typ; (*Input for Ejector Station, contains Commands and Parameters.*)
	Output : {REDUND_UNREPLICABLE} ConveyorOutput_typ; (*Output for Ejector Station, contains Statuses(e.g. cylinder position) and information regarding which commands are allowed at any given time*)
	END_STRUCT;
	ConveyorInput_typ : {REDUND_UNREPLICABLE} 	STRUCT  (*Ejector Input*)
	Cmd : {REDUND_UNREPLICABLE} ConveyorCmd_typ; (*Commands for the Ejector Station. Includes a command to run a full ejector cycle, as well as commands for finer control of the station, to be used during manual mode.*)
	Par : {REDUND_UNREPLICABLE} ConveyorPar_typ; (*Parameters for the Ejector Station.*)
	END_STRUCT;
	ConveyorPar_typ : 	STRUCT  (*Ejector Parameters*)
		Accel : REAL;
		Speed : REAL; (*Placeholder for parameters*)
	END_STRUCT;
	ConveyorCmd_typ : 	STRUCT  (*Ejector Commands*)
		JogForward : BOOL := FALSE; (*Command to run one full cycle of the ejector station*)
		JogBackward : BOOL := FALSE; (*Command to reset station errors*)
		RunCycle : BOOL;
		ErrorReset : BOOL := FALSE; (*Command to home the station*)
	END_STRUCT;
	ConveyorOutput_typ : 	STRUCT  (*Ejector Output*)
		Status : ConveyorStatus_typ; (*Status of the ejector station. Contains information about the ejector cylinder position, state of the magazine (empty,not empty), and whether there is an error on the station*)
		CommandRejected : BOOL := FALSE; (*True if the issued command is not allowed. The RejectionCode is set accordingly to provide feedback on why a command may not be allowed.*)
		RejectionCode : ConveyorRejectionCode_Enum; (*Provides feedback on why a command may not be allowed at a given time.*)
	END_STRUCT;
	ConveyorRejectionCode_Enum : 
		( (*Information about which command was rejected, and why*)
		CONV_PART_AT_START
	);
	ConveyorStatus_typ : 	STRUCT  (*Ejector Status*)
		AtMagazine : BOOL; (*True if the ejector cylinder is fully extended*)
		AtConveyor : BOOL; (*True if the ejector cylinder is fully retracted*)
		VacuumOn : BOOL; (*True if the station is in an error state*)
		ErrorID : ConveyorErrorID_typ; (*Container for error information*)
		IsHomed : BOOL; (*True if the station is in the home position*)
	END_STRUCT;
	ConveyorErrorID_typ : 
		( (*Information about Error status of the Ejector Task*)
		CONV_ERROR
	);
END_TYPE
