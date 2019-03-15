(*********************************************************************************
 * Copyright: 	
 * Author:    	
 * Created:   	March 8, 2019/12:31 PM 
 * Description: 
 *********************************************************************************)

PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="6" column="0" commented="0">
		<row>
			<analog type="input" name="MainCtrl.Input.Par.Conveyor.Accel"/>
			<function position="top" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="AxisPars.Acceleration"/>
		</row>
		<row>
			<analog type="input" name="MainCtrl.Input.Par.Conveyor.Decel"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="AxisPars.Deceleration"/>
		</row>
		<row>
			<analog type="input" name="MainCtrl.Input.Par.Conveyor.Speed"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="AxisPars.Velocity"/>
		</row>
		<row>
			<analog type="input" name="MainCtrl.Input.Par.Conveyor.Accel"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="AxisPars.Jog.Acceleration"/>
		</row>
		<row>
			<analog type="input" name="MainCtrl.Input.Par.Conveyor.Decel"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="AxisPars.Jog.Deceleration"/>
		</row>
		<row>
			<analog type="input" name="MainCtrl.Input.Par.Conveyor.Speed"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="AxisPars.Jog.Velocity"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.Ejector.Extend"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_AUTO"/></function>
			<empty or="true"/>
			<analog type="input" name="DIST_IN_AUTO_MODE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.Ejector.Extend"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.Ejector.Retract"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_AUTO"/></function>
			<empty or="true"/>
			<analog type="input" name="DIST_IN_AUTO_MODE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.Ejector.Retract"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.SwivelArm.MoveToConveyor"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_AUTO"/></function>
			<empty or="true"/>
			<analog type="input" name="DIST_IN_AUTO_MODE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.MoveToConveyor"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.SwivelArm.MoveToMagazine"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_AUTO"/></function>
			<empty or="true"/>
			<analog type="input" name="DIST_IN_AUTO_MODE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.MoveToMagazine"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOnImpulse"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_AUTO"/></function>
			<empty or="true"/>
			<analog type="input" name="DIST_IN_AUTO_MODE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOnImpulse"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOffImpulse"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_AUTO"/></function>
			<empty or="true"/>
			<analog type="input" name="DIST_IN_AUTO_MODE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOffImpulse"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.Conveyor.JogFwd"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_AUTO"/></function>
			<empty or="true"/>
			<analog type="input" name="DIST_IN_AUTO_MODE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.Conveyor.JogFwd"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.Conveyor.JogBack"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_AUTO"/></function>
			<empty or="true"/>
			<analog type="input" name="DIST_IN_AUTO_MODE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.Conveyor.JogBack"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.StartAuto"/>
			<coil type="set" name="MainMode.Auto"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_AUTO"/></function>
			<empty or="true"/>
			<coil type="reset" name="MainMode.Manual"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="MainCtrl.Input.Cmd.StartAuto"/>
		</row>
	</network>
	<network label="" comment="" row="8" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="open" name="MainAutoStep.DIST_INIT"/>
			<contact type="open" name="MpAxisBasic_0.Active"/>
			<line/>
			<line/>
			<coil type="set" name="MpAxisBasic_0.Power"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.Vacuum"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.EjImpulse"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.SwDrToConv"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.EjCylPushProduct"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="MpAxisBasic_0.PowerOn"/>
			<contact type="open" name="gDistHW.di.EjCylRetracted"/>
			<contact type="open" name="gDistHW.di.SwDrConvPos"/>
			<coil type="reset" name="gDistHW.do.SwDrToConv"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="MainAutoStep.DIST_EXTEND_EJECTOR"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="MainAutoStep.DIST_INIT"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="positive transition" name="MainAutoStep.DIST_EXTEND_EJECTOR"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="ModeSwitched"/>
			<coil type="set" name="MainMode.Manual"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="ModeSwitched" or="true"/>
			<coil type="reset" name="MainMode.Auto"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="open" name="MainAutoStep.DIST_EXTEND_EJECTOR"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="PUCKPOS_IN_TRANSIT"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="PuckPosition"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.EjCylPushProduct"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.EjCylExtended"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="PUCKPOS_IN_TRAY"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="PuckPosition"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainAutoStep.DIST_RETRACT_EJECTOR"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainAutoStep.DIST_EXTEND_EJECTOR"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="positive transition" name="MainAutoStep.DIST_RETRACT_EJECTOR"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="ModeSwitched"/>
			<coil type="set" name="MainMode.Manual"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="ModeSwitched" or="true"/>
			<coil type="reset" name="MainMode.Auto"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="open" name="MainAutoStep.DIST_RETRACT_EJECTOR"/>
			<line/>
			<coil type="reset" name="gDistHW.do.EjCylPushProduct"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.EjCylRetracted"/>
			<coil type="set" name="MainAutoStep.DIST_SWIVEL_TO_PICKUP"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="MainAutoStep.DIST_RETRACT_EJECTOR"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="positive transition" name="MainAutoStep.DIST_SWIVEL_TO_PICKUP"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="ModeSwitched"/>
			<coil type="set" name="MainMode.Manual"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="ModeSwitched" or="true"/>
			<coil type="reset" name="MainMode.Auto"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="open" name="MainAutoStep.DIST_SWIVEL_TO_PICKUP"/>
			<line/>
			<coil type="set" name="gDistHW.do.SwDrToMag"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.SwDrMagPos"/>
			<coil type="reset" name="gDistHW.do.SwDrToMag"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="MainAutoStep.DIST_SWIVEL_PICKUP"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="MainAutoStep.DIST_SWIVEL_TO_PICKUP"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="positive transition" name="MainAutoStep.DIST_SWIVEL_PICKUP"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="ModeSwitched"/>
			<coil type="set" name="MainMode.Manual"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="ModeSwitched" or="true"/>
			<coil type="reset" name="MainMode.Auto"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="9" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="open" name="MainAutoStep.DIST_SWIVEL_PICKUP"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.Vacuum"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty/>
			<functionblock position="header" name="PickupTimer" type="TON"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.do.Vacuum"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<coil type="reset" name="gDistHW.do.Vacuum"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="PICKUP_TIMER_DELAY"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<coil type="set" name="PickupDone"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="PickupDone"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="PUCKPOS_GRIPPED_AT_TRAY"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="PuckPosition"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainAutoStep.DIST_SWIVEL_TO_CONV"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainAutoStep.DIST_SWIVEL_PICKUP"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="PickupDone"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="positive transition" name="MainAutoStep.DIST_SWIVEL_TO_CONV"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="ModeSwitched"/>
			<coil type="set" name="MainMode.Manual"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="ModeSwitched" or="true"/>
			<coil type="reset" name="MainMode.Auto"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="8" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="open" name="MainAutoStep.DIST_SWIVEL_TO_CONV"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="PUCKPOS_IN_SWIVEL"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="PuckPosition"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.SwDrToConv"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.SwDrConvPos"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="PUCKPOS_GRIPPED_AT_TRAY"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="PuckPosition"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.SwDrToConv"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainAutoStep.DIST_SWIVEL_DROP"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainAutoStep.DIST_SWIVEL_TO_CONV"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="positive transition" name="MainAutoStep.DIST_SWIVEL_DROP"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="ModeSwitched"/>
			<coil type="set" name="MainMode.Manual"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="ModeSwitched" or="true"/>
			<coil type="reset" name="MainMode.Auto"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="9" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="open" name="MainAutoStep.DIST_SWIVEL_DROP"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.EjImpulse"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty/>
			<functionblock position="header" name="DropoffTimer" type="TON"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.do.EjImpulse"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<coil type="reset" name="gDistHW.do.EjImpulse"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="DROPOFF_TIMER_DELAY"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<coil type="set" name="DropDone"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="DropDone"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="PUCKPOS_CONV_START"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="PuckPosition"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainAutoStep.DIST_SWIVEL_TO_MAG"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainAutoStep.DIST_SWIVEL_DROP"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="DropDone"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="positive transition" name="MainAutoStep.DIST_SWIVEL_TO_MAG"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="ModeSwitched"/>
			<coil type="set" name="MainMode.Manual"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="ModeSwitched" or="true"/>
			<coil type="reset" name="MainMode.Auto"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="open" name="MainAutoStep.DIST_SWIVEL_TO_MAG"/>
			<line/>
			<coil type="set" name="gDistHW.do.SwDrToMag"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.SwDrMagPos"/>
			<coil type="reset" name="gDistHW.do.SwDrToMag"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="MainAutoStep.DIST_CONV_START"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="MainAutoStep.DIST_SWIVEL_TO_MAG"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="positive transition" name="MainAutoStep.DIST_CONV_START"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="ModeSwitched"/>
			<coil type="set" name="MainMode.Manual"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="ModeSwitched" or="true"/>
			<coil type="reset" name="MainMode.Auto"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="open" name="MainAutoStep.DIST_CONV_START"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="1"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="OpcUaComm[5]"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="PUCKPOS_CONV_MID"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="PuckPosition"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MpAxisBasic_0.MoveVelocity"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainAutoStep.DIST_CONV_MOVING"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainAutoStep.DIST_CONV_START"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="positive transition" name="MainAutoStep.DIST_CONV_MOVING"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="ModeSwitched"/>
			<coil type="set" name="MainMode.Manual"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="ModeSwitched" or="true"/>
			<coil type="reset" name="MainMode.Auto"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="open" name="MainAutoStep.DIST_CONV_MOVING"/>
			<contact type="open" name="gDistHW.di.PuckAtConvEnd"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="PUCKPOS_CONV_END"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="PuckPosition"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="negative transition" name="gDistHW.di.PuckAtConvEnd"/>
			<line/>
			<line/>
			<coil type="reset" name="MpAxisBasic_0.MoveVelocity"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="MainAutoStep.DIST_WAIT"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="MainAutoStep.DIST_CONV_MOVING"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="positive transition" name="MainAutoStep.DIST_WAIT"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="ModeSwitched"/>
			<coil type="set" name="MainMode.Manual"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="ModeSwitched" or="true"/>
			<coil type="reset" name="MainMode.Auto"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="9" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="open" name="MainAutoStep.DIST_WAIT"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="OpcUaComm[5]"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="SortStateSet"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="bottom" type="Compare!"><input name="&lt;!OpcUaComm[6] = 1"/></function>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="negative transition" name="SortStateSet"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="PUCKPOS_IN_MAG"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="PuckPosition"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainAutoStep.DIST_SWIVEL_TO_HOME"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainAutoStep.DIST_WAIT"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="positive transition" name="MainAutoStep.DIST_SWIVEL_TO_HOME"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="ModeSwitched"/>
			<coil type="set" name="MainMode.Manual"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="ModeSwitched" or="true"/>
			<coil type="reset" name="MainMode.Auto"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="MainMode.Auto"/>
			<contact type="open" name="MainAutoStep.DIST_SWIVEL_TO_HOME"/>
			<line/>
			<coil type="set" name="gDistHW.do.SwDrToConv"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.SwDrConvPos"/>
			<coil type="reset" name="gDistHW.do.SwDrToConv"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="MainAutoStep.DIST_EXTEND_EJECTOR"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="MainAutoStep.DIST_SWIVEL_TO_HOME"/>
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
			<empty/>
			<empty/>
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
			<empty/>
			<empty/>
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
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="JogPositive"/><output name="MoveActive"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
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
	<network label="" comment="" row="12" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.Ejector.Extend"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.Ejector.Extend"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="CmpPuckInTray"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="CmpPuckInTray" or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="bottom" type="Compare!"><input name="&lt;!PuckPosition = PUCKPOS_IN_TRAY"/></function>
			<analog type="input" name="EJECTOR_EXTEND_PUCK_IN_TRAY"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.SwDrMagPos"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="EJECTOR_EXTEND_SWIVEL_IN_TRAY"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.EjCylExtended"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="EJECTOR_EXTEND_ALREADY_IN_POS"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="CmpPuckInTray"/>
			<contact type="closed" name="gDistHW.di.EjCylExtended"/>
			<contact type="closed" name="gDistHW.di.SwDrMagPos"/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.EjCylPushProduct"/>
		</row>
	</network>
	<network label="" comment="" row="6" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.Ejector.Retract"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.Ejector.Retract"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.EjCylRetracted"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="EJECTOR_RETRACT_ALREADY_IN_POS"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="gDistHW.di.EjCylRetracted"/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.EjCylPushProduct"/>
		</row>
	</network>
	<network label="" comment="" row="13" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.SwivelArm.MoveToMagazine"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.MoveToMagazine"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="CmpPuckInSwivel"/>
			<function position="top" type="OR"><input name="" extensible="true"/><output name="40"/></function>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="CmpPuckInSwivel"/>
			<function position="middle" type="OR" or="true"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="bottom" type="Compare!"><input name="&lt;!PuckPosition = PUCKPOS_IN_SWIVEL"/></function>
			<empty/>
			<function position="middle" type="OR"/>
			<analog type="input" name="SWIVEL_MOVE_MAG_HOLDING_PUCK"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="CmpPuckGrippedAtConv"/>
			<function position="bottom" type="OR"><input name="" extensible="true"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="CmpPuckGrippedAtConv"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="bottom" type="Compare!"><input name="&lt;!PuckPosition = PUCKPOS_GRIPPED_AT_TRAY"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.SwDrMagPos"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="SWIVEL_TO_MAG_ALREADY_IN_POS"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="CmpPuckInSwivel"/>
			<contact type="closed" name="CmpPuckGrippedAtConv"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.SwDrToConv"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.SwDrToMag"/>
		</row>
	</network>
	<network label="" comment="" row="10" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.SwivelArm.MoveToConveyor"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.MoveToConveyor"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.SwDrConvPos"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="SWIVEL_TO_CONV_ALREADY_IN_POS"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="CmpPuckAtConvStart"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="CmpPuckAtConvStart" or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="bottom" type="Compare!"><input name="&lt;!PuckPosition = PUCKPOS_CONV_START"/></function>
			<analog type="input" name="SWIVEL_MOVE_CONV_PUCK_CONFLICT"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="gDistHW.di.SwDrConvPos"/>
			<contact type="closed" name="CmpPuckAtConvStart"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.SwDrToMag"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.SwDrToConv"/>
		</row>
	</network>
	<network label="" comment="" row="14" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOnImpulse"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.SwDrMagPos"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="CmpPuckNotInTray"/>
			<function position="top" type="OR"><input name="" extensible="true"/><output name="40"/></function>
			<function position="top" type="OR"><input name="" extensible="true"/><output name="40"/></function>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOnImpulse"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="CmpPuckNotInTray"/>
			<function position="middle" type="OR"/>
			<function position="middle" type="OR" or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!PuckPosition &lt;&gt; PUCKPOS_IN_TRAY"/></function>
			<empty/>
			<function position="middle" type="OR"/>
			<function position="middle" type="OR" or="true"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.SwDrConvPos"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="CmpPuckNotInConvStart"/>
			<function position="bottom" type="OR"><input name="" extensible="true"/></function>
			<function position="middle" type="OR"/>
			<analog type="input" name="SWIVEL_VAC_ON_NO_PRODUCT"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="CmpPuckNotInConvStart"/>
			<empty/>
			<empty/>
			<function position="middle" type="OR"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!PuckPosition &lt;&gt; PUCKPOS_CONV_START"/></function>
			<empty/>
			<empty/>
			<empty/>
			<function position="middle" type="OR"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="gDistHW.di.SwDrConvPos"/>
			<contact type="closed" name="gDistHW.di.SwDrMagPos"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<function position="bottom" type="OR"><input name="" extensible="true"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="CmpPuckNotInTray"/>
			<contact type="closed" name="CmpPuckNotInConvStart"/>
			<contact type="open" name="gDistHW.di.SwDrConvPos"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="PickupDone"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.SwDrMagPos" or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.Vacuum"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty/>
			<functionblock position="header" name="ManualPickupTimer" type="TON"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.do.Vacuum"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOnImpulse"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="PICKUP_TIMER_DELAY"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="gDistHW.do.Vacuum"/>
		</row>
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
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="PickupDone"/>
		</row>
	</network>
	<network label="" comment="" row="10" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOffImpulse"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<contact type="open" name="CmpPuckInTransit"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="CmpPuckInTransit" or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="bottom" type="Compare!"><input name="&lt;!PuckPosition = PUCKPOS_IN_SWIVEL"/></function>
			<analog type="input" name="SWIVEL_VAC_OFF_PUCK_IN_TRANSIT"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="CmpPuckInTransit"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="DropDone"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="gDistHW.do.EjImpulse"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty/>
			<functionblock position="header" name="ManualDropoffTimer" type="TON"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.do.EjImpulse"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<coil type="reset" name="MainCtrl.Input.Cmd.SwivelArm.VacuumOffImpulse"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="DROPOFF_TIMER_DELAY"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<coil type="reset" name="gDistHW.do.EjImpulse"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="DropDone"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.Conveyor.JogFwd"/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty or="true"/>
			<coil type="open" name="MpAxisBasic_0.JogPositive"/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="MainCtrl.Input.Cmd.Conveyor.JogBack"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!MainCtrl.Input.Par.Mode = DISTCTRL_MANUAL"/></function>
			<empty or="true"/>
			<contact type="closed" name="gDistHW.di.ConvStartVacant"/>
			<line/>
			<line/>
			<coil type="set" name="MainCtrl.Output.CommandRejected"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="CONV_JOG_BACK_PUCK_AT_START"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MainCtrl.Output.RejectionCode"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="gDistHW.di.ConvStartVacant"/>
			<line/>
			<line/>
			<coil type="open" name="MpAxisBasic_0.JogNegative"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="SetAlarm"/>
			<function position="top" type="MpAlarmXSet"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="gAlarmXCore_Dist"/>
			<function position="middle" type="MpAlarmXSet"><input name="MpLink"/><output name="7"/></function>
			<analog type="output" name="DummyDint"/>
		</row>
		<row>
			<analog type="input" name="'Swivel Arm - Motion Blocked'"/>
			<function position="bottom" type="MpAlarmXSet"><input name="Name"/></function>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM








