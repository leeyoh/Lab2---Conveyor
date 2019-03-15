
TYPE
	VisSort_type : 	STRUCT  (*Visualization type*)
		Cmd : VisCmdSort_type; (*Control variable for Cmd_type*)
		Par : VisParSort_type; (*Control variable for Par_type*)
		Sts : VisStsSort_type; (*Control variable for Sts_type*)
	END_STRUCT;
	VisCmdSort_type : 	STRUCT  (*Visualization commands*)
		OPCUAConnect : BOOL; (*Connect to OPCUA server*)
		OPCUADisconnect : BOOL; (*Disconnect from OPCUA server*)
		Reset : BOOL; (*Reset counters and timer*)
		Home : BOOL; (*Homing*)
		Stop : BOOL; (*Stop automatic mode*)
		Start : BOOL; (*Start automatic mode*)
		JogForward : BOOL; (*Jog conveyor forward*)
		JogBackward : BOOL; (*Jog conveyor backward*)
		DetectProduct : BOOL; (*Detect the product*)
		StopperExtend : BOOL; (*Extend the stopper*)
		StopperRetract : BOOL; (*Retract the stopper*)
		Switch1Extend : BOOL; (*Extend switch 1*)
		Switch1Retract : BOOL; (*Retract switch 1*)
		Switch2Extend : BOOL; (*Extend switch 2*)
		Switch2Retract : BOOL; (*Retract switch 2*)
		Automatic : BOOL; (*Automatic mode*)
	END_STRUCT;
	VisParSort_type : 	STRUCT  (*Visualization parameters*)
		Velocity : REAL; (*Conveyor velocity*)
		Acceleration : REAL; (*Conveyor acceleration*)
		Lane1Color : USINT; (*Lane 1 color for sorting*)
		Lane2Color : USINT; (*Lane 2 color for sorting*)
		Lane3Color : USINT; (*Lane 3 color for sorting*)
		ProductsSorted : USINT; (*Number of sorted products*)
		Deceleration : REAL; (*Conveyor deceleration*)
	END_STRUCT;
	VisStsSort_type : 	STRUCT  (*Visualization statuses*)
		DetectProduct : BOOL; (*Product detected status*)
		StopperExtended : BOOL; (*Status of stopper in extended position*)
		AutoDistributing : UINT; (*Automatic mode started from distributing station*)
		Homing : UINT; (*The machine is homing*)
		StatusIndex : UDINT; (*Machine status index*)
		StatusString : UINT; (*Control variable for machine status string*)
		InHomePos : BOOL; (*In home position*)
		ErrorHide : UINT; (*Show / hide error alarm*)
		AutoLock : BOOL; (*Automatic button locked*)
		Locked : BOOL; (*Button locked*)
		ManualGuide : UINT; (*Control variable for show/hide manual guide*)
		ManualGuideString : UDINT; (*Control variable for manual command guide*)
		CmdRejected : BOOL; (*Command has been rejected*)
	END_STRUCT;
END_TYPE
