import mods.nei.NEI;

var iron = <ore:ingotIron>;
var ironBlock = <ore:blockIron>;
var steel = <ore:ingotSteel>;
var stone = <ore:stone>;
var wood = <ore:logWood>;
var mfurnace = <minecraft:furnace>;
var chest = <minecraft:chest>;
var diamond = <ore:gemDiamond>;
var lapis = <minecraft:dye:4>;
var drillIron = <StevesCarts:CartModule:42>;
var drillDiamond = <StevesCarts:CartModule:8>;
var sawDiamond = <ForgeMicroblock:sawDiamond>;
var quarryPick = <StevesCarts:CartModule:8>;
var glass = <ore:blockGlass>;
var requirePower = <ThermalExpansion:material:1>;
var noPower = <ThermalExpansion:material>;
var ironBlade = <StevesCarts:ModuleComponents:83>;
var osCompressor = <Mekanism:MachineBlock:1>;
var elCompressor = <PneumaticCraft:electrostaticCompressor>;
var tesframe = <ThermalExpansion:Frame:7>;
var unstableBlock = <ExtraUtilities:etherealglass>;
var trans = <EnderIO:blockHyperCube>;
var obby = <Mekanism:Ingot>;
var stick = <ore:stickWood>;
var brass = <ore:ingotBrass>;
var silk = <Forestry:craftingMaterial:2>;
var endersilk = <ExtraUtilities:enderQuarryUpgrade:2>;
var frame = <JAKJ_RedstoneInMotion:tile.JAKJ_RedstoneInMotion_Carriage>;
var frame1 = <JAKJ_RedstoneInMotion:tile.JAKJ_RedstoneInMotion_Carriage:1>;
var frame2 = <JAKJ_RedstoneInMotion:tile.JAKJ_RedstoneInMotion_Carriage:2>;
var frame3 = <JAKJ_RedstoneInMotion:tile.JAKJ_RedstoneInMotion_Carriage:3>;
var frame4 = <JAKJ_RedstoneInMotion:tile.JAKJ_RedstoneInMotion_Carriage:4>;
var carriageMotor = <JAKJ_RedstoneInMotion:tile.JAKJ_RedstoneInMotion_CarriageDrive:1>;
var carriageAdapter = <JAKJ_RedstoneInMotion:tile.JAKJ_RedstoneInMotion_CarriageDrive:5>;
var rawPlastic = <MineFactoryReloaded:item.mfr.plastic.raw>;
var seeds = <minecraft:wheat_seeds>;
var ci = <ore:ingotIronCompressed>;
var circuit = <PneumaticCraft:printedCircuitBoard>;
var pcb = <PneumaticCraft:unassembledPCB>;


<ore:lakotaShardIron>.add(<factorization:ore/crystal>);
<ore:lakotaShardGold>.add(<factorization:ore/crystal:1>);
<ore:lakotaShardIron>.add(<Mekanism:Shard>);
<ore:lakotaShardGold>.add(<Mekanism:Shard:1>);
<ore:requirePower>.add(requirePower);
<ore:bcgate>.add(<Mekanism:ControlCircuit:1>);
<ore:gearIron>.add(<Railcraft:part.gear:1>);
<ore:gearSteel>.add(<Railcraft:part.gear:2>);





#shinyingot = osmium ingot = platinum
<ore:ingotPlatinum>.add(<Mekanism:Ingot:1>);
<ore:ingotOsmium>.add(<ThermalFoundation:material:69>);

<Mekanism:Ingot:1>.displayName = "Platinum Ingot";
<ThermalFoundation:material:69>.displayName = "Platinum Ingot";
#shinydust = osmiumdust
<ore:dustPlatinum>.add(<Mekanism:Dust:2>);
<ore:dustOsmium>.add(<ThermalFoundation:material:37>);

<Mekanism:Dust:2>.displayName = "Platinum Dust";
<ThermalFoundation:material:37>.displayName = "Platinum Dust";

<ore:blockPlatinum>.add(<Mekanism:BasicBlock>);
<ore:blockOsmium>.add(<ThermalFoundation:Storage:5>);

