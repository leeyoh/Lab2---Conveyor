
TYPE
	gDistHW_type : 	STRUCT  (*Hardware IO types for distributor*)
		di : diDist_type; (*Digital inputs for distributor*)
		do : doDist_type; (*Digital outputs for distributor*)
	END_STRUCT;
	diDist_type : 	STRUCT  (*Digital inputs for distributor*)
		EjCylExtended : BOOL; (*Ejecting cylinder extended*)
		EjCylRetracted : BOOL; (*Ejecting cylinder retracted*)
		ProductGripped : BOOL; (*Product gripped with suction*)
		SwDrMagPos : BOOL; (*Swivel drive in magazine position*)
		SwDrConvPos : BOOL; (*Swivel drive in conveyor position*)
		MagEmpty : BOOL; (*Magazine empty*)
		SortStationFree : BOOL; (*Sorting station free*)
		ConvStartVacant : BOOL; (*Conveyor - product on starting position*)
		PuckAtConvEnd : BOOL; (*Conveyor - product on unloading position*)
	END_STRUCT;
	doDist_type : 	STRUCT  (*Digital outputs for distributor*)
		EjCylPushProduct : BOOL; (*Ejecting cylinder push out product*)
		Vacuum : BOOL; (*Vacuum on swivel drive*)
		EjImpulse : BOOL; (*Ejection impulse on swivel drive*)
		SwDrToMag : BOOL; (*Swivel drive to magazine*)
		SwDrToConv : BOOL; (*Swivel drive to conveyor*)
	END_STRUCT;
	gDistModuleOK_type : 	STRUCT  (*Distributor module statuses*)
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
