
TYPE
	VisDist_type : 	STRUCT  (*Visualization type*)
		Cmd : VisCmdDist_type; (*Control variable for Cmd_type*)
		Par : VisParDist_type; (*Control variable for Par_type*)
		Sts : VisStsDist_type; (*Control variable for Sts_type*)
	END_STRUCT;
	VisCmdDist_type : 	STRUCT  (*Visualization commands*)
		OPCUAConnect : BOOL; (*Connect to OPCUA server*)
		OPCUADisconnect : BOOL; (*Disconnect from OPCUA server*)
		Reset : BOOL; (*Reset counters and timer*)
		Home : BOOL; (*Homing*)
		Stop : BOOL; (*Stop automatic mode*)
		Start : BOOL; (*Start automatic mode*)
		JogForward : BOOL; (*Jog conveyor forward*)
		JogBackward : BOOL; (*Jog conveyor backward*)
		EjCylExtend : BOOL; (*Extend ejecting cylinder*)
		EjCylRetract : BOOL; (*Retract ejecting cylinder*)
		Vacuum : BOOL; (*Vacuum on*)
		SwDrToMag : BOOL; (*Swivel drive to magazine position*)
		SwDrToConv : BOOL; (*Swivel drive to conveyor position*)
		EjImpulse : BOOL; (*Ejection impulse on*)
		Automatic : BOOL; (*Automatic mode*)
	END_STRUCT;
	VisParDist_type : 	STRUCT  (*Visualization parameters*)
		Velocity : REAL; (*Conveyor velocity*)
		Acceleration : REAL; (*Conveyor acceleration*)
		Deceleration : REAL; (*Conveyor deceleration*)
	END_STRUCT;
	VisStsDist_type : 	STRUCT  (*Visualization statuses*)
		StatusIndex : UDINT; (*Machine status index*)
		StatusString : UINT; (*Control variable for machine status string*)
		Homing : UINT; (*The machine is homing*)
		InHomePos : BOOL; (*In home position*)
		Locked : BOOL; (*Button locked*)
		AutoSorting : UINT; (*Automatic mode started from sorting station*)
		ErrorPresent : UINT; (*An error has been detected*)
	END_STRUCT;
END_TYPE
