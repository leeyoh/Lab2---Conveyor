(*********************************************************************************
 * Copyright: 	B&R Industrial Automation	
 * Author:    	Matthew Boyes
 * Created:   	March 8, 2019/12:38 PM 
 * Description: 	Task for controlling the operation of the Ejector Station.
 *********************************************************************************)
PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.Wait"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateWait"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.ExtendCylinder"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateExtendCylinder"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.RetractCylinder"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateRetractCylinder"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.RunCycle"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateRunCycle"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.Home"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateHome"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.Error"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateError"/></actionblock>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM


