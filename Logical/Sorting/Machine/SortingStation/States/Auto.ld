ACTION Auto: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Input.CMD.RunCycle"/>
			<contact type="open" name="AutoState.0"/>
			<line/>
			<coil type="set" name="Sorter.Conveyor.MoveVelocity"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Input.CMD.RunCycle"/>
			<contact type="open" name="AutoState.0"/>
			<contact type="open" name="Sorter.Output.Status.ProductAvailable"/>
			<coil type="reset" name="Sorter.Conveyor.MoveVelocity"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="AutoState.0"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="AutoState.1"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="AutoState.1"/>
			<function position="top" type="EQ"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="Station.Input.Par.ParID[0]"/>
			<function position="middle" type="EQ"><input name="IN1" extensible="true"/><output name="1" ENO="true"/></function>
			<analog type="output" name="EqLeft"/>
		</row>
		<row>
			<analog type="input" name="Sorter.NewPuck"/>
			<function position="bottom" type="EQ"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="AutoState.1"/>
			<function position="top" type="EQ"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="Station.Input.Par.ParID[1]"/>
			<function position="middle" type="EQ"><input name="IN1" extensible="true"/><output name="1" ENO="true"/></function>
			<analog type="output" name="EqMiddle"/>
		</row>
		<row>
			<analog type="input" name="Sorter.NewPuck"/>
			<function position="bottom" type="EQ"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="AutoState.1"/>
			<function position="top" type="EQ"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="Station.Input.Par.ParID[2]"/>
			<function position="middle" type="EQ"><input name="IN1" extensible="true"/><output name="1" ENO="true"/></function>
			<analog type="output" name="EqRight"/>
		</row>
		<row>
			<analog type="input" name="Sorter.NewPuck"/>
			<function position="bottom" type="EQ"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="AutoState.1"/>
			<contact type="open" name="EqLeft"/>
			<contact type="closed" name="Sorter.Output.Status.SlotFull[0]"/>
			<contact type="closed" name="Sorter.Output.Status.Occupied"/>
			<coil type="set" name="Sorter.Input.CMD.ExtendSwitch1"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="Sorter.Input.CMD.ExtendSwitch2"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="AutoState.1"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="AutoState.2"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="AutoState.1"/>
			<contact type="open" name="EqMiddle"/>
			<contact type="closed" name="Sorter.Output.Status.SlotFull[1]"/>
			<contact type="closed" name="Sorter.Output.Status.Occupied"/>
			<coil type="reset" name="Sorter.Input.CMD.ExtendSwitch1"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="Sorter.Input.CMD.ExtendSwitch2"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="AutoState.1"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="AutoState.2"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="AutoState.1"/>
			<contact type="open" name="EqRight"/>
			<contact type="closed" name="Sorter.Output.Status.SlotFull[2]"/>
			<contact type="closed" name="Sorter.Output.Status.Occupied"/>
			<coil type="reset" name="Sorter.Input.CMD.ExtendSwitch1"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="Sorter.Input.CMD.ExtendSwitch2"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="AutoState.1"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="AutoState.2"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="AutoState.2"/>
			<line/>
			<line/>
			<coil type="set" name="Sorter.Input.CMD.RetractStopper"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="Sorter.Conveyor.MoveAdditive"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="AutoState.2"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="AutoState.3"/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="AutoState.3"/>
			<contact type="open" name="Sorter.Conveyor.InPosition"/>
			<line/>
			<coil type="reset" name="Sorter.Input.CMD.RetractStopper"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="Sorter.Conveyor.MoveVelocity"/>
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
			<coil type="set" name="AutoState.4"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="Sorter.Conveyor.MoveAdditive"/>
		</row>
	</network>
	<network label="" comment="" row="6" column="0" commented="0">
		<row>
			<contact type="open" name="AutoState.4"/>
			<contact type="positive transition" name="Sorter.Output.Status.LaneFull"/>
			<line/>
			<coil type="reset" name="Sorter.Conveyor.MoveVelocity"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="Sorter.Input.CMD.ExtendSwitch1"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="Station.Input.CMD.ExtendSwitch2"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="AutoState.4"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="AutoState.0"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="Sorter.Input.CMD.RunCycle"/>
		</row>
	</network>
</networks>
END_ACTION



