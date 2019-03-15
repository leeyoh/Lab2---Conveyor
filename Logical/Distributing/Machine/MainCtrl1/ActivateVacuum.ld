ACTION ActivateVacuum: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="PickupDone"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.Vacuum"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<empty/>
			<functionblock position="header" name="PickupTimer" type="TON"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="gDistHW.do.Vacuum"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<coil type="reset" name="gDistHW.do.Vacuum"/>
		</row>
		<row>
			<analog type="input" name="PICKUP_TIMER_DELAY"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<coil type="set" name="PickupDone"/>
		</row>
	</network>
</networks>
END_ACTION




