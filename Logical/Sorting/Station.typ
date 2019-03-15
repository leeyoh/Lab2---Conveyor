
TYPE
	CMD_type : 	STRUCT  (*Station command type*)
		RetractStopper : BOOL; (*Retract stopper*)
		ExtendSwitch1 : BOOL; (*Extend switch 1*)
		ExtendSwitch2 : BOOL; (*Extend switch 2*)
		RunCycle : BOOL; (*Run cycle*)
		ErrorReset : BOOL; (*Reset error*)
		Home : BOOL; (*Home machine*)
	END_STRUCT;
	Color_enum : 
		( (*Color selector enumeration*)
		NONE := 0, (*No color*)
		RED := 1, (*Red color*)
		BLACK := 2, (*Black color*)
		METALLIC := 3 (*Metallic color*)
		);
	Conveyor_type : 	STRUCT  (*Conveyor type for motion control*)
		MoveAdditive : BOOL; (*Move additive for conveyor*)
		MoveVelocity : BOOL; (*Move velocity for conveyor*)
		Stop : BOOL; (*Stop conveyor*)
		Velocity : REAL; (*Conveyor velocity parameter*)
		Accel : REAL; (*Conveyor acceleration parameter*)
		Decel : REAL; (*Conveyor deceleration parameter*)
		JogPos : BOOL; (*Jog conveyor forward*)
		JogNeg : BOOL; (*Jog conveyor backward*)
		Home : BOOL; (*Home the conveyor*)
		MoveActive : BOOL; (*Conveyor move active*)
		InPosition : BOOL; (*Conveyor in position*)
		Ready : BOOL; (*Conveyor ready*)
	END_STRUCT;
	Index_enum : 
		( (*Index enumeration for sorting station*)
		AUTO := 0, (*Auto index*)
		ISSUED := 1, (*Issued index*)
		ERROR := 2, (*Error index*)
		DISPENSER := 3, (*Dispenser index*)
		FLIPPER := 4, (*Flipper index*)
		CONVEYOR := 5, (*Conveyor index*)
		SORTER := 6, (*Sorter index*)
		COLLECTOR := 7 (*Collector index*)
		);
	Input_type : 	STRUCT  (*Input type for sorting station*)
		CMD : CMD_type; (*Command type*)
		Par : Par_type; (*Parameter type*)
	END_STRUCT;
	Output_type : 	STRUCT  (*Output type for sorting station*)
		Status : Status_type; (*Status type*)
		Time : UDINT; (*Automatic mode run time*)
		CommandRejected : BOOL; (*Command has been rejected*)
		RejectionCode : UDINT; (*Rejection code*)
	END_STRUCT;
	Par_type : 	STRUCT  (*Parameters type for lane selection*)
		ParID : ARRAY[0..2]OF Color_enum := [RED,BLACK,METALLIC]; (*Array for Sorting order, Index 0 (Left Slide) - 2 (Right Slide)  Color Corresponding to Station*)
	END_STRUCT;
	SlotIndex_type : 	STRUCT  (*Lane selector index type*)
		Left : USINT; (*Lane 1 slot*)
		Middle : USINT; (*Lane 2 slot*)
		Right : USINT; (*Lane 3 slot*)
	END_STRUCT;
	Slot_type : 	STRUCT  (*Lane selector slot type*)
		Left : Color_enum; (*Lane 1 slot*)
		Middle : Color_enum; (*Lane 2 slot*)
		Right : Color_enum; (*Lane 3 slot*)
	END_STRUCT;
	Station_type : 	STRUCT  (*Station type for sorting station*)
		Output : Output_type; (*Output type*)
		Input : Input_type; (*Input type*)
		ColorCount : ARRAY[0..2]OF USINT; (*Puck Color Count [Red, Black, Metallic]*)
		Reset : BOOL;
		Conveyor : Conveyor_type; (*Conveyor type*)
		OpcUa : OpcUa_type; (*OpcUa type*)

	END_STRUCT;
	Status_type : 	STRUCT  (*Status type for sorting station*)
		Switch1Extended : BOOL; (*Switch 1 extended*)
		Switch1Retracted : BOOL; (*Switch 1 retracted*)
		Switch2Extended : BOOL; (*Switch 2 extended*)
		Switch2Retracted : BOOL; (*Switch 2 retracted*)
		Error : BOOL; (*Error has been detected*)
		ErrorID : UDINT; (*Error ID*)
		IsHomed : BOOL; (*Sorting station is homed*)
		ProductAvailable : BOOL; (*Product available*)
		MetallicProduct : BOOL; (*Metallic product*)
		LaneFull : BOOL; (*Lane is full*)
		ProductNotBlack : BOOL; (*Product not black*)
		SlotFull : ARRAY[0..2]OF BOOL; (*Slot is full*)
		Occupied : BOOL; (*Occupied*)
	END_STRUCT;
	OpcUa_type : 	STRUCT  (*OpcUa type for server connection*)
		Write : BOOL; (*Write OPCUA*)
		Read : BOOL; (*Read OPCUA*)
		Connect : BOOL; (*Connect to OPCUA*)
		Disconnect : BOOL; (*Disconnect to OPCUA*)
	END_STRUCT;
END_TYPE
