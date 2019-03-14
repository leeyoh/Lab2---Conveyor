(*********************************************************************************
 * Copyright: 	B&R Industrial Automation
 * Author:    	Matthew Boyes
 * Created:   	March 8, 2019/12:39 PM 
 * Description: 	Controls the swivel arm station.
 *********************************************************************************)
PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.Wait"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateWait"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.ActivateVacuum"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateActivateVacuum"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.DeactivateVacuum"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateDeactivateVacuum"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.Error"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateError"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.Home"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateHome"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.MoveToConveyor"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateMoveToConveyor"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.MoveToMagazine"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateMoveToMagazine"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.RunCycle"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateRunCycle"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="1"/></function>
			<analog type="output" name="CmpPuckAtTray"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SwivelArm.Output.Status.PuckPosition = SA_PUCK_POS_AT_TRAY"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="1"/></function>
			<analog type="output" name="CmpPuckInTransit"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SwivelArm.Output.Status.PuckPosition = SA_PUCK_POS_IN_TRANSIT"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="1"/></function>
			<analog type="output" name="CmpPuckAtConv"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SwivelArm.Output.Status.PuckPosition = SA_PUCK_POS_AT_CONV"/></function>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM


