ACTION StateExtendCylinder: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="14" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="EjectorExtendTimer" type="TON"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="EjectorState.ExtendCylinder"/>
			<line/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<analog type="input" name="EJECTOR_EXTEND_TIMEOUT"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<analog type="input" name="EJECTOR_ERROR_EXTEND_BLOCKED"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Ejector.Output.Status.ErrorID"/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="EjectorState.Error"/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="EjectorState.ExtendCylinder"/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.EjCylPushProduct"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="closed" name="EjectorExtendTimer.Q"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.EjCylPushProduct"/>
		</row>
		<row>
			<empty or="true"/>
			<empty or="true"/>
			<contact type="open" name="CmpPuckinMag"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<analog type="input" name="EJ_PUCK_POS_IN_TRANSIT"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Ejector.Output.Status.PuckPosition"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="EjectorExtendTimer.Q"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.EjCylPushProduct"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.EjCylExtended"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="EjectorState.ExtendCylinder"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="EjectorState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="CmpPuckinTransit"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<analog type="input" name="EJ_PUCK_POS_IN_TRAY"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Ejector.Output.Status.PuckPosition"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
</networks>
END_ACTION



