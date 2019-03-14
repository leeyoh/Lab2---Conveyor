(*********************************************************************************
 * Copyright: 	
 * Author:    	
 * Created:   	March 8, 2019/12:39 PM 
 * Description: 
 *********************************************************************************)
PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="Map Speed, Acceleration, and Deceleration parameters to the axis." row="6" column="0" commented="0">
		<row>
			<analog type="input" name="Conveyor.Input.Par.Accel"/>
			<function position="top" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="AxisPars.Acceleration"/>
		</row>
		<row>
			<analog type="input" name="Conveyor.Input.Par.Decel"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="AxisPars.Deceleration"/>
		</row>
		<row>
			<analog type="input" name="Conveyor.Input.Par.Speed"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="AxisPars.Velocity"/>
		</row>
		<row>
			<analog type="input" name="Conveyor.Input.Par.Speed"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="AxisPars.Jog.Velocity"/>
		</row>
		<row>
			<analog type="input" name="Conveyor.Input.Par.Accel"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="AxisPars.Jog.Acceleration"/>
		</row>
		<row>
			<analog type="input" name="Conveyor.Input.Par.Decel"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="AxisPars.Jog.Deceleration"/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorState.Init"/>
			<contact type="open" name="MpAxisBasic_0.Active"/>
			<line/>
			<coil type="set" name="MpAxisBasic_0.Home"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="MpAxisBasic_0.IsHomed"/>
			<coil type="set" name="MpAxisBasic_0.Power"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="reset" name="MpAxisBasic_0.Home"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="MpAxisBasic_0.PowerOn"/>
			<coil type="set" name="ConveyorState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="ConveyorState.Init"/>
		</row>
	</network>
	<network label="" comment="Handle RunCycle commands" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorState.Wait"/>
			<contact type="open" name="Conveyor.Input.Cmd.RunCycle"/>
			<line/>
			<coil type="reset" name="Conveyor.Input.Cmd.RunCycle"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="Conveyor.Output.Status.CycleDone"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="ConveyorState.RunCycle"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="ConveyorState.Wait"/>
		</row>
	</network>
	<network label="" comment="Handle manual jog forward commands" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorState.Wait"/>
			<contact type="open" name="Conveyor.Input.Cmd.JogForward"/>
			<line/>
			<coil type="set" name="ConveyorState.JogFwd"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="ConveyorState.Wait"/>
		</row>
	</network>
	<network label="" comment="Handle manual jog backward commands. If there is a part at the start of the conveyor, this command will not be executed, as it is not permitted for a part to be jogged backward off the conveyor." row="6" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorState.Wait"/>
			<contact type="open" name="Conveyor.Input.Cmd.JogBackward"/>
			<contact type="closed" name="gDistHW.di.ConvStartVacant"/>
			<line/>
			<line/>
			<coil type="reset" name="Conveyor.Input.Cmd.JogBackward"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="Conveyor.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="CONV_PART_AT_START"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Conveyor.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.ConvStartVacant"/>
			<line/>
			<line/>
			<coil type="set" name="ConveyorState.JogBack"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="ConveyorState.Wait"/>
		</row>
	</network>
	<network label="" comment="" row="6" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorState.JogBack"/>
			<contact type="closed" name="gDistHW.di.ConvStartVacant"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<empty or="true"/>
			<analog type="input" name="CONV_PART_AT_START"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Conveyor.Output.RejectionCode"/>
		</row>
		<row>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Conveyor.Input.Cmd.JogBackward"/>
		</row>
		<row>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="Conveyor.Output.CommandRejected"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="closed" name="Conveyor.Input.Cmd.JogBackward"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="ConveyorState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="ConveyorState.JogBack"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorState.JogFwd"/>
			<contact type="closed" name="Conveyor.Input.Cmd.JogForward"/>
			<line/>
			<coil type="set" name="ConveyorState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="ConveyorState.JogFwd"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorState.RunCycle"/>
			<contact type="negative transition" name="gDistHW.di.PuckAtConvEnd"/>
			<line/>
			<coil type="set" name="Conveyor.Output.Status.CycleDone"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="ConveyorState.Wait"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="ConveyorState.RunCycle"/>
		</row>
	</network>
	<network label="" comment="" row="20" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="MpAxisBasic_0" type="MpAxisBasic"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAxisBasic"/>
			<functionblock position="top" type="MpAxisBasic"><input name="MpLink" vardynamic="true"/><output name="Active"/></functionblock>
			<empty/>
		</row>
		<row>
			<line/>
			<line/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Enable"/><output name="Error"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="open" name="MpAxisBasic_0.Error"/>
			<line/>
			<functionblock position="middle" type="MpAxisBasic"><input name="ErrorReset"/><output name="StatusID"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="AxisPars"/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Parameters" vardynamic="true"/><output name="UpdateDone"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Update"/><output name="Position"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAxisDist"/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Axis"/><output name="Velocity"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Power"/><output name="CommandBusy"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Home"/><output name="CommandAborted"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="open" name="ConveyorState.RunCycle"/>
			<line/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MoveVelocity"/><output name="PowerOn"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MoveAbsolute"/><output name="IsHomed"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MoveAdditive"/><output name="InVelocity"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Stop"/><output name="InPosition"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="open" name="ConveyorState.JogFwd"/>
			<line/>
			<functionblock position="middle" type="MpAxisBasic"><input name="JogPositive"/><output name="MoveActive"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="open" name="ConveyorState.JogBack"/>
			<line/>
			<functionblock position="middle" type="MpAxisBasic"><input name="JogNegative"/><output name="Stopped"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Autotune"/><output name="TuningDone"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Simulate"/><output name="Simulation"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="TorqueLimit"/><output name="TorqueLimited"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="ReleaseBrake"/><output name="BrakeReleased"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="bottom" type="MpAxisBasic"><output name="Info"/></functionblock>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM








