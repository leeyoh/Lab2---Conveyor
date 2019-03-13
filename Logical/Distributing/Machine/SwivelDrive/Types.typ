
TYPE
	SwivelArmState_typ : 	STRUCT 
		Wait : BOOL;
		Home : BOOL;
		DeactivateVacuum : BOOL;
		ActivateVacuum : BOOL;
		MoveToConveyor : BOOL;
		MoveToMagazine : BOOL;
		Error : BOOL;
		RunCycle : BOOL;
	END_STRUCT;
	SwivelAutoStep_Enum : 
		(
		MOVE_TO_MAG := 4,
		ACTIVATE_VACUUM := 1,
		MOVE_TO_CONV := 2,
		DEACTIVATE_VACUUM := 3,
		GOTO_PICKUP := 0
		);
END_TYPE
