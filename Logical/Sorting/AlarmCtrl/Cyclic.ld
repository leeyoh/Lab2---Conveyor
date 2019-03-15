(*********************************************************************************
 * Copyright: 	Hartfiel Automation
 * Author:    	cashley
 * Created:   	March 8, 2019/12:43 PM 
 * Description: 	This file contains alarm handling for the sorting 		station.
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
			<functionblock position="header" name="MpAlarmXCore_Sort" type="MpAlarmXCore"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAlarmXCore_Sort"/>
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
			<functionblock position="header" name="MpAlarmXListUI_Sort" type="MpAlarmXListUI"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAlarmXCore_Sort"/>
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
			<contact type="address" name="AlarmXListUIConnect_Sort"/>
			<functionblock position="bottom" type="MpAlarmXListUI"><input name="UIConnect" vardynamic="true"/></functionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="Save alarm history." row="7" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="MpAlarmXHistory_Sort" type="MpAlarmXHistory"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAlarmXHistory_Sort"/>
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
			<functionblock position="header" name="MpAlarmXHistoryUI_Sort" type="MpAlarmXHistoryUI"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAlarmXHistory_Sort"/>
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
			<contact type="address" name="AlarmXHistoryUIConnect_Sort"/>
			<functionblock position="bottom" type="MpAlarmXHistoryUI"><input name="UIConnect" vardynamic="true"/></functionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="Action: Set user-defined alarm" row="1" column="0" commented="0">
		<row>
			<actionblock position="topbottom"><input qualifier="N"/><output name="Alarm_SortString"/></actionblock>
			<empty/>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM








