
TYPE
	Sorter_type : 	STRUCT  (*Sorter type*)
		Output : Output_type; (*Output type*)
		Input : Input_type; (*Input type*)
		Conveyor : Conveyor_type; (*Conveyor type*)
		AutoMode : BOOL; (*Automatic mode*)
		NewPuck : Color_enum; (*New product color*)
		CurrentPuck : Color_enum; (*Current product color*)
		Slot : ARRAY[0..3]OF Slot_type; (*Slot lane for product*)
		SlotIndex : SlotIndex_type; (*Slot index for product*)
		Reset : BOOL; (*Reset command for timer and counters*)
	END_STRUCT;
END_TYPE
