ACTION StateHome: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.Home"/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.EjCylPushProduct"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.EjCylRetracted"/>
			<line/>
			<coil type="reset" name="EjectorState.Home"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="Ejector.Input.Cmd.RunCycle"/>
			<coil type="set" name="EjectorState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="Ejector.Input.Cmd.RunCycle"/>
			<coil type="set" name="EjectorState.RunCycle"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="Ejector.Input.Cmd.RunCycle"/>
		</row>
	</network>
</networks>
END_ACTION



