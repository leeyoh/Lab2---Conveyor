ACTION StateWait: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.Wait"/>
			<contact type="open" name="SwivelArm.Input.Cmd.RunCycle"/>
			<contact type="open" name="SwivelArm.Output.Status.IsHomed"/>
			<coil type="reset" name="SwivelArm.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="set" name="SwivelArmState.RunCycle"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="reset" name="SwivelArmState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="reset" name="SwivelArm.Input.Cmd.RunCycle"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="SwivelArm.Output.Status.IsHomed"/>
			<coil type="reset" name="SwivelArm.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="SwivelArmState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="SwivelArmState.Home"/>
		</row>
	</network>
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.Wait"/>
			<contact type="open" name="SwivelArm.Input.Cmd.MoveToConveyor"/>
			<contact type="open" name="gDistHW.di.SwDrConvPos"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArm.Output.CommandRejected"/>
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
			<analog type="input" name="SWIVEL_ALREADY_AT_CONV"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SwivelArm.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="gDistHW.di.SwDrConvPos"/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArm.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArmState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArmState.MoveToConveyor"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArm.Input.Cmd.MoveToConveyor"/>
		</row>
	</network>
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.Wait"/>
			<contact type="open" name="SwivelArm.Input.Cmd.MoveToMagazine"/>
			<contact type="open" name="gDistHW.di.SwDrMagPos"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArm.Output.CommandRejected"/>
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
			<analog type="input" name="SWIVEL_ALREADY_AT_MAG"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SwivelArm.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="gDistHW.di.SwDrMagPos"/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArm.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArmState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArmState.MoveToMagazine"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArm.Input.Cmd.MoveToMagazine"/>
		</row>
	</network>
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.Wait"/>
			<contact type="open" name="SwivelArm.Input.Cmd.ActivateVacuum"/>
			<contact type="open" name="gDistHW.do.Vacuum"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArm.Output.CommandRejected"/>
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
			<analog type="input" name="SWIVEL_VAC_ALREADY_ACTIVE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SwivelArm.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="gDistHW.do.Vacuum"/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArm.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArmState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArmState.ActivateVacuum"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArm.Input.Cmd.ActivateVacuum"/>
		</row>
	</network>
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.Wait"/>
			<contact type="open" name="SwivelArm.Input.Cmd.DeactivateVacuum"/>
			<contact type="open" name="gDistHW.do.EjImpulse"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArm.Output.CommandRejected"/>
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
			<analog type="input" name="SWIVEL_VAC_ALREADY_INACTIVE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SwivelArm.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="gDistHW.do.EjImpulse"/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArm.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArmState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArmState.DeactivateVacuum"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArm.Input.Cmd.DeactivateVacuum"/>
		</row>
	</network>
	<network label="" comment="" row="6" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.Wait"/>
			<contact type="open" name="SwivelArm.Input.Cmd.Home"/>
			<contact type="open" name="SwivelArm.Output.Status.IsHomed"/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArm.Input.Cmd.Home"/>
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
			<analog type="input" name="SWIVEL_ALREADY_HOMED"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SwivelArm.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="SwivelArm.Output.Status.IsHomed"/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArm.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="SwivelArmState.Home"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="SwivelArmState.Wait"/>
		</row>
	</network>
</networks>
END_ACTION


