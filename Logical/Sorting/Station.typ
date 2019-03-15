
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
	Conveyor_type : 	STRUCT  (*Conveyor type*)
		MoveAdditive : BOOL; (*Move additive*)
		MoveVelocity : BOOL; (*Move velocity*)
		Stop : BOOL; (*Stop conveyor*)
		Velocity : REAL; (*Conveyor velocity*)
		Accel : REAL; (*Conveyor acceleration*)
		Decel : REAL; (*Conveyor deceleration*)
		JogPos : BOOL; (*Jog forward*)
		JogNeg : BOOL; (*Jog backward*)
		Home : BOOL; (*Home*)
		MoveActive : BOOL; (*Move active*)
		InPosition : BOOL; (*In position*)
		Ready : BOOL; (*Ready*)
	END_STRUCT;
	Index_enum : 
		( (*Index enumeration*)
		AUTO := 0, (*Auto index*)
		ISSUED := 1, (*Issued index*)
		ERROR := 2, (*Error index*)
		DISPENSER := 3, (*Dispenser index*)
		FLIPPER := 4, (*Flipper index*)
		CONVEYOR := 5, (*Conveyor index*)
		SORTER := 6, (*Sorter index*)
		COLLECTOR := 7 (*Collector index*)
		);
	Input_type : 	STRUCT  (*Input type*)
		CMD : CMD_type; (*Command type*)
		Par : Par_type; (*Parameter type*)
	END_STRUCT;
	Output_type : 	STRUCT  (*Output type*)
		Status : Status_type; (*Status type*)
		Time : UDINT; (*Automatic mode run time*)
		CommandRejected : BOOL; (*Command has been rejected*)
		RejectionCode : UDINT; (*Rejection code*)
	END_STRUCT;
	Par_type : 	STRUCT  (*Parameters type*)
		ParID : ARRAY[0..2]OF Color_enum := [RED,BLACK,METALLIC]; (*Array for Sorting order, Index 0 (Left Slide) - 2 (Right Slide)  Color Corresponding to Station*)
	END_STRUCT;
	SlotIndex_type : 	STRUCT  (*Lane selector index type*)
		Left : USINT; (*Lane 1*)
		Middle : USINT; (*Lane 2*)
		Right : USINT; (*Lane 3*)
	END_STRUCT;
	Slot_type : 	STRUCT  (*Lane selector type*)
		Left : Color_enum; (*Lane 1*)
		Middle : Color_enum; (*Lane 2*)
		Right : Color_enum; (*Lane 3*)
	END_STRUCT;
	Station_type : 	STRUCT  (*Station type*)
		Output : Output_type; (*Output type*)
		Input : Input_type; (*Input type*)
		ColorCount : ARRAY[0..2]OF USINT; (*Puck Color Count [Red, Black, Metallic]*)
		Conveyor : Conveyor_type; (*Conveyor type*)
		OpcUa : OpcUa_type; (*OpcUa type*)
	END_STRUCT;
	Status_type : 	STRUCT  (*Status type*)
		Switch1Extended : BOOL; (*Switch 1 extended*)
		Switch1Retracted : BOOL; (*Switch 1 retracted*)
		Switch2Extended : BOOL; (*Switch 2 extended*)
		Switch2Retracted : BOOL; (*Switch 2 retracted*)
		Error : BOOL; (*Error has been detected*)
		ErrorID : UDINT; (*Error ID*)
		IsHomed : BOOL; (*Is homed*)
		ProductAvailable : BOOL; (*Product available*)
		MetallicProduct : BOOL; (*Metallic product*)
		LaneFull : BOOL; (*Lane is full*)
		ProductNotBlack : BOOL; (*Product not black*)
		SlotFull : ARRAY[0..2]OF BOOL; (*Slot is full*)
		Occupied : BOOL; (*Occupied*)
	END_STRUCT;
	OpcUa_type : 	STRUCT  (*OpcUa type*)
		Write : BOOL; (*Write OPCUA*)
		Read : BOOL; (*Read OPCUA*)
		Connect : BOOL; (*Connect to OPCUA*)
		Disconnect : BOOL; (*Disconnect to OPCUA*)
	END_STRUCT;
END_TYPE
