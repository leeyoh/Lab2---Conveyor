ACTION Collector: 
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Output.Status.ProductAvailable"/>
			<contact type="open" name="Sorter.Output.Status.ProductNotBlack"/>
			<contact type="open" name="Sorter.Output.Status.MetallicProduct"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<analog type="input" name="METALLIC"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.NewPuck"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Output.Status.ProductAvailable"/>
			<contact type="closed" name="Sorter.Output.Status.ProductNotBlack"/>
			<contact type="closed" name="Sorter.Output.Status.MetallicProduct"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<analog type="input" name="BLACK"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.NewPuck"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Output.Status.ProductAvailable"/>
			<contact type="open" name="Sorter.Output.Status.ProductNotBlack"/>
			<contact type="closed" name="Sorter.Output.Status.MetallicProduct"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<analog type="input" name="RED"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.NewPuck"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="closed" name="Sorter.Output.Status.ProductAvailable"/>
			<contact type="closed" name="Sorter.Output.Status.ProductNotBlack"/>
			<contact type="closed" name="Sorter.Output.Status.MetallicProduct"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<analog type="input" name="NONE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.NewPuck"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="positive transition" name="Sorter.Input.CMD.RetractStopper"/>
			<line/>
			<line/>
			<coil type="set" name="Sorter.Output.Status.Occupied"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="positive transition" name="Sorter.Output.Status.LaneFull"/>
			<line/>
			<line/>
			<coil type="reset" name="Sorter.Output.Status.Occupied"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="positive transition" name="Sorter.Input.CMD.RetractStopper"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="Sorter.NewPuck"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.CurrentPuck"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Output.Status.Switch1Extended"/>
			<contact type="positive transition" name="Sorter.Output.Status.LaneFull"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line/>
			<line/>
			<function position="top" type="ADD"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="Sorter.CurrentPuck"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.Slot[Sorter.SlotIndex.Left].Left"/>
			<analog type="input" name="Sorter.SlotIndex.Left"/>
			<function position="middle" type="ADD"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.SlotIndex.Left"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="1"/>
			<function position="bottom" type="ADD"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="closed" name="Sorter.Output.Status.Switch1Extended"/>
			<contact type="open" name="Sorter.Output.Status.Switch2Extended"/>
			<contact type="positive transition" name="Sorter.Output.Status.LaneFull"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line/>
			<line/>
			<function position="top" type="ADD"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<analog type="input" name="Sorter.CurrentPuck"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.Slot[Sorter.SlotIndex.Middle].Middle"/>
			<analog type="input" name="Sorter.SlotIndex.Middle"/>
			<function position="middle" type="ADD"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.SlotIndex.Middle"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="1"/>
			<function position="bottom" type="ADD"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="closed" name="Sorter.Output.Status.Switch1Extended"/>
			<contact type="closed" name="Sorter.Output.Status.Switch2Extended"/>
			<contact type="positive transition" name="Sorter.Output.Status.LaneFull"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line/>
			<line/>
			<function position="top" type="ADD"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<analog type="input" name="Sorter.CurrentPuck"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.Slot[Sorter.SlotIndex.Right].Right"/>
			<analog type="input" name="Sorter.SlotIndex.Right"/>
			<function position="middle" type="ADD"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.SlotIndex.Right"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="1"/>
			<function position="bottom" type="ADD"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="positive transition" name="Sorter.Output.Status.LaneFull"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="NONE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="Sorter.CurrentPuck"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="GE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="Sorter.SlotIndex.Left"/>
			<function position="middle" type="GE"><input name="IN1" extensible="true"/><output name="1" ENO="true"/></function>
			<analog type="output" name="Sorter.Output.Status.SlotFull[0]"/>
		</row>
		<row>
			<analog type="input" name="4"/>
			<function position="bottom" type="GE"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="GE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="Sorter.SlotIndex.Middle"/>
			<function position="middle" type="GE"><input name="IN1" extensible="true"/><output name="1" ENO="true"/></function>
			<analog type="output" name="Sorter.Output.Status.SlotFull[1]"/>
		</row>
		<row>
			<analog type="input" name="4"/>
			<function position="bottom" type="GE"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="GE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="Sorter.SlotIndex.Right"/>
			<function position="middle" type="GE"><input name="IN1" extensible="true"/><output name="1" ENO="true"/></function>
			<analog type="output" name="Sorter.Output.Status.SlotFull[2]"/>
		</row>
		<row>
			<analog type="input" name="4"/>
			<function position="bottom" type="GE"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="10" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Reset"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="NONE"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Sorter.Slot[0].Left"/>
		</row>
		<row>
			<analog type="input" name="NONE"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Slot[1].Left"/>
		</row>
		<row>
			<analog type="input" name="NONE"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Slot[2].Left"/>
		</row>
		<row>
			<analog type="input" name="NONE"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Slot[0].Middle"/>
		</row>
		<row>
			<analog type="input" name="NONE"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Slot[1].Middle"/>
		</row>
		<row>
			<analog type="input" name="NONE"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Slot[2].Middle"/>
		</row>
		<row>
			<analog type="input" name="NONE"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Slot[0].Right"/>
		</row>
		<row>
			<analog type="input" name="NONE"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.Slot[1].Right"/>
		</row>
		<row>
			<analog type="input" name="NONE"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="56" ENO="true"/></function>
			<analog type="output" name="Sorter.Slot[2].Right"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="Sorter.Reset"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="0"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="Sorter.SlotIndex.Left"/>
		</row>
		<row>
			<analog type="input" name="0"/>
			<function position="middle" type="MOVE"><input name="" extensible="true"/><output name="56"/></function>
			<analog type="output" name="Sorter.SlotIndex.Right"/>
		</row>
		<row>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="56" ENO="true"/></function>
			<analog type="output" name="Sorter.SlotIndex.Middle"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Sorter.Reset"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<coil type="reset" name="Station.Reset"/>
		</row>
	</network>
</networks>
END_ACTION









