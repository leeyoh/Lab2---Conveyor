
ACTION Linker: 
	
	Station.Output.Status.IsHomed := Sorter.Output.Status.IsHomed;
	Station.Output.Status.Switch1Extended := Sorter.Output.Status.Switch1Extended;
	Station.Output.Status.Switch1Retracted := Sorter.Output.Status.Switch1Retracted;
	
	Station.Output.Status.Error := Sorter.Output.Status.Error;
	Station.Output.Status.ErrorID := Sorter.Output.Status.ErrorID;
	
	Station.Output.RejectionCode := Sorter.Output.RejectionCode;
	Station.Output.CommandRejected := Sorter.Output.CommandRejected;
	
	//Index of Slot Array 
	Station.ColorCount[0] := 0;
	Station.ColorCount[1] := 0;
	Station.ColorCount[2] := 0;
	
	FOR SlotIndex := 0 TO 3 BY 1 DO
		
		IF Sorter.Slot[SlotIndex].Left = RED THEN 
			Station.ColorCount[0] := Station.ColorCount[0] + 1;
		END_IF
		IF Sorter.Slot[SlotIndex].Middle = RED THEN 
			Station.ColorCount[0] := Station.ColorCount[0] + 1;
		END_IF
		IF Sorter.Slot[SlotIndex].Right = RED THEN 
			Station.ColorCount[0] := Station.ColorCount[0] + 1;
		END_IF
	
		IF Sorter.Slot[SlotIndex].Left = BLACK THEN 
			Station.ColorCount[1] := Station.ColorCount[1] + 1;
		END_IF
		IF Sorter.Slot[SlotIndex].Middle = BLACK THEN 
			Station.ColorCount[1] := Station.ColorCount[1] + 1;
		END_IF
		IF Sorter.Slot[SlotIndex].Right = BLACK THEN 
			Station.ColorCount[1] := Station.ColorCount[1] + 1;
		END_IF
	
		IF Sorter.Slot[SlotIndex].Left = METALLIC THEN 
			Station.ColorCount[2] := Station.ColorCount[2] + 1;
		END_IF
		IF Sorter.Slot[SlotIndex].Middle = METALLIC THEN 
			Station.ColorCount[2] := Station.ColorCount[2] + 1;
		END_IF
		IF Sorter.Slot[SlotIndex].Right = METALLIC THEN 
			Station.ColorCount[2] := Station.ColorCount[2] + 1;
		END_IF

	END_FOR;
	
END_ACTION
