

PROGRAM _INIT
	
	//Initialize conveyor parameters - velocity, acceleration, deceleration
	Vis.Par.Velocity 	 := DEFAULT_VEL;
	Vis.Par.Acceleration := DEFAULT_ACCEL;
	Vis.Par.Deceleration := DEFAULT_DECEL;
	
	//Hide layers and pop-ups on visualization
	Vis.Sts.AutoSorting := HIDE;
	Vis.Sts.Homing 		:= HIDE;
	Vis.Sts.ManualGuide := HIDE;
	Vis.Sts.ErrorHide 	:= TRUE;
	
END_PROGRAM