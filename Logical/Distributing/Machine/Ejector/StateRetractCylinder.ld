ACTION StateRetractCylinder: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.RetractCylinder"/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.EjCylPushProduct"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.EjCylRetracted"/>
			<line/>
			<coil type="reset" name="EjectorState.RetractCylinder"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="EjectorState.Wait"/>
		</row>
	</network>
</networks>
END_ACTION

