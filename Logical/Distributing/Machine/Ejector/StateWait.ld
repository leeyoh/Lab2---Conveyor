ACTION StateWait: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.Wait"/>
			<contact type="open" name="Ejector.Input.Cmd.ExtendEjector"/>
			<contact type="open" name="gDistHW.di.EjCylExtended"/>
			<line/>
			<line/>
			<coil type="set" name="Ejector.Output.CommandRejected"/>
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
			<analog type="input" name="EJECTOR_CYL_ALREADY_EXTENDED"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Ejector.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="gDistHW.di.EjCylExtended"/>
			<line/>
			<line/>
			<coil type="reset" name="Ejector.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="EjectorState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="EjectorState.ExtendCylinder"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Ejector.Input.Cmd.ExtendEjector"/>
		</row>
	</network>
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.Wait"/>
			<contact type="open" name="Ejector.Input.Cmd.RetractEjector"/>
			<contact type="open" name="gDistHW.di.EjCylRetracted"/>
			<line/>
			<line/>
			<coil type="set" name="Ejector.Output.CommandRejected"/>
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
			<analog type="input" name="EJECTOR_CYL_ALREADY_RETRACTED"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Ejector.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="gDistHW.di.EjCylRetracted"/>
			<line/>
			<line/>
			<coil type="reset" name="Ejector.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="EjectorState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="EjectorState.RetractCylinder"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Ejector.Input.Cmd.RetractEjector"/>
		</row>
	</network>
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.Wait"/>
			<contact type="open" name="Ejector.Input.Cmd.RunCycle"/>
			<contact type="open" name="Ejector.Output.Status.IsHomed"/>
			<coil type="reset" name="Ejector.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="reset" name="EjectorState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="set" name="EjectorState.RunCycle"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="reset" name="Ejector.Input.Cmd.RunCycle"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="Ejector.Output.Status.IsHomed"/>
			<coil type="reset" name="Ejector.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="EjectorState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="EjectorState.Home"/>
		</row>
	</network>
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.Wait"/>
			<contact type="open" name="Ejector.Input.Cmd.Home"/>
			<contact type="open" name="Ejector.Output.Status.IsHomed"/>
			<line/>
			<line/>
			<coil type="set" name="Ejector.Output.CommandRejected"/>
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
			<analog type="input" name="EJECTOR_STN_ALREADY_HOMED"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Ejector.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="Ejector.Output.Status.IsHomed"/>
			<line/>
			<line/>
			<coil type="reset" name="Ejector.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="Ejector.Input.Cmd.Home"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="EjectorState.Home"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="EjectorState.Wait"/>
		</row>
	</network>
</networks>
END_ACTION





