(*********************************************************************************
 * Copyright: 	Hartfiel Automation
 * Author:    	cashley
 * Created:   	March 8, 2019/12:31 PM 
 * Description: This file contains the control logic for the sorting station
				visualization.
 *********************************************************************************)
PROGRAM _CYCLIC

	(******************************* CONVEYOR parameters ********************************)
	
	Station.Conveyor.Velocity := Vis.Par.Velocity;
	Station.Conveyor.Accel 	  := Vis.Par.Acceleration;
	Station.Conveyor.Decel 	  := Vis.Par.Deceleration;
	Station.Conveyor.JogNeg   := Vis.Cmd.JogBackward;
	Station.Conveyor.JogPos   := Vis.Cmd.JogForward;
	//Total sorted products
	Vis.Par.ProductsSorted 	  := Station.ColorCount[0] + Station.ColorCount[1] + Station.ColorCount[2]; 
	
	
	(******************************* MAIN page commands ********************************)
	
	//Automatic mode
	IF Vis.Cmd.Automatic = TRUE THEN
		MachineState[0]   := 1;
		MachineState[1]   := 1;
		//Vis.Cmd.Automatic := FALSE;
	END_IF
	
	//Stop automatic
	IF Vis.Cmd.Stop = TRUE THEN
		MachineState[2]   := 0;
		MachineState[0]   := 0;
		Vis.Cmd.Automatic := FALSE;
		Vis.Sts.AutoLock  := FALSE;
		Vis.Cmd.Stop      := FALSE;
	END_IF
	
	//Start automatic
	IF Vis.Cmd.Start = TRUE  AND Vis.Cmd.Automatic = TRUE THEN
		MachineState[2]  := 1;
		Vis.Sts.AutoLock := TRUE;
		Vis.Cmd.Start    := FALSE;
	ELSIF Vis.Cmd.Start = TRUE  AND Vis.Cmd.Automatic = FALSE THEN
		Vis.Cmd.Start := FALSE;
	END_IF
	
	//Reset
	IF Vis.Cmd.Reset = TRUE THEN
		Station.Reset   := TRUE;
		Vis.Cmd.Reset   := FALSE;
	END_IF
	
	//Home
	IF Vis.Cmd.Home = TRUE THEN
		Station.Input.CMD.Home := Vis.Cmd.Home;
		Vis.Sts.Homing 	       := SHOW;
		Vis.Cmd.Home 		   := FALSE;
	END_IF
	
	
	(********************************* OPCUA commands **********************************)
	
	//Connect
	IF Vis.Cmd.OPCUAConnect = TRUE THEN
		Station.OpcUa.Connect 	 := Vis.Cmd.OPCUAConnect;
		Vis.Cmd.OPCUAConnect 	 := FALSE;
	END_IF
	
	//Disconnect
	IF Vis.Cmd.OPCUADisconnect = TRUE THEN
		Station.OpcUa.Disconnect := Vis.Cmd.OPCUADisconnect;
		Vis.Cmd.OPCUADisconnect  := FALSE;
	END_IF
	
	
	(*************************** MANUAL mode commands set/reset **************************)
	
	//Extend switch 1
	IF Vis.Cmd.Switch1Extend = TRUE THEN
		Station.Input.CMD.ExtendSwitch1 := TRUE;
		Vis.Cmd.Switch1Extend 			:= FALSE;
		IF Station.Output.Status.Switch1Extended THEN 
			Station.Output.CommandRejected := TRUE;
			Station.Output.RejectionCode   := 38;
		END_IF
	END_IF
	
	//Retract switch 1
	IF Vis.Cmd.Switch1Retract = TRUE THEN
		Station.Input.CMD.ExtendSwitch1 := FALSE;
		Vis.Cmd.Switch1Retract 			:= FALSE;
		IF Station.Output.Status.Switch1Retracted THEN 
			Station.Output.CommandRejected := TRUE;
			Station.Output.RejectionCode   := 31;
		END_IF
	END_IF
	
	//Extend switch 2
	IF Vis.Cmd.Switch2Extend = TRUE THEN
		Station.Input.CMD.ExtendSwitch2 := TRUE;
		Vis.Cmd.Switch2Extend 			:= FALSE;
		IF Station.Output.Status.Switch2Extended THEN 
			Station.Output.CommandRejected := TRUE;
			Station.Output.RejectionCode   := 39;
		END_IF
	END_IF
	
	//Retract switch 2
	IF Vis.Cmd.Switch2Retract = TRUE THEN
		Station.Input.CMD.ExtendSwitch2 := FALSE;
		Vis.Cmd.Switch2Retract 			:= FALSE;
		IF Station.Output.Status.Switch2Retracted THEN 
			Station.Output.CommandRejected := TRUE;
			Station.Output.RejectionCode   := 10;
		END_IF
	END_IF
	
	//Retract stopper
	IF Vis.Cmd.StopperRetract = TRUE THEN
		IF Station.Input.CMD.RetractStopper THEN 
			Station.Output.CommandRejected := TRUE;
			Station.Output.RejectionCode   := 40;
		END_IF
		
		Station.Input.CMD.RetractStopper := TRUE;
		Vis.Cmd.StopperRetract 			 := FALSE;
	END_IF
	
	//Extend stopper
	IF Vis.Cmd.StopperExtend = TRUE THEN
		IF Station.Input.CMD.RetractStopper = FALSE THEN 
			Station.Output.CommandRejected := TRUE;
			Station.Output.RejectionCode   := 41;
		END_IF
		Station.Input.CMD.RetractStopper := FALSE;
		Vis.Cmd.StopperExtend 			 := FALSE;
	END_IF
	
	//Status LED for stopper
	IF gSortHW.do.RetractStopper = 1 THEN
		Vis.Sts.StopperExtended := 0;
	ELSIF gSortHW.do.RetractStopper = 0 THEN
		Vis.Sts.StopperExtended := 1;
	END_IF
	
	//Detect product
	IF Vis.Cmd.DetectProduct = TRUE THEN
		Vis.Sts.DetectProduct 	  := gSortHW.di.ProductAvailable;
		IF EDGENEG(gSortHW.di.ProductAvailable) THEN
			Vis.Cmd.DetectProduct := FALSE;
			Vis.Sts.DetectProduct := gSortHW.di.ProductAvailable;
		END_IF
	END_IF
	
	
	(******************************* Layers / Pop-ups ********************************)
	
	//Homing acknowledge
	IF Vis.Cmd.Home = TRUE THEN
		Vis.Sts.Homing  := SHOW;
	//ELSE Vis.Sts.Homing := HIDE;
	END_IF
	
	//Distributing station has controls in automatic mode
	IF MachineState[0] = 1 AND MachineState[1] = 0 THEN
		Vis.Sts.AutoDistributing  := SHOW;
	ELSE Vis.Sts.AutoDistributing := HIDE;
	END_IF
	
	//Alarm error present 
	IF MachineState[7] = 1 THEN
		Vis.Sts.ErrorHide := FALSE;
	ELSIF MachineState[7] = 0 THEN
		Vis.Sts.ErrorHide := TRUE;	
	END_IF
	
	
	(******************************* Machine STATUS ********************************)
	
	//Timer to update machine status information
	TON_Sts.PT := TIMER_CHANGE_STS;
	TON_Sts();
	TON_Sts.IN := TRUE;
	IF TON_Sts.Q = TRUE THEN
		TON_Sts.IN := FALSE;
		IF Vis.Sts.StatusIndex <= 8 THEN //Index through machine status
			Vis.Sts.StatusIndex := Vis.Sts.StatusIndex + 1;
		ELSIF Vis.Sts.StatusIndex > 8 THEN
			Vis.Sts.StatusIndex := 0;
		END_IF
		CASE Vis.Sts.StatusIndex OF 
			
			//Product available
			0: IF gSortHW.di.ProductAvailable = TRUE THEN
					Vis.Sts.StatusString  := 0;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
			//Lane full	
			1: IF gSortHW.di.LaneFull = TRUE THEN
					Vis.Sts.StatusString  := 1;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
			//Switch 1 extended	
			2: IF gSortHW.di.Switch1Extended = TRUE THEN
					Vis.Sts.StatusString  := 2;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
			//Switch 1 retracted	
			3: IF gSortHW.di.Switch1Retracted = TRUE THEN
					Vis.Sts.StatusString  := 3;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
			
			//Switch 2 extended		
			4: IF gSortHW.di.Switch2Extended = TRUE THEN
					Vis.Sts.StatusString  := 4;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
			//Switch 2 retracted	
			5: IF gSortHW.di.Switch2Retracted = TRUE THEN
					Vis.Sts.StatusString  := 5;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
			//Retract stopper	
			6: IF gSortHW.do.RetractStopper = TRUE THEN
					Vis.Sts.StatusString := 6;
				ELSIF gSortHW.do.RetractStopper = FALSE THEN
					Vis.Sts.StatusString := 7;
				END_IF
				
			//Conveyor clear for next product	
			7: IF Station.Output.Status.Occupied = FALSE THEN
					Vis.Sts.StatusString  := 8;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
			//Not at home position	
			8: IF Vis.Cmd.Start = TRUE AND Station.Output.Status.IsHomed = FALSE THEN
					Vis.Sts.StatusString  := 9;
				ELSE Vis.Sts.StatusString := 10;
				END_IF
				
		END_CASE
	END_IF	

	
	(******************************* LANE COLOR selector ********************************)
	
	//Lock and unlock available selections
	FOR Colour := 0 TO MAI_COLOURS BY 1 DO
		FOR Lane := 0 TO MAI_LANES BY 1 DO
			ButtonLocked[Colour,Lane] := FALSE;
		END_FOR
	END_FOR
	
	//RED Lane 1
	IF ButtonPressed[0,0] THEN 
		Station.Input.Par.ParID[0] := RED;
		ButtonLocked[0,1] 		   := TRUE;
		ButtonLocked[0,2] 		   := TRUE;
		ButtonLocked[1,0] 		   := TRUE;
		ButtonLocked[2,0] 		   := TRUE;
	END_IF

	//RED Lane 2
	IF ButtonPressed[0,1] THEN 
		Station.Input.Par.ParID[1] := RED;
		ButtonLocked[0,0] 		   := TRUE;
		ButtonLocked[0,2] 		   := TRUE;
		ButtonLocked[1,1] 		   := TRUE;
		ButtonLocked[2,1] 		   := TRUE;
	END_IF
	
	//RED Lane 3
	IF ButtonPressed[0,2] THEN 
		Station.Input.Par.ParID[2] := RED;
		ButtonLocked[0,0] 		   := TRUE;
		ButtonLocked[0,1] 		   := TRUE;
		ButtonLocked[2,2] 		   := TRUE;
		ButtonLocked[1,2] 		   := TRUE;
	END_IF
	
	//BLACK Lane 1
	IF ButtonPressed[1,0] THEN 
		Station.Input.Par.ParID[0] := BLACK;
		ButtonLocked[0,0] 		   := TRUE;
		ButtonLocked[2,0] 		   := TRUE;
		ButtonLocked[1,1] 		   := TRUE;
		ButtonLocked[1,2] 		   := TRUE;
	END_IF
	
	//BLACK Lane 2
	IF ButtonPressed[1,1] THEN 
		Station.Input.Par.ParID[1] := BLACK;
		ButtonLocked[0,1] 		   := TRUE;
		ButtonLocked[1,0] 		   := TRUE;
		ButtonLocked[2,1] 		   := TRUE;
		ButtonLocked[1,2] 		   := TRUE;
	END_IF
	
	//BLACK Lane 3
	IF ButtonPressed[1,2] THEN 
		Station.Input.Par.ParID[2] := BLACK;
		ButtonLocked[0,2] 		   := TRUE;
		ButtonLocked[1,0] 		   := TRUE;
		ButtonLocked[1,1] 		   := TRUE;
		ButtonLocked[2,2] 		   := TRUE;
	END_IF
	
	//METALLIC Lane 1
	IF ButtonPressed[2,0] THEN 
		Station.Input.Par.ParID[0] := METALLIC;
		ButtonLocked[0,0] 		   := TRUE;
		ButtonLocked[1,0] 		   := TRUE;
		ButtonLocked[2,1] 		   := TRUE;
		ButtonLocked[2,2] 		   := TRUE;
	END_IF
	
	//METALLIC Lane 2
	IF ButtonPressed[2,1] THEN 
		Station.Input.Par.ParID[1] := METALLIC;
		ButtonLocked[2,0] 		   := TRUE;
		ButtonLocked[1,1] 		   := TRUE;
		ButtonLocked[0,1] 		   := TRUE;
		ButtonLocked[2,2] 		   := TRUE;
	END_IF
	
	//METALLIC Lane 3
	IF ButtonPressed[2,2] THEN 
		Station.Input.Par.ParID[2] := METALLIC;
		ButtonLocked[2,0] 		   := TRUE;
		ButtonLocked[2,1] 		   := TRUE;
		ButtonLocked[0,2] 		   := TRUE;
		ButtonLocked[1,2] 		   := TRUE;
	END_IF
	
	
	(******************************* Button locking ********************************)
	
	//Lock out manual buttons when in automatic mode
	IF MachineState[0] = 1 THEN
		Vis.Sts.Locked := TRUE;
	ELSIF MachineState[0] = 0 THEN
		Vis.Sts.Locked := FALSE;
	END_IF
	
	
	(************************** Alarm text GUIDE for manual mode **************************)
	
	//Timer for manual command guide
	TON_Guide.PT := TIMER_GUIDE;
	TON_Guide();
	
	//If command is rejected, show failure message
	IF EDGEPOS(Station.Output.CommandRejected) THEN
		Vis.Sts.CmdRejected 	  := TRUE;
		Vis.Sts.ManualGuideString := Station.Output.RejectionCode;
	END_IF
	
	IF Vis.Sts.CmdRejected = TRUE THEN
		Vis.Sts.ManualGuide := SHOW;
		TON_Guide.IN 		:= TRUE;
		IF TON_Guide.Q = TRUE THEN
			Vis.Sts.ManualGuide := HIDE;
			Vis.Sts.CmdRejected := FALSE;
			TON_Guide.IN 		:= FALSE;
		END_IF
	END_IF 
	
	//Acknowledge alarms and error reset
	IF Station.Output.Status.Error AND (NOT Station.Input.CMD.ErrorReset) THEN 
		MachineState[7] := 1;
		MachineState[6] := 3;
	END_IF
	
	IF EDGEPOS(MpAlarmXCore_Sort.PendingAlarms = 0) THEN 
		IF Station.Output.Status.Error THEN 
			Station.Input.CMD.ErrorReset := TRUE;
				MachineState[7] 		 := 0;
		END_IF
	END_IF
	

END_PROGRAM
