ACTION StateManual: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="AutoModeInitialized"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="positive transition" name="MainCtrl.Input.Cmd.Ejector.Extend"/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="Ejector.Input.Cmd.ExtendEjector"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="MainCtrl.Input.Cmd.Ejector.Extend"/>
			<contact type="negative transition" name="Ejector.Input.Cmd.ExtendEjector"/>
			<contact type="open" name="Ejector.Output.CommandRejected"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="DIST_REJECT_PLACEHOLDER"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.Ejector.Extend"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="positive transition" name="MainCtrl.Input.Cmd.Ejector.Retract"/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="Ejector.Input.Cmd.RetractEjector"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="MainCtrl.Input.Cmd.Ejector.Retract"/>
			<contact type="negative transition" name="Ejector.Input.Cmd.RetractEjector"/>
			<contact type="open" name="Ejector.Output.CommandRejected"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="DIST_REJECT_PLACEHOLDER"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.Ejector.Retract"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="positive transition" name="MainCtrl.Input.Cmd.SwivelArm.MoveToConveyor"/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArm.Input.Cmd.MoveToConveyor"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="MainCtrl.Input.Cmd.SwivelArm.MoveToConveyor"/>
			<contact type="negative transition" name="SwivelArm.Input.Cmd.MoveToConveyor"/>
			<contact type="open" name="SwivelArm.Output.CommandRejected"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="DIST_REJECT_PLACEHOLDER"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.MoveToConveyor"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="positive transition" name="MainCtrl.Input.Cmd.SwivelArm.MoveToMagazine"/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArm.Input.Cmd.MoveToMagazine"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="MainCtrl.Input.Cmd.SwivelArm.MoveToMagazine"/>
			<contact type="negative transition" name="SwivelArm.Input.Cmd.MoveToMagazine"/>
			<contact type="open" name="SwivelArm.Output.CommandRejected"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="DIST_REJECT_PLACEHOLDER"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.MoveToMagazine"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="positive transition" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOnImpulse"/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArm.Input.Cmd.ActivateVacuum"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOnImpulse"/>
			<contact type="negative transition" name="SwivelArm.Input.Cmd.ActivateVacuum"/>
			<contact type="open" name="Ejector.Output.CommandRejected"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="DIST_REJECT_PLACEHOLDER"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOnImpulse"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="positive transition" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOffImpulse"/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArm.Input.Cmd.DeactivateVacuum"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOffImpulse"/>
			<contact type="negative transition" name="SwivelArm.Input.Cmd.DeactivateVacuum"/>
			<contact type="open" name="SwivelArm.Output.CommandRejected"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="DIST_REJECT_PLACEHOLDER"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOffImpulse"/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="MainCtrl.Input.Cmd.Conveyor.JogFwd"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="open" name="Conveyor.Input.Cmd.JogForward"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="SwivelArm.Output.CommandRejected"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="DIST_REJECT_PLACEHOLDER"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="MainCtrl.Input.Cmd.Conveyor.JogBack"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="open" name="Conveyor.Input.Cmd.JogBackward"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="SwivelArm.Output.CommandRejected"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="DIST_REJECT_PLACEHOLDER"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
	</network>
</networks>
END_ACTION



