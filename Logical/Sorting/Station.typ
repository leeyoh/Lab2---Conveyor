
TYPE
	CMD_type : 	STRUCT 
		RetractStopper : BOOL;
		ExtendSwitch1 : BOOL;
		ExtendSwitch2 : BOOL;
		RunCycle : BOOL;
		ErrorReset : BOOL;
		Home : BOOL;
	END_STRUCT;
	Color_enum : 
		(
		NONE := 0,
		RED := 1,
		BLACK := 2,
		METALLIC := 3
		);
	Conveyor_type : 	STRUCT 
		MoveAdditive : BOOL;
		MoveVelocity : BOOL;
		Stop : BOOL;
		Velocity : REAL;
		Accel : REAL;
		Decel : REAL;
		JogPos : BOOL;
		JogNeg : BOOL;
		Home : BOOL;
		MoveActive : BOOL;
		InPosition : BOOL;
		Ready : BOOL;
	END_STRUCT;
	Index_enum : 
		(
		AUTO := 0,
		ISSUED := 1,
		ERROR := 2,
		DISPENSER := 3,
		FLIPPER := 4,
		CONVEYOR := 5,
		SORTER := 6,
		COLLECTOR := 7
		);
	Input_type : 	STRUCT 
		CMD : CMD_type;
		Par : Par_type;
	END_STRUCT;
	Output_type : 	STRUCT 
		Status : Status_type;
		Time : UDINT;
		CommandRejected : BOOL;
		RejectionCode : UDINT;
	END_STRUCT;
	Par_type : 	STRUCT 
		ParID : ARRAY[0..2]OF Color_enum := [RED,BLACK,METALLIC]; (*Array for Sorting order, Index 0 (Left Slide) - 2 (Right Slide)  Color Corresponding to Station*)
	END_STRUCT;
	SlotIndex_type : 	STRUCT 
		Left : USINT;
		Middle : USINT;
		Right : USINT;
	END_STRUCT;
	Slot_type : 	STRUCT 
		Left : Color_enum;
		Middle : Color_enum;
		Right : Color_enum;
	END_STRUCT;
	Station_type : 	STRUCT 
		Output : Output_type;
		Input : Input_type;
		ColorCount : ARRAY[0..2]OF USINT; (*Puck Color Count [Red, Black, Metallic]*)
		Conveyor : Conveyor_type;
		OpcUa : OpcUa_type;
	END_STRUCT;
	Status_type : 	STRUCT 
		Switch1Extended : BOOL;
		Switch1Retracted : BOOL;
		Switch2Extended : BOOL;
		Switch2Retracted : BOOL;
		Error : BOOL;
		ErrorID : UDINT;
		IsHomed : BOOL;
		ProductAvailable : BOOL;
		MetallicProduct : BOOL;
		LaneFull : BOOL;
		ProductNotBlack : BOOL;
		SlotFull : ARRAY[0..2]OF BOOL;
		Occupied : BOOL;
	END_STRUCT;
	OpcUa_type : 	STRUCT 
		Write : BOOL;
		Read : BOOL;
		Connect : BOOL;
		Disconnect : BOOL;
	END_STRUCT;
END_TYPE
