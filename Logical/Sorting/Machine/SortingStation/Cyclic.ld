(*********************************************************************************
 * Copyright: 	
 * Author:    	
 * Created:   	March 8, 2019/12:43 PM 
 * Description: 
 *********************************************************************************)
 PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SorterState.0"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="InitSorter"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SorterState.1"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="Manual"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SorterState.2"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="Auto"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="closed" name="Sorter.Output.Status.Error"/>
			<contact type="open" name="Sorter.AutoMode"/>
			<line/>
			<coil type="reset" name="SorterState.0"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SorterState.1"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="SorterState.2"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SorterState.3"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="closed" name="Sorter.Output.Status.Error"/>
			<contact type="closed" name="Sorter.AutoMode"/>
			<line/>
			<coil type="reset" name="SorterState.0"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="SorterState.1"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SorterState.2"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SorterState.3"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Output.Status.IsHomed"/>
			<line/>
			<line/>
			<coil type="reset" name="Sorter.Input.CMD.Home"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Input.CMD.Home"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="Home"/></actionblock>
			<coil type="reset" name="Sorter.Input.CMD.Home"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="closed" name="Sorter.Output.Status.Switch1Retracted"/>
			<line/>
			<line/>
			<coil type="reset" name="Sorter.Output.Status.IsHomed"/>
		</row>
		<row>
			<contact type="closed" name="Sorter.Output.Status.Switch2Retracted" or="true"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="Sorter.Input.CMD.RetractStopper" or="true"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<actionblock position="topbottom"><input qualifier="N"/><output name="AxisBasic"/></actionblock>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<actionblock position="topbottom"><input qualifier="N"/><output name="Collector"/></actionblock>
			<empty/>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM






