(*********************************************************************************
 * Copyright: 	I-Automation
 * Author:    	John Lee
 * Created:   	March 8, 2019/12:41 PM 
 * Description:   Main Ctrl task for Sorter Station
 *********************************************************************************)
PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="MACHINESTATE[0...7]
INDEX[0] = AUTO MODE   :  0 Manual   1 Auto
INDEX[1] = In Charge           :  0 Dist          1 Sorter
INDEX[2] = CMD                    :  0 Stop        1 Start        
INDEX[3 - 5]  Dist Stations
INDEX[6]    Sorter Station    : 0 Ready   1 Occupied 
INDEX[7]  Error                       : 0 No Error    1 Error " row="2" column="0" commented="0">
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
	<network label="" comment="Timer For Auto Task.    
MachineState index [2]:   Value of 0 = Stop,  1 = Start,   3 = Reset
Timer gets reset only when reset command is issued. " row="2" column="0" commented="0">
		<row>
			<contact type="open" name="Station.Reset"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="TimeIn"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="closed" name="Station.Reset"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="86400"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="TimeIn"/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<empty/>
			<functionblock position="header" name="TP_10ms_Start" type="TP_10ms"/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="Station.Reset"/>
			<functionblock position="top" type="TP_10ms"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="open" name="MachineState[2].0" or="true"/>
			<functionblock position="middle" type="TP_10ms"><output name="Q"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="closed" name="Station.Reset"/>
			<functionblock position="middle" type="TP_10ms"><input name="IN"/><output name="ET"/></functionblock>
			<analog type="output" name="Station.Output.Time"/>
		</row>
		<row>
			<analog type="input" name="TimeIn"/>
			<functionblock position="bottom" type="TP_10ms"><input name="PT"/></functionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="If distributor conveyor done, run sorter" row="1" column="0" commented="0">
		<row>
			<contact type="negative transition" name="MachineState[5].0"/>
			<line/>
			<line/>
			<coil type="set" name="Sorter.Input.CMD.RunCycle"/>
		</row>
	</network>
	<network label="" comment="Mapping Station to OpcUA " row="2" column="0" commented="0">
		<row>
			<contact type="closed" name="Station.Output.Status.Error"/>
			<contact type="open" name="Sorter.Output.Status.Occupied"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="1"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="MachineState[6]"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="closed" name="Station.Output.Status.Error"/>
			<contact type="closed" name="Sorter.Output.Status.Occupied"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="MachineState[6]"/>
		</row>
	</network>
	<network label="" comment="Map station input to sorter input" row="4" column="0" commented="0">
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
	<network label="" comment="Maps user commands to machine commands" row="1" column="0" commented="0">
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















