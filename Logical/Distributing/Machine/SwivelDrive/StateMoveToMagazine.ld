ACTION StateMoveToMagazine: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.MoveToMagazine"/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.SwDrToConv"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.SwDrToMag"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.SwDrMagPos"/>
			<line/>
			<coil type="set" name="SwivelArmState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SwivelArmState.MoveToMagazine"/>
		</row>
	</network>
</networks>
END_ACTION

