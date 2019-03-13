
TYPE
	gSortHW_type : 	STRUCT  (*Hardware IO types for sorter*)
		di : diSort_type; (*Digital inputs for sorter*)
		do : doSort_type; (*Digital outputs for sorter*)
	END_STRUCT;
	diSort_type : 	STRUCT  (*Digital inputs for sorter*)
		ProductAvailable : BOOL; (*Product available*)
		Metallic : BOOL; (*Metallic product*)
		NotBlack : BOOL; (*Product is not black*)
		LaneFull : BOOL; (*Lane full*)
		Switch1Retracted : BOOL; (*Switch 1 retracted*)
		Switch1Extended : BOOL; (*Switch 1 extended*)
		Switch2Retracted : BOOL; (*Switch 2 retracted*)
		Switch2Extended : BOOL; (*Switch 2 extended*)
	END_STRUCT;
	doSort_type : 	STRUCT  (*Digital outputs for sorter*)
		ExtendSwitch1 : BOOL; (*Extend switch 1*)
		ExtendSwitch2 : BOOL; (*Extend switch 2*)
		RetractStopper : BOOL; (*Retract stopper*)
	END_STRUCT;
END_TYPE
