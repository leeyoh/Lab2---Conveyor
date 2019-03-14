(*********************************************************************************
 * Copyright: 	B&R Industrial Automation	
 * Author:    	Matthew Boyes
 * Created:   	March 8, 2019/12:38 PM 
 * Description: 	Task for controlling the operation of the Ejector Station.
 *********************************************************************************)
PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.Wait"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateWait"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.ExtendCylinder"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateExtendCylinder"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.RetractCylinder"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateRetractCylinder"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.RunCycle"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateRunCycle"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.Home"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateHome"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="EjectorState.Error"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="StateError"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="CmpPuckinMag"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!Ejector.Output.Status.PuckPosition = EJ_PUCK_POS_IN_MAG"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="CmpPuckinTransit"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!Ejector.Output.Status.PuckPosition = EJ_PUCK_POS_IN_TRANSIT"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="CmpPuckinTray"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!Ejector.Output.Status.PuckPosition = EJ_PUCK_POS_IN_TRAY"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="CmpStnEmpty"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!Ejector.Output.Status.PuckPosition = EJ_PUCK_POS_STN_EMPTY"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="8" column="0" commented="0">
		<row>
			<contact type="open" name="CmpStnEmpty"/>
			<contact type="closed" name="gDistHW.di.MagEmpty"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<analog type="input" name="EJ_PUCK_POS_IN_MAG"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Ejector.Output.Status.PuckPosition"/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<functionblock position="header" name="MagazinePuckDropTimeout" type="TON"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.MagEmpty"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<contact type="closed" name="EjectorState.RunCycle"/>
			<coil type="reset" name="EjectorState.Wait"/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="MAGAZINE_PUCK_DROP_TIMEOUT_VALUE"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<coil type="reset" name="EjectorState.Home"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="EjectorState.ExtendCylinder"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="EjectorState.RetractCylinder"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="EjectorState.Error"/>
		</row>
	</network>
</networks>
END_PROGRAM




