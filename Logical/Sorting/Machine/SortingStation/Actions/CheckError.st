
ACTION CheckError: 

	TON_10ms_Switch1.PT := 400; //4 Second Timer 
	TON_10ms_Switch2.PT := 400; //4 Second Timer 
	TON_10ms_AutoTicker.PT := 1000;
	

	Sorter.Output.RejectionCode := 0;
	Sorter.Output.CommandRejected := FALSE;
	
	CASE SorterState OF
		
		2:  // Manual Mode Error Check 
			IF Station.Input.CMD.ExtendSwitch1 THEN 
				IF Sorter.Output.Status.Switch1Extended THEN 
					TON_10ms_Switch1.IN := FALSE;
				ELSIF Sorter.Output.Status.Switch2Extended THEN 
					Sorter.Output.RejectionCode := 10;    		//Switch2 Not Retracted 
					Sorter.Output.CommandRejected := TRUE;	
				ELSE
					TON_10ms_Switch1.IN := TRUE;
				END_IF			
			END_IF
			
			IF Station.Input.CMD.ExtendSwitch2 THEN 
				IF Sorter.Output.Status.Switch2Extended THEN 
					TON_10ms_Switch2.IN := FALSE;
				ELSIF Sorter.Output.Status.Switch1Extended THEN 
					Sorter.Output.RejectionCode := 20;    		//Switch2 Not Retracted 
					Sorter.Output.CommandRejected := TRUE;	
				ELSE
					TON_10ms_Switch2.IN := TRUE;
				END_IF			
			END_IF	
			
			IF Station.Input.CMD.RetractStopper THEN 
				IF Sorter.NewPuck = Sorter.Input.Par.ParID[0] THEN 
					IF Sorter.Output.Status.SlotFull[0] THEN 
						Sorter.Output.RejectionCode := 30;    		//Left Slow Full
						Sorter.Output.CommandRejected := TRUE;	
					END_IF
					IF Sorter.Output.Status.Switch1Retracted THEN 
						Sorter.Output.RejectionCode := 31;    		//Switch 1 Not Extended
						Sorter.Output.CommandRejected := TRUE;	
					END_IF
				END_IF
				
				IF Sorter.NewPuck = Sorter.Input.Par.ParID[1] THEN 
					IF Sorter.Output.Status.SlotFull[1] THEN 
						Sorter.Output.RejectionCode := 32;    		//Left Slow Full
						Sorter.Output.CommandRejected := TRUE;	
					END_IF
					IF Sorter.Output.Status.Switch1Extended THEN 
						Sorter.Output.RejectionCode := 38;    		//Switch 1 Not Extended
						Sorter.Output.CommandRejected := TRUE;	
					END_IF
					IF Sorter.Output.Status.Switch2Retracted THEN 
						Sorter.Output.RejectionCode := 33;    		//Switch 1 Not Extended
						Sorter.Output.CommandRejected := TRUE;	
					END_IF
				END_IF
				
				IF Sorter.NewPuck = Sorter.Input.Par.ParID[2] THEN 
					IF Sorter.Output.Status.SlotFull[2] THEN 
						Sorter.Output.RejectionCode := 34;    		//Left Slow Full
						Sorter.Output.CommandRejected := TRUE;	
					END_IF
					IF Sorter.Output.Status.Switch1Extended THEN 
						Sorter.Output.RejectionCode := 38;    		//Switch 1 Not Extended
						Sorter.Output.CommandRejected := TRUE;	
					END_IF
					IF Sorter.Output.Status.Switch2Extended THEN 
						Sorter.Output.RejectionCode := 39;    		//Switch 1 Not Extended
						Sorter.Output.CommandRejected := TRUE;	
					END_IF
				END_IF
				
				IF Sorter.NewPuck = NONE THEN 
					Sorter.Output.RejectionCode := 37;        //No Puck
					Sorter.Output.CommandRejected := TRUE;	
				END_IF
				
				IF Sorter.Output.Status.Occupied THEN 
					Sorter.Output.RejectionCode := 36;    		//Switch2 Not Retracted 
					Sorter.Output.CommandRejected := TRUE;	
				END_IF
			END_IF
			
		4: 
			
			
			IF AutoState.0 THEN 
				IF EDGEPOS(Sorter.Output.Status.LaneFull) THEN 
					TON_10ms_AutoTicker.IN := FALSE;
				END_IF
				
				IF Sorter.Input.CMD.RunCycle THEN 
					TON_10ms_AutoTicker.IN := TRUE;
				END_IF
				IF  Sorter.Output.Status.ProductAvailable THEN 
					TON_10ms_AutoTicker.IN := FALSE;
				END_IF
			END_IF
		
			IF AutoState.1 THEN 
	
				
				IF EqLeft THEN 
					IF Sorter.Output.Status.SlotFull[0] THEN 
						Sorter.Output.Status.ErrorID := 1;    		//Left Lane Full
						TON_10ms_AutoTicker.IN := FALSE;
					END_IF
				END_IF
				IF EqMiddle THEN 
					IF Sorter.Output.Status.SlotFull[1] THEN 
						Sorter.Output.Status.ErrorID := 2;    		//Middle Lane Full
						TON_10ms_AutoTicker.IN := FALSE;
					END_IF
				END_IF
				IF EqRight THEN 
					IF Sorter.Output.Status.SlotFull[2] THEN 
						Sorter.Output.Status.ErrorID := 3;    		//Right Lane FULL
						TON_10ms_AutoTicker.IN := FALSE;
					END_IF
				END_IF
				
				IF Sorter.Output.Status.Switch1Extended OR
					Sorter.Output.Status.Switch2Extended THEN 
					TON_10ms_AutoTicker.IN := FALSE;
				END_IF
				
				
			END_IF
			
			IF AutoState.2 THEN 
				TON_10ms_AutoTicker.IN := TRUE;
			END_IF
			
			IF AutoState.3 THEN 
				TON_10ms_AutoTicker.IN := TRUE;
			END_IF
			
			IF AutoState.4 THEN 
				TON_10ms_AutoTicker.IN := TRUE;
			END_IF
		
	END_CASE;
	
	IF MpAxisBasicConveyor.Error THEN 
		Sorter.Output.Status.ErrorID := 7;
	END_IF
	
	IF  NOT gSortModuleOK.BusController 	OR
		NOT gSortModuleOK.BusTransmitter 	OR
		NOT gSortModuleOK.DigitalInput 		OR
		NOT gSortModuleOK.DigitalOutput 	OR
		NOT gSortModuleOK.Interface 		OR
		NOT gSortModuleOK.PotentialDist0011 OR 
		NOT gSortModuleOK.PotentialDist0012 OR 
		NOT gSortModuleOK.PowerSupply 		OR 
		NOT gSortModuleOK.StepperMotor 		THEN 
		Sorter.Output.Status.ErrorID := 8;
	END_IF
	
	IF TON_10ms_AutoTicker.Q THEN 
		
		CASE AutoState OF
			1:
				Sorter.Output.Status.ErrorID := 4;  // Product Not Availiable 
			2:
				Sorter.Output.Status.ErrorID := 5;	 // Switch Stuck
			4:
				Sorter.Output.Status.ErrorID := 5;	 // Switch Stuck
			8: 
				Sorter.Output.Status.ErrorID := 6;  // 404 Puck
			16:
		 		Sorter.Output.Status.ErrorID := 6;  // 404 Puck
		END_CASE;
	END_IF
	
	
	IF Sorter.Output.Status.ErrorID <> 0 THEN 
		Sorter.Output.Status.Error := TRUE;
	ELSE 
		Sorter.Output.Status.Error := FALSE;
	END_IF
	
	
	IF TON_10ms_Switch1.Q THEN 
		Sorter.Output.CommandRejected := TRUE;	
		Sorter.Output.RejectionCode := 11;   // Switch 1 timed out
	END_IF
	IF TON_10ms_Switch2.Q THEN 
		Sorter.Output.CommandRejected := TRUE;	
		Sorter.Output.RejectionCode := 21;   // Switch 1 timed out
	END_IF
	
	TON_10ms_Switch1();
	TON_10ms_Switch2();
	TON_10ms_AutoTicker();
END_ACTION
