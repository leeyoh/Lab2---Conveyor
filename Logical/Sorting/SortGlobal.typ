
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
	gSortModuleOK_type : 	STRUCT  (*Sorter module statuses*)
		Interface : BOOL; (*5PP5IF.FPLM-00 status*)
		BusController : BOOL; (*X20BC0083 status*)
		PowerSupply : BOOL; (*X20PS9400 status*)
		DigitalInput : BOOL; (*X20DI9371 status*)
		PotentialDist0012 : BOOL; (*X20PD0012 status*)
		PotentialDist0011 : BOOL; (*X20PD0011 status*)
		DigitalOutput : BOOL; (*X20DO9322 status*)
		BusTransmitter : BOOL; (*X20BT9100 status*)
		StepperMotor : BOOL; (*X67SM2436 status*)
	END_STRUCT;
END_TYPE
