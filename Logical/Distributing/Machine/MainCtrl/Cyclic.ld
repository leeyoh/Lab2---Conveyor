(*********************************************************************************
 * Copyright: 	
 * Author:    	
 * Created:   	March 8, 2019/12:31 PM 
 * Description: 
 *********************************************************************************)

PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="EQ"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="AutoModeActive"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateAuto"/></actionblock>
			<empty/>
		</row>
		<row>
			<analog type="input" name="DISTCTRL_AUTO"/>
			<function position="middle" type="EQ"><input name="IN1" extensible="true"/><output name="1"/></function>
			<analog type="output" name="AutoModeActive"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<analog type="input" name="MainCtrl.Input.Par.Mode"/>
			<function position="bottom" type="EQ"><input name="" extensible="true"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="EQ"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="ManualModeActive"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateManual"/></actionblock>
			<empty/>
		</row>
		<row>
			<analog type="input" name="DISTCTRL_MANUAL"/>
			<function position="middle" type="EQ"><input name="" extensible="true"/><output name="1"/></function>
			<analog type="output" name="ManualModeActive"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<analog type="input" name="MainCtrl.Input.Par.Mode"/>
			<function position="bottom" type="EQ"><input name="" extensible="true"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<analog type="input" name="MainCtrl.Input.Par.Conveyor.Speed"/>
			<function position="top" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Conveyor.Input.Par.Speed"/>
		</row>
		<row>
			<analog type="input" name="MainCtrl.Input.Par.Conveyor.Accel"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Conveyor.Input.Par.Accel"/>
		</row>
		<row>
			<analog type="input" name="MainCtrl.Input.Par.Conveyor.Decel"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Conveyor.Input.Par.Decel"/>
		</row>
	</network>
</networks>
END_PROGRAM




