ACTION StateActivateVacuum: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="SwivelArmState.ActivateVacuum"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.Vacuum"/>
		</row>
		<row>
			<empty or="true"/>
			<functionblock position="header" name="PickupTimer" type="TON"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<coil type="reset" name="gDistHW.do.Vacuum"/>
		</row>
		<row>
			<analog type="input" name="PICKUP_TIMER_DELAY"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<coil type="set" name="SwivelArmState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="SwivelArmState.ActivateVacuum"/>
		</row>
	</network>
</networks>
END_ACTION


