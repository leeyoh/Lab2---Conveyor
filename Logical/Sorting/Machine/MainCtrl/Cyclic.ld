(*********************************************************************************
 * Copyright: 	
 * Author:    	
 * Created:   	March 8, 2019/12:41 PM 
 * Description: 
 *********************************************************************************)
PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="Station"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Station"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="MachineState[0].0"/>
			<contact type="open" name="Sorter.Output.Status.IsHomed"/>
			<line/>
			<coil type="set" name="Sorter.AutoMode"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="closed" name="Sorter.Output.Status.IsHomed"/>
			<contact type="closed" name="Sorter.AutoMode"/>
			<coil type="set" name="Station.Input.CMD.Home"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="MachineState[0].0"/>
			<line/>
			<line/>
			<coil type="reset" name="Sorter.AutoMode"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="MachineState[2].0"/>
			<contact type="open" name="MachineState[2].1"/>
			<line/>
			<coil type="open" name="Sorter.Reset"/>
		</row>
	</network>
	<network label="" comment="Timer For Auto Task.    
MachineState index [2]:   Value of 0 = Stop,  1 = Start,   3 = Reset
Timer gets reset only when reset command is issued. " row="2" column="0" commented="0">
		<row>
			<contact type="open" name="MachineState[2].0"/>
			<contact type="open" name="MachineState[2].1"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="TimeIn"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="MachineState[2].0"/>
			<contact type="closed" name="MachineState[2].1"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="86400"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="TimeIn"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<functionblock position="header" name="TP_10ms_Start" type="TP_10ms"/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="MachineState[2].0"/>
			<functionblock position="top" type="TP_10ms"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="closed" name="MachineState[2].1"/>
			<functionblock position="middle" type="TP_10ms"><input name="IN"/><output name="Q"/></functionblock>
			<analog type="output" name="Station.Output.Time"/>
		</row>
		<row>
			<analog type="input" name="TimeIn"/>
			<functionblock position="bottom" type="TP_10ms"><input name="PT"/><output name="ET"/></functionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="negative transition" name="MachineState[5].0"/>
			<line/>
			<line/>
			<coil type="set" name="Sorter.Input.CMD.RunCycle"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="Station.Input.CMD.Home"/>
			<line/>
			<line/>
			<coil type="reset" name="Station.Input.CMD.ExtendSwitch1"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="Station.Input.CMD.ExtendSwitch2"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="Station.Input.CMD.RetractStopper"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="Sorter.Input.CMD.Home"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Output.Status.IsHomed"/>
			<line/>
			<line/>
			<coil type="reset" name="Station.Input.CMD.Home"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<actionblock position="topbottom"><input qualifier="N"/><output name="Linker"/></actionblock>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<actionblock position="topbottom"><input qualifier="N"/><output name="OpcUa"/></actionblock>
			<empty/>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM











