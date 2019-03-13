ACTION InitSorter: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="2000"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Sorter.Conveyor.Velocity"/>
		</row>
		<row>
			<analog type="input" name="5000"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Conveyor.Accel"/>
		</row>
		<row>
			<analog type="input" name="5000"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="56" ENO="true"/></function>
			<analog type="output" name="Sorter.Conveyor.Decel"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="Sorter.Input.CMD.Home"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Output.Status.IsHomed"/>
			<line/>
			<line/>
			<coil type="reset" name="SorterState.0"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="SorterState.1"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="SorterState.2"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="SorterState.3"/>
		</row>
	</network>
</networks>
END_ACTION