<ThermalFoundation:material:101>.displayName = "Platinum Nugget";
<ThermalFoundation:material:133>.displayName = "Platinum Gear";
<ThermalFoundation:Ore:5>.displayName = "Platinum Ore";
<Mekanism:OreBlock>.displayName = "Platinum Ore";
NEI.overrideName(<ThermalFoundation:Ore:5>,"Platinum Ore");

recipes.remove(<Mekanism:BasicBlock>);

<ThermalFoundation:Storage:5>.displayName = "Platinum Block";
<Mekanism:BasicBlock>.displayName = "Platinum Block";
NEI.overrideName(<ThermalFoundation:Storage:5>,"Platinum Block");

<TConstruct:buckets:20>.displayName = "Molten Platinum Bucket";
<IguanaTweaksTConstruct:clayBucketsTinkers:20>.displayName = "Molten Platinum Clay Bucket";
<TConstruct:fluid.molten.shiny>.displayName = "Molten Platinum";


# switching for when oredict doesn't work
recipes.addShaped(<Mekanism:Ingot:1> *2,[[<ThermalFoundation:material:69>],[<ThermalFoundation:material:69>]]);
recipes.addShaped(<ThermalFoundation:material:69> *2,[[<Mekanism:Ingot:1>],[<Mekanism:Ingot:1>]]);

# Electrolytic takes iron and gold crystal
recipes.remove(<Mekanism:ElectrolyticCore>);
recipes.addShaped(<Mekanism:ElectrolyticCore>,[[<Mekanism:EnrichedAlloy>,<ore:dustOsmium>,<Mekanism:EnrichedAlloy>],[<ore:lakotaShardIron>,<Mekanism:EnrichedAlloy>,<ore:lakotaShardGold>],[<Mekanism:EnrichedAlloy>,<ore:dustOsmium>,<Mekanism:EnrichedAlloy>]]);


#Harvester needs obsidian axe
recipes.remove(<MineFactoryReloaded:tile.mfr.machine.0:2>);
recipes.addShaped(<MineFactoryReloaded:tile.mfr.machine.0:2>,[[<MineFactoryReloaded:item.mfr.plastic.sheet>,<MekanismTools:ObsidianAxe>,<MineFactoryReloaded:item.mfr.plastic.sheet>],[<minecraft:shears>,<ThermalExpansion:Frame>,<minecraft:shears>],[<ore:gearGold>,requirePower,<ore:gearGold>]]);

#Auto-Spawner needs cursed earth
recipes.remove(<MineFactoryReloaded:tile.mfr.machine.1:9>);
recipes.addShaped(<MineFactoryReloaded:tile.mfr.machine.1:9>,[[<MineFactoryReloaded:item.mfr.plastic.sheet>,<ExtraUtilities:cursedearthside>,<MineFactoryReloaded:item.mfr.plastic.sheet>],[<minecraft:magma_cream>,<ThermalExpansion:Frame>,<minecraft:magma_cream>],[<ore:gemEmerald>,requirePower,<ore:gemEmerald>]]);

#grinder needs etherial sword
recipes.remove(<MineFactoryReloaded:tile.mfr.machine.0:13>);
recipes.addShaped(<MineFactoryReloaded:tile.mfr.machine.0:13>,[[<MineFactoryReloaded:item.mfr.plastic.sheet>,<ExtraUtilities:ethericsword>,<MineFactoryReloaded:item.mfr.plastic.sheet>],[<minecraft:book>,<ThermalExpansion:Frame>,<minecraft:book>],[<ore:gearTin>,requirePower,<ore:gearTin>]]);

#sag needs iron crystals
recipes.remove(<EnderIO:blockSagMill>);
recipes.addShaped(<EnderIO:blockSagMill>,[[<ore:lakotaShardIron>,<ore:lakotaShardIron>,<ore:lakotaShardIron>],[iron,<ThermalExpansion:Frame>,iron],[iron,requirePower,iron]]);

#TE requires steel
recipes.remove(<ThermalExpansion:Frame>);
recipes.addShaped(<ThermalExpansion:Frame>,[[steel,glass,steel],[glass,<ore:gearTin>,glass],[steel,glass,steel]]);

