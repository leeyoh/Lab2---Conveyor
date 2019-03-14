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
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="MainCtrl.Input.Cmd.Ejector.Extend"/>
			<contact type="negative transition" name="Ejector.Input.Cmd.ExtendEjector"/>
			<contact type="open" name="Ejector.Output.CommandRejected"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="EjCylExtended"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="1"/></function>
			<analog type="output" name="EjCylExtended"/>
			<analog type="input" name="EJECTOR_EXTEND_ALREADY_IN_POS"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!Ejector.Output.RejectionCode = EJECTOR_CYL_ALREADY_EXTENDED"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
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
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="MainCtrl.Input.Cmd.Ejector.Retract"/>
			<contact type="negative transition" name="Ejector.Input.Cmd.RetractEjector"/>
			<contact type="open" name="Ejector.Output.CommandRejected"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="EjCylRetracted"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="1"/></function>
			<analog type="output" name="EjCylRetracted"/>
			<analog type="input" name="EJECTOR_RETRACT_ALREADY_IN_POS"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!Ejector.Output.RejectionCode = EJECTOR_CYL_ALREADY_RETRACTED"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
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
			<analog type="input" name="SWIVEL_TO_CONV_ALREADY_IN_POS"/>
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
			<analog type="input" name="SWIVEL_TO_MAG_ALREADY_IN_POS"/>
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
			<analog type="input" name="SWIVEL_VAC_ON_NO_PRODUCT"/>
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
			<analog type="input" name="SWIVEL_VAC_OFF_PUCK_IN_TRANSIT"/>
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
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainCtrl.Input.Cmd.Conveyor.JogFwd"/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="open" name="Conveyor.Input.Cmd.JogForward"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="SwivelArm.Output.CommandRejected"/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
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
			<analog type="input" name="CONV_JOG_BACK_PUCK_AT_START"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
	</network>
</networks>
END_ACTION




