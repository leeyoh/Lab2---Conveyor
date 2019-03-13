
PROGRAM _CYCLIC
	FOR Colour := 0 TO MAI_COLOURS BY 1 DO
		FOR Lane := 0 TO MAI_LANES BY 1 DO
			RTRIG[Colour,Lane].CLK := ButtonPressed[Colour,Lane];
		END_FOR
	END_FOR
	
	
	FOR Colour := 0 TO MAI_COLOURS BY 1 DO 
		colourassigned := FALSE;
		FOR Lane := 0 TO MAI_LANES BY 1 DO
			IF ButtonPressed[Colour,Lane] THEN
				colourassigned := TRUE;
				FOR i := 0 TO MAI_LANES BY 1 DO
					IF i <> Lane THEN
						ButtonLocked[Colour,i] := TRUE;
					END_IF
				END_FOR
			END_IF
		END_FOR
		
		IF colourassigned = FALSE THEN
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
	 
END_PROGRAM