#blast furnace with invar
recipes.remove(<Railcraft:tile.railcraft.machine.alpha:12>);
#recipes.addShaped(<Railcraft:tile.railcraft.machine.alpha:12>*4,[[null,<TConstruct:Smeltery:2>,null],[<TConstruct:Smeltery:2>,<TConstruct:buckets:21>.transformReplace(<minecraft:bucket>),<TConstruct:Smeltery:2>],[null,<TConstruct:Smeltery:2>,null]]);
mods.tconstruct.Casting.addBasinRecipe(<Railcraft:tile.railcraft.machine.alpha:12>, <liquid:invar.molten> * 72, <TConstruct:Smeltery:2>, true, 20);

#easier rails
recipes.remove(<Railcraft:part.tie>);
mods.tconstruct.Casting.addBasinRecipe(<Railcraft:part.tie>, <liquid:creosote> * 250, <minecraft:stick>, true, 20);



#remove rubber to plastic
recipes.remove(<MineFactoryReloaded:item.mfr.plastic.sheet>);
var HDPE = <Mekanism:Polyethene:2>;
recipes.addShaped(<MineFactoryReloaded:item.mfr.plastic.sheet>,[[HDPE,HDPE],[HDPE,HDPE]]);

#osmium compressor requires electrostatic compressor
recipes.remove(osCompressor);
recipes.addShaped(osCompressor,[[<Mekanism:EnrichedAlloy>,<Mekanism:ControlCircuit:1>,<Mekanism:EnrichedAlloy>],[elCompressor,<Mekanism:BasicBlock:8>,elCompressor],[<Mekanism:EnrichedAlloy>,<Mekanism:ControlCircuit:1>,<Mekanism:EnrichedAlloy>]]);

recipes.remove(tesframe);
recipes.addShaped(tesframe,[[<ore:ingotEnderium>,unstableBlock,<ore:ingotEnderium>],[unstableBlock,trans,unstableBlock],[<ore:ingotEnderium>,unstableBlock,<ore:ingotEnderium>]]);

recipes.remove(trans);
recipes.addShaped(trans,[[obby,<minecraft:ender_eye>,obby],[<ore:ingotEnderium>,<ore:gemDiamond>,<ore:ingotEnderium>],[obby,<EnderIO:itemBasicCapacitor:2>,obby]]);

recipes.remove(<TConstruct:materials:25>);
recipes.addShaped(<TConstruct:materials:25>,[[silk,silk,silk],[silk,brass,silk],[silk,silk,silk]]);
#recipes.addShaped(<TConstruct:materials:25>,[[silk,silk,silk],[silk,<ore:ingotGold>,silk],[silk,silk,silk]]);

recipes.remove(<EnderTech:endertech.exchanger:1>);
recipes.addShaped(<EnderTech:endertech.exchanger:1>,[[null,<minecraft:ender_eye>,null],[<ore:ingotElectrum>,<ore:gemDiamond>,<ore:ingotElectrum>],[null,<ThermalExpansion:capacitor:4>,null]]);

recipes.remove(<EnderTech:endertech.exchanger:2>);
recipes.addShaped(<EnderTech:endertech.exchanger:2>,[[null,<minecraft:ender_eye>,null],[<ore:ingotEnderium>,<ore:gemDiamond>,<ore:ingotEnderium>],[null,<ThermalExpansion:capacitor:5>,null]]);

recipes.remove(<TConstruct:ToolForgeBlock>);
recipes.remove(<TConstruct:ToolForgeBlock:1>);
recipes.remove(<TConstruct:ToolForgeBlock:2>);
recipes.remove(<TConstruct:ToolForgeBlock:3>);
recipes.remove(<TConstruct:ToolForgeBlock:4>);
recipes.remove(<TConstruct:ToolForgeBlock:5>);
recipes.remove(<TConstruct:ToolForgeBlock:6>);
recipes.remove(<TConstruct:ToolForgeBlock:7>);
recipes.remove(<TConstruct:ToolForgeBlock:8>);
recipes.remove(<TConstruct:ToolForgeBlock:9>);
recipes.remove(<TConstruct:ToolForgeBlock:10>);
recipes.remove(<TConstruct:ToolForgeBlock:11>);
recipes.remove(<TConstruct:ToolForgeBlock:12>);

