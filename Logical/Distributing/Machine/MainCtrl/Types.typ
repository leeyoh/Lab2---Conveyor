
TYPE
	MainAutoStep_Enum : 
		(
		DIST_INIT := 0,
		DIST_CYCLE_EJECTOR := 1,
		DIST_CYCLE_SWIVEL := 2,
		DIST_CYCLE_CONVEYOR := 3,
		DIST_WAIT_FOR_SORT := 4
		);
	PuckPosition_Enum : 
		(
		PUCKPOS_IN_MAG := 0,
		PUCKPOS_IN_TRAY := 1,
		PUCKPOS_IN_SWIVEL := 2,
		PUCKPOS_CONV_START := 3,
		PUCKPOS_CONV_MID := 4,
		PUCKPOS_CONV_END := 5
		);
END_TYPE
