ACTION StateRunCycle: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<functionblock position="header" name="EjectorExtendTimer" type="TON"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="EjectorState.RunCycle"/>
			<contact type="closed" name="gDistHW.di.MagEmpty"/>
			<line/>
			<line/>
			<line/>
			<contact type="closed" name="gDistHW.di.EjCylExtended"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<coil type="reset" name="gDistHW.do.EjCylPushProduct"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!AutoStep = EJECTOR_EXTEND"/></function>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.EjCylExtended"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty or="true"/>
			<analog type="input" name="EJECTOR_EXTEND_TIMEOUT"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<coil type="set" name="EjectorState.Error"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="EJECTOR_RETRACT"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="AutoStep" or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="EjectorState.RunCycle"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="EjectorExtendTimer.Q"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.EjCylPushProduct"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="EjectorState.RunCycle"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.EjCylPushProduct"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!AutoStep = EJECTOR_RETRACT"/></function>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.EjCylRetracted"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line/>
			<coil type="reset" name="EjectorState.RunCycle"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="EJECTOR_EXTEND"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="AutoStep" or="true"/>
			<coil type="set" name="EjectorState.Wait"/>
		</row>
	</network>
</networks>
END_ACTION


