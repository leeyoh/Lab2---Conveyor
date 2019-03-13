ACTION StateDeactivateVacuum: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="6" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.DeactivateVacuum"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.Vacuum"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.EjImpulse"/>
		</row>
		<row>
			<empty or="true"/>
			<functionblock position="header" name="DropoffTimer" type="TON"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<coil type="reset" name="gDistHW.do.EjImpulse"/>
		</row>
		<row>
			<analog type="input" name="DROPOFF_TIMER_DELAY"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<coil type="set" name="SwivelArmState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="SwivelArmState.DeactivateVacuum"/>
		</row>
	</network>
</networks>
END_ACTION


