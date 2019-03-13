
TYPE
	Sorter_type : 	STRUCT 
		Output : Output_type;
		Input : Input_type;
		Conveyor : Conveyor_type;
		AutoMode : BOOL;
		NewPuck : Color_enum;
		CurrentPuck : Color_enum;
		Slot : ARRAY[0..3]OF Slot_type;
		SlotIndex : SlotIndex_type;
		Reset : BOOL;
	END_STRUCT;
END_TYPE
