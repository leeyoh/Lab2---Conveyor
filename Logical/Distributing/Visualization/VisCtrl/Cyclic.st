(*********************************************************************************
 * Copyright: 	Hartfiel Automation
 * Author:    	cashley
 * Created:     March 8, 2019/12:37 PM
 * Description: This file contains the control logic for the distributing station
				visualization. 
 *********************************************************************************)

PROGRAM _CYCLIC
	
	(************* Conveyor parameters *************)
	 //velocity := Vis.Par.Velocity;
	 //acceleration := Vis.Par.Acceleration;
	 //deceleration := Vis.Par.Deceleration;
	MainCtrl.Input.Cmd.Conveyor.JogBack := Vis.Cmd.JogBackward;
	MainCtrl.Input.Cmd.Conveyor.JogFwd  := Vis.Cmd.JogForward;
	
	(************* Main page commands *************)
	IF Vis.Cmd.Automatic = TRUE THEN
		MainCtrl.Input.Par.Mode  := DISTCTRL_AUTO;
	ELSE MainCtrl.Input.Par.Mode := DISTCTRL_MANUAL;
	END_IF
		
	MainCtrl.Input.Cmd.StartAuto := Vis.Cmd.Start;
	MainCtrl.Input.Cmd.StopAuto  := Vis.Cmd.Stop;
	MainCtrl.Input.Cmd.Home 	 := Vis.Cmd.Home;
	//reset := Vis.Cmd.Reset;
	
	(************* Manual mode commands set/reset *************)
	
	//Extend ejection cylinder
	IF Vis.Cmd.EjCylExtend = TRUE THEN
		MainCtrl.Input.Cmd.Ejector.Extend := TRUE;
		Vis.Cmd.EjCylExtend				  := FALSE;
	END_IF
	
	//Retract ejection cylinder
	IF Vis.Cmd.EjCylRetract = TRUE THEN
		MainCtrl.Input.Cmd.Ejector.Retract := TRUE;
		Vis.Cmd.EjCylRetract 			   := FALSE;
	END_IF
	
	//Swivel drive to magazine position
	IF Vis.Cmd.SwDrToMag = TRUE THEN
		MainCtrl.Input.Cmd.SwivelArm.MoveToMagazine := TRUE;
		Vis.Cmd.SwDrToMag 							:= FALSE;
	END_IF
	
	//Swivel drive to conveyor position
	IF Vis.Cmd.SwDrToConv = TRUE THEN
		MainCtrl.Input.Cmd.SwivelArm.MoveToConveyor := TRUE;
		Vis.Cmd.SwDrToConv 							:= FALSE;
	END_IF
	
	//Ejection impulse on
	IF Vis.Cmd.EjImpulse = TRUE THEN
		MainCtrl.Input.Cmd.SwivelArm.VacuumOffImpulse := TRUE;
		Vis.Cmd.EjImpulse 							  := FALSE;
	END_IF
	
	//Vacuum on
	IF Vis.Cmd.Vacuum = TRUE THEN
		MainCtrl.Input.Cmd.SwivelArm.VacuumOnImpulse := TRUE;
		Vis.Cmd.Vacuum 								 := FALSE;
	END_IF
	
	(************* Automatic mode / Homing layers *************)
	
	//Homing pop-up
	IF Vis.Cmd.Home = TRUE THEN
		Vis.Sts.Homing 	:= 0; //Visible
	ELSE Vis.Sts.Homing := 1; //Invisible
	END_IF
	
	(*//Sorting station set automatic mode
	IF //Auto[0] = 1 AND Auto[1] = 1 THEN
		Vis.Sts.AutoSorting  := 0; //Visible
	ELSE Vis.Sts.AutoSorting := 1; //Invisible
	END_IF*)
	
	(************* Machine status *************)
	
	//Timer updating machine status information
	TON_Sts.PT := TIMER_CHANGE_STS;
	TON_Sts();
	TON_Sts.IN := TRUE;
	IF TON_Sts.Q = TRUE THEN
		TON_Sts.IN := FALSE;
		//Index through state machine
		IF Vis.Sts.StatusIndex <= 8 THEN
			Vis.Sts.StatusIndex := Vis.Sts.StatusIndex + 1; 
		ELSIF Vis.Sts.StatusIndex > 8 THEN
			Vis.Sts.StatusIndex := 0;
		END_IF
		CASE Vis.Sts.StatusIndex OF 
			
			//Ejection cylinder extended
			0: IF gDistHW.di.EjCylExtended = TRUE THEN
					Vis.Sts.StatusString  := 0;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
			
			//Ejection cylinder retracted
			1: IF gDistHW.di.EjCylRetracted = TRUE THEN
					Vis.Sts.StatusString  := 1;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
			
			//Vacuum on/off	
			2: IF gDistHW.do.Vacuum = TRUE THEN
					Vis.Sts.StatusString := 2;
				ELSIF gDistHW.do.Vacuum = FALSE THEN
					Vis.Sts.StatusString := 3;
				END_IF
				
			//Swivel drive in magazine position	
			3: IF gDistHW.di.SwDrMagPos = TRUE THEN
					Vis.Sts.StatusString  := 4;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
			//Swivel drive in conveyor position		
			4: IF gDistHW.di.SwDrConvPos = TRUE THEN
					Vis.Sts.StatusString  := 5;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
			//Magazine empty	
			5: IF gDistHW.di.MagEmpty = TRUE THEN
					Vis.Sts.StatusString  := 6;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
			//Sorting station free	
			6: IF gDistHW.di.SortStationFree = TRUE THEN
					Vis.Sts.StatusString  := 7;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
			//Puck at end of conveyor	
			7: IF gDistHW.di.PuckAtConvEnd = TRUE THEN
					Vis.Sts.StatusString  := 8;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
			//Not at home position	
			8: IF Vis.Cmd.Start = TRUE (*AND Vis.Sts.InHomePos = FALSE*) THEN
					Vis.Sts.StatusString  := 9;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
		END_CASE
	END_IF	
	
		END_PROGRAM
