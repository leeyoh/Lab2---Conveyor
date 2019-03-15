

PROGRAM _INIT
	
	//Initialize conveyor parameters
	Vis.Par.Velocity 	 := DEFAULT_VEL;
	Vis.Par.Acceleration := DEFAULT_ACCEL;
	Vis.Par.Deceleration := DEFAULT_DECEL;
	 
	Vis.Sts.AutoDistributing := HIDE;
	Vis.Sts.Homing := HIDE;
	Vis.Sts.ManualGuide := HIDE;
	Vis.Sts.ErrorHide := TRUE;
	
	ButtonPressed[0,0] := TRUE;
	ButtonPressed[1,0] := FALSE;
	ButtonPressed[2,0] := FALSE;
	ButtonPressed[1,1] := TRUE;
	ButtonPressed[2,2] := TRUE;
	
END_PROGRAM