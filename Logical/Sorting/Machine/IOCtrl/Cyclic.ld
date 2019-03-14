(*********************************************************************************
 * Copyright: 	
 * Author:    	
 * Created:   	March 8, 2019/12:42 PM 
 * Description: 
 *********************************************************************************)
PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="Sorter.Input.CMD.ExtendSwitch1"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="gSortHW.do.ExtendSwitch1"/>
		</row>
		<row>
			<analog type="input" name="Sorter.Input.CMD.ExtendSwitch2"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="gSortHW.do.ExtendSwitch2"/>
		</row>
		<row>
			<analog type="input" name="Sorter.Input.CMD.RetractStopper"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="56" ENO="true"/></function>
			<analog type="output" name="gSortHW.do.RetractStopper"/>
		</row>
	</network>
	<network label="" comment="" row="9" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="gSortHW.di.Metallic"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Sorter.Output.Status.MetallicProduct"/>
		</row>
		<row>
			<analog type="input" name="gSortHW.di.NotBlack"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Output.Status.ProductNotBlack"/>
		</row>
		<row>
			<analog type="input" name="gSortHW.di.ProductAvailable"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Output.Status.ProductAvailable"/>
		</row>
		<row>
			<analog type="input" name="gSortHW.di.Switch1Extended"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Output.Status.Switch1Extended"/>
		</row>
		<row>
			<analog type="input" name="gSortHW.di.Switch1Retracted"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Output.Status.Switch1Retracted"/>
		</row>
		<row>
			<analog type="input" name="gSortHW.di.Switch2Extended"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Output.Status.Switch2Extended"/>
		</row>
		<row>
			<analog type="input" name="gSortHW.di.Switch2Retracted"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Output.Status.Switch2Retracted"/>
		</row>
		<row>
			<analog type="input" name="gSortHW.di.LaneFull"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="56" ENO="true"/></function>
			<analog type="output" name="Sorter.Output.Status.LaneFull"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Conveyor.Stop"/>
			<line/>
			<line/>
			<coil type="open" name="MpAxisBasicConveyor.Stop"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="MpAxisBasicConveyor.MoveVelocity"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="MpAxisBasicConveyor.InPosition"/>
			<line/>
			<line/>
			<coil type="open" name="Sorter.Conveyor.InPosition"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="PUCK_PAST"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="ConveyorParam.Distance"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="NE"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="Update_Accel"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="Sorter.Conveyor.Accel"/>
			<function position="middle" type="NE"><input name="IN1"/><output name="1"/></function>
			<analog type="output" name="Update_Accel"/>
			<analog type="input" name="Sorter.Conveyor.Accel"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ConveyorParam.Acceleration"/>
		</row>
		<row>
			<analog type="input" name="ConveyorParam.Acceleration"/>
			<function position="bottom" type="NE"><input name="IN2"/></function>
			<empty/>
			<analog type="input" name="Sorter.Conveyor.Accel"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="56" ENO="true"/></function>
			<analog type="output" name="ConveyorParam.Jog.Acceleration"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="NE"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="Update_Decel"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="Sorter.Conveyor.Decel"/>
			<function position="middle" type="NE"><input name="IN1"/><output name="1"/></function>
			<analog type="output" name="Update_Decel"/>
			<analog type="input" name="Sorter.Conveyor.Decel"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ConveyorParam.Deceleration"/>
		</row>
		<row>
			<analog type="input" name="ConveyorParam.Deceleration"/>
			<function position="bottom" type="NE"><input name="IN2"/></function>
			<empty/>
			<analog type="input" name="Sorter.Conveyor.Decel"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="56" ENO="true"/></function>
			<analog type="output" name="ConveyorParam.Jog.Deceleration"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="NE"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="Update_Vel"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="Sorter.Conveyor.Velocity"/>
			<function position="middle" type="NE"><input name="IN1"/><output name="1"/></function>
			<analog type="output" name="Update_Vel"/>
			<analog type="input" name="Sorter.Conveyor.Velocity"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ConveyorParam.Velocity"/>
		</row>
		<row>
			<analog type="input" name="ConveyorParam.Velocity"/>
			<function position="bottom" type="NE"><input name="IN2"/></function>
			<empty/>
			<analog type="input" name="Sorter.Conveyor.Velocity"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="56" ENO="true"/></function>
			<analog type="output" name="ConveyorParam.Jog.Velocity"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MpAxisBasicConveyor.Update"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="Update_Accel"/>
			<line/>
			<line/>
			<coil type="set" name="MpAxisBasicConveyor.Update"/>
		</row>
		<row>
			<contact type="open" name="Update_Decel" or="true"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="Update_Vel" or="true"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM














