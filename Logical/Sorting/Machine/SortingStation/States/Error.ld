ACTION Error: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="6" column="0" commented="0">
		<row>
			<contact type="open" name="Station.Input.CMD.ErrorReset"/>
			<contact type="open" name="Sorter.Output.Status.Error"/>
			<contact type="open" name="MpAxisBasicConveyor.Error"/>
			<coil type="set" name="MpAxisBasicConveyor.ErrorReset"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="Station.Input.CMD.Home"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="TON_10ms_AutoTicker.IN"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="Sorter.Input.CMD.RunCycle"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="Sorter.Conveyor.MoveVelocity"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="Sorter.Output.Status.Occupied"/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="Station.Input.CMD.ErrorReset"/>
			<contact type="open" name="Sorter.Output.Status.Error"/>
			<line/>
			<coil type="set" name="AutoState.0"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="AutoState.1"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="AutoState.2"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="AutoState.3"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="AutoState.4"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="Station.Input.CMD.ErrorReset"/>
			<contact type="open" name="Sorter.Output.Status.Error"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.Output.Status.ErrorID"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="MpAxisBasicConveyor.Error"/>
			<line/>
			<line/>
			<coil type="reset" name="Sorter.Conveyor.MoveVelocity"/>
		</row>
	</network>
</networks>
END_ACTION













