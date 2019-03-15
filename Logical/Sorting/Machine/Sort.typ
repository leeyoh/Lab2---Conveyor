
TYPE
	Sorter_type : 	STRUCT  (*Sorter type*)
		Output : Output_type; (*Output type*)
		Input : Input_type; (*Input type*)
		Conveyor : Conveyor_type; (*Conveyor type*)
		AutoMode : BOOL;
		NewPuck : Color_enum;
		CurrentPuck : Color_enum;
		Slot : ARRAY[0..3]OF Slot_type;
		SlotIndex : SlotIndex_type;
		Reset : BOOL;
	END_STRUCT;
END_TYPE
