(*********************************************************************************
 * Copyright: 	Hartfiel Automation
 * Author:    	cashley
 * Created:   	March 8, 2019/12:31 PM 
 * Description: This file contains the control logic for the sorting station
				visualization.
 *********************************************************************************)
PROGRAM _CYCLIC
	IF EDGEPOS(Station.Output.CommandRejected) THEN 
		ErrorCode := Station.Output.RejectionCode;
	END_IF
	
	
	(************* Conveyor parameters *************)
	Station.Conveyor.Velocity := Vis.Par.Velocity;
	Station.Conveyor.Accel 	  := Vis.Par.Acceleration;
	Station.Conveyor.Decel 	  := Vis.Par.Deceleration;
	Station.Conveyor.JogNeg   := Vis.Cmd.JogBackward;
	Station.Conveyor.JogPos   := Vis.Cmd.JogForward;
	Vis.Par.ProductsSorted 	  := Station.ColorCount[0] + Station.ColorCount[1] + Station.ColorCount[2]; //Number of sorted products
	
	(************* Main page commands *************)
	IF Vis.Cmd.Automatic = TRUE THEN
		MachineState[0]   := 1;
		MachineState[1]   := 1;
		Vis.Cmd.Automatic := FALSE;
	END_IF
	
	IF Vis.Cmd.Stop = TRUE THEN
		MachineState[2] := 0;
		Vis.Cmd.Stop    := FALSE;
	END_IF
	
	IF Vis.Cmd.Start = TRUE THEN
		MachineState[2] := 1;
		Vis.Cmd.Start   := FALSE;
	END_IF
	
	IF Vis.Cmd.Reset = TRUE THEN
		MachineState[2] := 3;
		Vis.Cmd.Reset   := FALSE;
	END_IF
	
	IF Vis.Cmd.Home = TRUE THEN
		Station.Input.CMD.Home := Vis.Cmd.Home;
		Vis.Cmd.Home 		   := FALSE;
	END_IF
	
	(************* OPCUA commands *************)
	IF Vis.Cmd.OPCUAConnect = TRUE THEN
		Station.OpcUa.Connect 	 := Vis.Cmd.OPCUAConnect;
		Vis.Cmd.OPCUAConnect 	 := FALSE;
	END_IF
	
	IF Vis.Cmd.OPCUADisconnect = TRUE THEN
		Station.OpcUa.Disconnect := Vis.Cmd.OPCUADisconnect;
		Vis.Cmd.OPCUADisconnect  := FALSE;
	END_IF
	
	(************* Manual mode commands set/reset *************)
	
	//Extend switch 1
	IF Vis.Cmd.Switch1Extend = TRUE THEN
		Station.Input.CMD.ExtendSwitch1 := TRUE;
		Vis.Cmd.Switch1Extend 			:= FALSE;
	END_IF
	
	//Retract switch 1
	IF Vis.Cmd.Switch1Retract = TRUE THEN
		Station.Input.CMD.ExtendSwitch1 := FALSE;
		Vis.Cmd.Switch1Retract 			:= FALSE;
	END_IF
	
	//Extend switch 2
	IF Vis.Cmd.Switch2Extend = TRUE THEN
		Station.Input.CMD.ExtendSwitch2 := TRUE;
		Vis.Cmd.Switch2Extend 			:= FALSE;
	END_IF
	
	//Retract switch 2
	IF Vis.Cmd.Switch2Retract = TRUE THEN
		Station.Input.CMD.ExtendSwitch2 := FALSE;
		Vis.Cmd.Switch2Retract 			:= FALSE;
	END_IF
	
	//Retract stopper
	IF Vis.Cmd.StopperRetract = TRUE THEN
		Station.Input.CMD.RetractStopper := TRUE;
		Vis.Cmd.StopperRetract 			 := FALSE;
	END_IF
	
	//Extend stopper
	IF Vis.Cmd.StopperExtend = TRUE THEN
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
	
	(************* Automatic mode / Homing layers *************)
	
	//Homing pop-up
	IF Vis.Cmd.Home = TRUE THEN
		Vis.Sts.Homing  := SHOW;
	ELSE Vis.Sts.Homing := HIDE;
	END_IF
	
	//Distributing station set automatic mode
	IF MachineState[0] = 1 AND MachineState[1] = 0 THEN
		Vis.Sts.AutoDistributing  := SHOW;
	ELSE Vis.Sts.AutoDistributing := HIDE;
	END_IF
	
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
		
		//Buttons lanes
		
		FOR Colour := 0 TO MAI_COLOURS BY 1 DO
			FOR Lane := 0 TO MAI_LANES BY 1 DO
				RTRIG[Colour,Lane].CLK := ButtonPressed[Colour,Lane];
			END_FOR
		END_FOR
	
	
		FOR Colour := 0 TO MAI_COLOURS BY 1 DO 
			ColourAssigned := FALSE;
			FOR Lane := 0 TO MAI_LANES BY 1 DO
				IF ButtonPressed[Colour,Lane] THEN
					ColourAssigned := TRUE;
					FOR i := 0 TO MAI_LANES BY 1 DO
						IF i <> Lane THEN
							ButtonLocked[Colour,i] := TRUE;
						END_IF
					END_FOR
				END_IF
			END_FOR
		
			IF ColourAssigned = FALSE THEN
				FOR Lane := 0 TO MAI_LANES BY 1 DO
					ButtonLocked[Colour,Lane] := FALSE;
				END_FOR
			END_IF
		END_FOR
	
	
		FOR Lane := 0 TO MAI_LANES BY 1 DO
			FOR Colour := 0 TO MAI_COLOURS BY 1 DO
				IF RTRIG[Colour,Lane].Q THEN
					FOR i := 0 TO MAI_COLOURS BY 1 DO
						ButtonPressed[i,Lane] := FALSE;
					END_FOR
				END_IF
			END_FOR
		END_FOR
	
		FOR Colour := 0 TO MAI_COLOURS BY 1 DO
			FOR Lane := 0 TO MAI_LANES BY 1 DO
				RTRIG[Colour,Lane]();
			END_FOR
		END_FOR
		
	(************* Button locking *************)
	
	//Lock out manual buttons when in automatic mode
	IF MachineState[0] = 1 THEN
		Vis.Sts.Locked := TRUE;
	ELSIF MachineState[0] = 0 THEN
		Vis.Sts.Locked := FALSE;
	END_IF
		
	//Alarm page button error present 
	IF MachineState[6] = 1 THEN
		Vis.Sts.ErrorPresent := TRUE;
	ELSIF MachineState[6] = 0 THEN
		Vis.Sts.ErrorPresent := FALSE;	
	END_IF
	 
END_PROGRAM