NEI.hide(<TConstruct:ToolForgeBlock>);
NEI.hide(<TConstruct:ToolForgeBlock:1>);
NEI.hide(<TConstruct:ToolForgeBlock:2>);
NEI.hide(<TConstruct:ToolForgeBlock:3>);
NEI.hide(<TConstruct:ToolForgeBlock:4>);
NEI.hide(<TConstruct:ToolForgeBlock:5>);
NEI.hide(<TConstruct:ToolForgeBlock:6>);
NEI.hide(<TConstruct:ToolForgeBlock:7>);
NEI.hide(<TConstruct:ToolForgeBlock:8>);
NEI.hide(<TConstruct:ToolForgeBlock:9>);
NEI.hide(<TConstruct:ToolForgeBlock:10>);
NEI.hide(<TConstruct:ToolForgeBlock:11>);
NEI.hide(<TConstruct:ToolForgeBlock:12>);

recipes.remove(<TConstruct:CraftingSlab:5>);
recipes.addShapeless(<TConstruct:CraftingSlab:5>,[<TConstruct:ToolForgeBlock:13>]);



recipes.remove(<progressiveautomation:MinerDiamond>);
recipes.addShaped(<progressiveautomation:MinerDiamond>,[[diamond,diamond,diamond],[diamond,mfurnace,diamond],[diamond,<ore:gearEnderium>,diamond]]);
recipes.remove(<progressiveautomation:MinerIron>);
recipes.remove(<progressiveautomation:MinerStone>);
recipes.remove(<progressiveautomation:Miner>);
NEI.hide(<progressiveautomation:MinerIron>);
NEI.hide(<progressiveautomation:MinerStone>);
NEI.hide(<progressiveautomation:Miner>);

recipes.remove(<progressiveautomation:ChopperDiamond>);
recipes.addShaped(<progressiveautomation:ChopperDiamond>,[[diamond,diamond,diamond],[diamond,<progressiveautomation:ChopperIron>,diamond],[diamond,<ore:gearEnderium>,diamond]]);
recipes.remove(<progressiveautomation:ChopperIron>);
recipes.addShaped(<progressiveautomation:ChopperIron>,[[iron,ironBlock,iron],[iron,mfurnace,iron],[iron,<ore:gearSignalum>,iron]]);
recipes.remove(<progressiveautomation:ChopperStone>);
recipes.remove(<progressiveautomation:Chopper>);
NEI.hide(<progressiveautomation:ChopperStone>);
NEI.hide(<progressiveautomation:Chopper>);

recipes.remove(<progressiveautomation:PlanterDiamond>);
recipes.addShaped(<progressiveautomation:PlanterDiamond>,[[diamond,diamond,diamond],[diamond,<progressiveautomation:PlanterIron>,diamond],[diamond,<ore:gearEnderium>,diamond]]);
recipes.remove(<progressiveautomation:PlanterIron>);
recipes.addShaped(<progressiveautomation:PlanterIron>,[[iron,ironBlock,iron],[iron,<progressiveautomation:PlanterStone>,iron],[iron,<ore:gearSignalum>,iron]]);
recipes.remove(<progressiveautomation:PlanterStone>);
recipes.addShaped(<progressiveautomation:PlanterStone>,[[stone,stone,stone],[stone,mfurnace,stone],[stone,<ore:gearElectrum>,stone]]);
recipes.remove(<progressiveautomation:Planter>);
NEI.hide(<progressiveautomation:Planter>);

mods.tconstruct.Smeltery.removeAlloy(<liquid:obsidian.molten> * 288);
mods.tconstruct.Smeltery.removeAlloy(<liquid:steel.molten> * 288);
#mods.tconstruct.Smeltery.removeMelting(<minecraft:obsidian>);
#mods.tconstruct.Smeltery.removeMelting(<Railcraft:dust>);
#mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:4>);
#mods.tconstruct.Smeltery.removeMelting(<Mekanism:DirtyDust:6>);
#mods.tconstruct.Smeltery.removeMelting(<minecraft:enchanting_table>);

