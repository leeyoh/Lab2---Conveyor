ACTION AxisBasic: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="MpAxisBasicConveyor.Active"/>
			<contact type="closed" name="MpAxisBasicConveyor.PowerOn"/>
			<contact type="open" name="MpAxisBasicConveyor.Info.ReadyToPowerOn"/>
			<coil type="set" name="MpAxisBasicConveyor.Power"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="MpAxisBasicConveyor.IsHomed"/>
			<contact type="open" name="MpAxisBasicConveyor.PowerOn"/>
			<line/>
			<coil type="set" name="MpAxisBasicConveyor.Home"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="MpAxisBasicConveyor.IsHomed"/>
			<line/>
			<line/>
			<coil type="reset" name="MpAxisBasicConveyor.Home"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="MpAxisBasicConveyor.Error"/>
			<line/>
			<line/>
			<coil type="reset" name="MpAxisBasicConveyor.Power"/>
		</row>
	</network>
	<network label="" comment="" row="6" column="0" commented="0">
		<row>
			<contact type="open" name="MpAxisBasicConveyor.ErrorReset"/>
			<line/>
			<line/>
			<coil type="reset" name="MpAxisBasicConveyor.MoveAdditive"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="MpAxisBasicConveyor.MoveVelocity"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="MpAxisBasicConveyor.MoveAdditive"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="MpAxisBasicConveyor.JogNegative"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="MpAxisBasicConveyor.JogPositive"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="MpAxisBasicConveyor.Active"/>
			<line/>
			<coil type="set" name="MpAxisBasicConveyor.Power"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="MpAxisBasicConveyor.ErrorReset"/>
			<contact type="closed" name="MpAxisBasicConveyor.Error"/>
			<line/>
			<coil type="reset" name="MpAxisBasicConveyor.ErrorReset"/>
		</row>
	</network>
	<network label="" comment="" row="21" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="MpAxisBasicConveyor" type="MpAxisBasic"/>
			<empty/>
		</row>
		<row>
			<line/>
			<line/>
			<functionblock position="top" type="MpAxisBasic"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAxisBasic"/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MpLink" vardynamic="true"/><output name="Active" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<line/>
			<line/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Enable"/><output name="Error" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="ErrorReset"/><output name="StatusID" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="ConveyorParam"/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Parameters" vardynamic="true"/><output name="UpdateDone" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Update"/><output name="Position" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAxisSort"/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Axis"/><output name="Velocity" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Power"/><output name="CommandBusy" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Home"/><output name="CommandAborted" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MoveVelocity"/><output name="PowerOn" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MoveAbsolute"/><output name="IsHomed" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MoveAdditive"/><output name="InVelocity" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Stop"/><output name="InPosition" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="JogPositive"/><output name="MoveActive" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="JogNegative"/><output name="Stopped" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Autotune"/><output name="TuningDone" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Simulate"/><output name="Simulation" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="TorqueLimit"/><output name="TorqueLimited" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="ReleaseBrake"/><output name="BrakeReleased" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="bottom" type="MpAxisBasic"><output name="Info" ENO="true"/></functionblock>
			<empty/>
		</row>
	</network>
</networks>
END_ACTION








