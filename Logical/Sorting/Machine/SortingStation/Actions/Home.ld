ACTION Home: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="Sorter.Output.Status.Switch1Retracted"/>
			<line/>
			<line/>
			<coil type="reset" name="Sorter.Input.CMD.ExtendSwitch1"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="Sorter.Output.Status.Switch2Retracted"/>
			<line/>
			<line/>
			<coil type="reset" name="Sorter.Input.CMD.ExtendSwitch2"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Sorter.Input.CMD.RetractStopper"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="Sorter.Conveyor.Stop"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="Sorter.Conveyor.MoveActive"/>
			<line/>
			<line/>
			<coil type="set" name="Sorter.Conveyor.Home"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Output.Status.Switch1Retracted"/>
			<contact type="open" name="Sorter.Output.Status.Switch2Retracted"/>
			<contact type="closed" name="Sorter.Input.CMD.RetractStopper"/>
			<contact type="open" name="Sorter.Conveyor.Home"/>
			<coil type="set" name="Sorter.Output.Status.IsHomed"/>
		</row>
	</network>
</networks>
END_ACTION




