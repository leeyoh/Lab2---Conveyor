ACTION Manual: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="Station.Conveyor.JogPos"/>
			<line/>
			<line/>
			<coil type="open" name="Sorter.Conveyor.JogPos"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="Station.Conveyor.JogNeg"/>
			<line/>
			<line/>
			<coil type="open" name="Sorter.Conveyor.JogNeg"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="positive transition" name="Sorter.Output.Status.ProductAvailable"/>
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
			<contact type="positive transition" name="Sorter.Output.Status.ProductAvailable"/>
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
			<contact type="positive transition" name="Sorter.Output.Status.ProductAvailable"/>
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
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EqLeft"/>
			<contact type="open" name="Station.Input.CMD.RetractStopper"/>
			<contact type="closed" name="Sorter.Output.Status.SlotFull[0]"/>
			<contact type="closed" name="Sorter.Output.Status.Occupied"/>
			<contact type="open" name="Sorter.Output.Status.Switch1Extended"/>
			<contact type="open" name="Sorter.Output.Status.Switch2Retracted"/>
			<coil type="set" name="Sorter.Input.CMD.RetractStopper"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EqMiddle"/>
			<contact type="open" name="Station.Input.CMD.RetractStopper"/>
			<contact type="closed" name="Sorter.Output.Status.SlotFull[1]"/>
			<contact type="closed" name="Sorter.Output.Status.Occupied"/>
			<contact type="open" name="Sorter.Output.Status.Switch1Retracted"/>
			<contact type="open" name="Sorter.Output.Status.Switch2Extended"/>
			<coil type="set" name="Sorter.Input.CMD.RetractStopper"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EqRight"/>
			<contact type="open" name="Station.Input.CMD.RetractStopper"/>
			<contact type="closed" name="Sorter.Output.Status.SlotFull[2]"/>
			<contact type="closed" name="Sorter.Output.Status.Occupied"/>
			<contact type="open" name="Sorter.Output.Status.Switch1Retracted"/>
			<contact type="open" name="Sorter.Output.Status.Switch2Retracted"/>
			<coil type="set" name="Sorter.Input.CMD.RetractStopper"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="Sorter.Input.CMD.RetractStopper"/>
			<contact type="open" name="Station.Input.CMD.RetractStopper"/>
			<line/>
			<coil type="reset" name="Station.Input.CMD.RetractStopper"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="Station.Input.CMD.RetractStopper"/>
			<line/>
			<line/>
			<coil type="reset" name="Sorter.Input.CMD.RetractStopper"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="Station.Input.CMD.ExtendSwitch2"/>
			<contact type="closed" name="Sorter.Input.CMD.ExtendSwitch1"/>
			<line/>
			<coil type="set" name="Sorter.Input.CMD.ExtendSwitch2"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="Station.Input.CMD.ExtendSwitch1"/>
			<contact type="closed" name="Sorter.Input.CMD.ExtendSwitch2"/>
			<line/>
			<coil type="set" name="Sorter.Input.CMD.ExtendSwitch1"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="Sorter.Input.CMD.ExtendSwitch1"/>
			<contact type="open" name="Station.Input.CMD.ExtendSwitch1"/>
			<line/>
			<coil type="reset" name="Station.Input.CMD.ExtendSwitch1"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="Sorter.Input.CMD.ExtendSwitch2"/>
			<contact type="open" name="Station.Input.CMD.ExtendSwitch2"/>
			<line/>
			<coil type="reset" name="Station.Input.CMD.ExtendSwitch2"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="Station.Input.CMD.ExtendSwitch1"/>
			<line/>
			<line/>
			<coil type="reset" name="Sorter.Input.CMD.ExtendSwitch1"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="Station.Input.CMD.ExtendSwitch2"/>
			<line/>
			<line/>
			<coil type="reset" name="Sorter.Input.CMD.ExtendSwitch2"/>
		</row>
	</network>
</networks>
END_ACTION