<JAKJ_RedstoneInMotion_HollowCarriages:Hollow carriage>.displayName = "Hollow Carriage";
recipes.remove(frame);
recipes.addShaped(frame,[[stick,stick,stick],[stick,brass,stick],[stick,stick,stick]]);
recipes.remove(frame1);
recipes.addShapeless(frame1 * 8,[frame,frame,frame,frame,frame,frame,frame,frame,<ore:dyeLime>]);
recipes.remove(frame2);
recipes.addShapeless(frame2 * 8,[frame,frame,frame,frame,frame,frame,frame,frame,<ore:dyeYellow>]);
recipes.remove(frame3);
recipes.addShapeless(frame3 * 8,[frame,frame,frame,frame,frame,frame,frame,frame,<ore:dyeBlue>]);
recipes.remove(frame4);
recipes.addShapeless(frame4 * 8,[frame,frame,frame,frame,frame,frame,frame,frame,<ore:dyePurple>]);
recipes.remove(carriageAdapter);
recipes.addShapeless(carriageAdapter,[carriageMotor, frame]);
recipes.remove(<JAKJ_RedstoneInMotion:item.JAKJ_RedstoneInMotion_SimpleItemSet:*>);
NEI.hide(<JAKJ_RedstoneInMotion:item.JAKJ_RedstoneInMotion_SimpleItemSet:*>);


recipes.addShapeless(<PneumaticCraft:plasticPlant>, [rawPlastic,seeds,<ore:dyeBlack>,<ore:fz.waterBucketLike>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:1>, [rawPlastic,seeds,<ore:dyeRed>,<ore:dustSulfur>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:2>, [rawPlastic,seeds,<ore:dyeGreen>,<minecraft:gunpowder>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:3>, [rawPlastic,seeds,<ore:dyeBrown>,<ore:slimeball>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:4>, [rawPlastic,seeds,<ore:dyeBlue>,<ore:fz.waterBucketLike>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:5>, [rawPlastic,seeds,<ore:dyePurple>,<minecraft:end_stone>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:6>, [rawPlastic,seeds,<ore:dyeCyan>,<ore:dustIron>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:8>, [rawPlastic,seeds,<ore:dyeGray>,<minecraft:gunpowder>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:9>, [rawPlastic,seeds,<ore:dyePink>,<minecraft:potion:16>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:10>, [rawPlastic,seeds,<ore:dyeLime>,<ore:itemRubber>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:11>, [rawPlastic,seeds,<ore:dyeYellow>,<ore:dustGlowstone>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:12>, [rawPlastic,seeds,<ore:dyeLightBlue>,<minecraft:arrow>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:14>, [rawPlastic,seeds,<ore:dyeOrange>,<minecraft:sugar>]);
recipes.addShapeless(<PneumaticCraft:plasticPlant:15>, [rawPlastic,seeds,<ore:dyeWhite>,<minecraft:feather>]);

mods.mekanism.Crusher.addRecipe(<PneumaticCraft:plasticPlant:11>,<minecraft:glowstone_dust>);
mods.mekanism.Crusher.addRecipe(<PneumaticCraft:plasticPlant:2>,<minecraft:gunpowder>);
mods.mekanism.Enrichment.addRecipe(<PneumaticCraft:plasticPlant:14>,<minecraft:sugar>);
mods.mekanism.Enrichment.addRecipe(<PneumaticCraft:plasticPlant:15>,<minecraft:feather>);

recipes.addShaped(<PneumaticCraft:kineticCompressor>,[[<ore:bcgate>,<ore:gearGold>,circuit],[<ore:requirePower>,<PneumaticCraft:turbineRotor>, <PneumaticCraft:advancedPressureTube>,],[<ore:bcgate>,mfurnace,circuit]]);

mods.mekanism.Infuser.removeRecipe(<Mekanism:ControlCircuit>);
mods.mekanism.Infuser.addRecipe("REDSTONE",10,pcb,<Mekanism:ControlCircuit>);
mods.pneumaticcraft.Pressure.removeRecipe([<PneumaticCraft:emptyPCB:100>]);
mods.pneumaticcraft.Pressure.addRecipe([<PneumaticCraft:plastic:2>, <minecraft:gold_ingot>], 1.5, [<PneumaticCraft:emptyPCB:100>], true);
#mods.pneumaticcraft.Pressure.removeRecipe([<PneumaticCraft:emptyPCB:100>]);
mods.pneumaticcraft.Pressure.addRecipe([<PneumaticCraft:plastic>, <EnderIO:itemMaterial>], 1, [<PneumaticCraft:transistor>], true);

recipes.remove(<Metallurgy:alloyer>);
recipes.remove(<EnderIO:blockFarmStation>);
furnace.remove(<minecraft:coal:1>);
recipes.remove(<ThermalFoundation:material:41>);


