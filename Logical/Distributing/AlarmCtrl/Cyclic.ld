(*********************************************************************************
 * Copyright: 	Hartfiel Automation
 * Author:    	cashley
 * Created:   	March 8, 2019/12:40 PM 
 * Description: 	This file contains alarm handling for the distributing 			station.
 *********************************************************************************)
PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="MpAlarmX to record and manage alarms." row="7" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="MpAlarmXCore_Dist" type="MpAlarmXCore"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAlarmXCore_Dist"/>
			<functionblock position="top" type="MpAlarmXCore"><input name="MpLink" vardynamic="true"/><output name="Active"/></functionblock>
			<empty/>
		</row>
		<row>
			<line/>
			<line/>
			<functionblock position="middle" type="MpAlarmXCore"><input name="Enable"/><output name="Error"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAlarmXCore"><input name="ErrorReset"/><output name="StatusID"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAlarmXCore"><output name="ActiveAlarms"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAlarmXCore"><output name="PendingAlarms"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="bottom" type="MpAlarmXCore"><output name="Info"/></functionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="Connection between MpAlarmX and HMI." row="6" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="MpAlarmXListUI_Dist" type="MpAlarmXListUI"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAlarmXCore_Dist"/>
			<functionblock position="top" type="MpAlarmXListUI"><input name="MpLink" vardynamic="true"/><output name="Active"/></functionblock>
			<empty/>
		</row>
		<row>
			<line/>
			<line/>
			<functionblock position="middle" type="MpAlarmXListUI"><input name="Enable"/><output name="Error"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAlarmXListUI"><input name="ErrorReset"/><output name="StatusID"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAlarmXListUI"><input name="UISetup"/><output name="Info"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="AlarmXListUIConnect_Dist"/>
			<functionblock position="bottom" type="MpAlarmXListUI"><input name="UIConnect" vardynamic="true"/></functionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="Save alarm history." row="7" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="MpAlarmXHistory_Dist" type="MpAlarmXHistory"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAlarmXHistory_Dist"/>
			<functionblock position="top" type="MpAlarmXHistory"><input name="MpLink" vardynamic="true"/><output name="Active"/></functionblock>
			<empty/>
		</row>
		<row>
			<line/>
			<line/>
			<functionblock position="middle" type="MpAlarmXHistory"><input name="Enable"/><output name="Error"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAlarmXHistory"><input name="ErrorReset"/><output name="StatusID"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAlarmXHistory"><input name="DeviceName" vardynamic="true"/><output name="CommandBusy"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAlarmXHistory"><input name="Language" vardynamic="true"/><output name="CommandDone"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="bottom" type="MpAlarmXHistory"><input name="Export"/><output name="Info"/></functionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="Connection between MpAlarmXHistory and HMI." row="6" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="MpAlarmXHistoryUI_Dist" type="MpAlarmXHistoryUI"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAlarmXHistory_Dist"/>
			<functionblock position="top" type="MpAlarmXHistoryUI"><input name="MpLink" vardynamic="true"/><output name="Active"/></functionblock>
			<empty/>
		</row>
		<row>
			<line/>
			<line/>
			<functionblock position="middle" type="MpAlarmXHistoryUI"><input name="Enable"/><output name="Error"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAlarmXHistoryUI"><input name="ErrorReset"/><output name="StatusID"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAlarmXHistoryUI"><input name="UISetup"/><output name="Info"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="AlarmXHistoryUIConnect_Dist"/>
			<functionblock position="bottom" type="MpAlarmXHistoryUI"><input name="UIConnect" vardynamic="true"/></functionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="1">
		<row>
			<empty/>
			<function position="top" type="MpAlarmXSet"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="gAlarmXCore_Dist"/>
			<function position="middle" type="MpAlarmXSet"><input name="MpLink"/><output name="56"/></function>
			<analog type="output" name="AlarmXSetStatus"/>
		</row>
		<row>
			<analog type="input" name="ErrorString"/>
			<function position="bottom" type="MpAlarmXSet"><input name="Name"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="1">
		<row>
			<actionblock position="topbottom"><input qualifier="N"/><output name="Alarm_DistString"/></actionblock>
			<empty/>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM






