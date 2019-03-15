(*********************************************************************************
 * Copyright: 	Hartfiel Automation
 * Author:    	cashley
 * Created:   	March 14, 2019/12:00 PM 
 * Description: This is an action file that determines the error ID for 
				user-defined alarms for the sorting station.
 *********************************************************************************)

ACTION Alarm_SortString:
	
	//Error ID determines unique name for MpAlarmXSet
	IF Station.Output.Status.ErrorID 	= 1 THEN
		ErrorString := 'Lane1Full';
	ELSIF Station.Output.Status.ErrorID = 2 THEN
		ErrorString := 'Lane2Full';
	ELSIF Station.Output.Status.ErrorID = 3 THEN
		ErrorString := 'Lane3Full';
	ELSIF Station.Output.Status.ErrorID = 4 THEN
		ErrorString := 'NoProductAvail';
	ELSIF Station.Output.Status.ErrorID = 5 THEN
		ErrorString := 'SwitchStuck';
	ELSIF Station.Output.Status.ErrorID = 6 THEN
		ErrorString := 'PuckMissing';
	ELSIF Station.Output.Status.ErrorID = 7 THEN
		ErrorString := 'Axis';
	ELSIF Station.Output.Status.ErrorID = 8 THEN
		ErrorString := 'CheckHW';
	ELSIF Station.Output.Status.ErrorID = 9 THEN
		ErrorString := 'CheckMachine';
	END_IF

	//MpAlarmXSet - enables user-defined alarms
	IF EDGEPOS(Station.Output.Status.Error) THEN 
		MpAlarmXSet(MpLink := gAlarmXCore_Sort, Name := ErrorString);
	END_IF
		
END_ACTION
