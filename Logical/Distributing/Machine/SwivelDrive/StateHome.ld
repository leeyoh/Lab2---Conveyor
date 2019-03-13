ACTION StateHome: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="9" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.Home"/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.SwDrToMag"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.EjImpulse"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.Vacuum"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.SwDrToConv"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.SwDrConvPos"/>
			<line/>
			<coil type="set" name="SwivelArm.Output.Status.IsHomed"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="SwivelArm.Input.Cmd.RunCycle"/>
			<coil type="reset" name="SwivelArm.Input.Cmd.RunCycle"/>
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
			<contact type="closed" name="SwivelArm.Input.Cmd.RunCycle"/>
			<coil type="set" name="SwivelArmState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SwivelArmState.Home"/>
		</row>
	</network>
</networks>
END_ACTION


