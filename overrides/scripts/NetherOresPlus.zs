// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.FurnaceManager;
import crafttweaker.api.BlastFurnaceManager;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.MCFluid;

print("STARTING NetherOresPlus.zs");

function addNetherOreSmelting(ores as IItemStack[], output as IItemStack) as void {

	for ore in ores {
		furnace.addRecipe("netherore_smelting_" + ore.registryName.path + "_" + output.registryName.path, output, ore, 1.0, 200);

		blastFurnace.addRecipe("netherore_blastfurnace_" + ore.registryName.path + "_" + output.registryName.path, output, ore, 1.0, 100);
	}
}

function addNetherOreMelting(ores as IItemStack[], liquid as IFluidStack, temperature as int, time as int) as void {

	for ore in ores {
		<recipetype:tconstruct:melting>.addMeltingRecipe("netherore_melting_" + ore.registryName.path, ore, liquid, temperature, time);
	}

}

function addStarlightInfusion(ores as IItemStack[], output as IItemStack) as void {

	for ore in ores {
		<recipetype:astralsorcery:infusion>.addRecipe("netherore_starlightinfusion_" + ore.registryName.path, output, ore, <fluid:astralsorcery:liquid_starlight>, 20, 1.0, false, true, false);
	}

}

# Nether Coal recipes
addNetherOreSmelting([<item:netheroresplus:nether_coal_ore>,<item:netheroresplus:basalt_coal_ore>,<item:netheroresplus:blackstone_coal_ore>], <item:minecraft:coal> * 2);

# Nether Iron recipes
addNetherOreSmelting([<item:netheroresplus:nether_iron_ore>,<item:netheroresplus:basalt_iron_ore>,<item:netheroresplus:blackstone_iron_ore>], <item:minecraft:iron_ingot> * 2);
addNetherOreMelting([<item:netheroresplus:nether_iron_ore>,<item:netheroresplus:basalt_iron_ore>,<item:netheroresplus:blackstone_iron_ore>], <fluid:tconstruct:molten_iron> * 432, 800, 440);
addStarlightInfusion([<item:netheroresplus:nether_iron_ore>,<item:netheroresplus:basalt_iron_ore>,<item:netheroresplus:blackstone_iron_ore>], <item:minecraft:iron_ingot> * 4);

# Nether Lapis recipes
addNetherOreSmelting([<item:netheroresplus:nether_lapis_lazuli_ore>,<item:netheroresplus:basalt_lapis_lazuli_ore>,<item:netheroresplus:blackstone_lapis_lazuli_ore>], <item:minecraft:lapis_lazuli> * 2);
addStarlightInfusion([<item:netheroresplus:nether_lapis_lazuli_ore>,<item:netheroresplus:basalt_lapis_lazuli_ore>,<item:netheroresplus:blackstone_lapis_lazuli_ore>], <item:minecraft:lapis_block> * 2);

# Nether Gold recipes
addNetherOreSmelting([<item:netheroresplus:nether_gold_ore>,<item:netheroresplus:basalt_gold_ore>,<item:netheroresplus:blackstone_gold_ore>,<item:netheroresplus:golden_nether_bricks>], <item:minecraft:gold_ingot> * 2);
addNetherOreMelting([<item:netheroresplus:nether_gold_ore>,<item:netheroresplus:basalt_gold_ore>,<item:netheroresplus:blackstone_gold_ore>,<item:netheroresplus:golden_nether_bricks>], <fluid:tconstruct:molten_gold> * 432, 700, 420);
addStarlightInfusion([<item:netheroresplus:nether_gold_ore>,<item:netheroresplus:basalt_gold_ore>,<item:netheroresplus:blackstone_gold_ore>,<item:netheroresplus:golden_nether_bricks>], <item:minecraft:gold_ingot> * 4);

# Nether Redstone recipes
addNetherOreSmelting([<item:netheroresplus:nether_redstone_ore>,<item:netheroresplus:basalt_redstone_ore>,<item:netheroresplus:blackstone_redstone_ore>], <item:minecraft:redstone> * 2);
addStarlightInfusion([<item:netheroresplus:nether_redstone_ore>,<item:netheroresplus:basalt_redstone_ore>,<item:netheroresplus:blackstone_redstone_ore>], <item:minecraft:redstone_block> * 2);

# Nether Emerald recipes
addNetherOreSmelting([<item:netheroresplus:nether_emerald_ore>,<item:netheroresplus:basalt_emerald_ore>,<item:netheroresplus:blackstone_emerald_ore>], <item:minecraft:emerald>);
addNetherOreMelting([<item:netheroresplus:nether_emerald_ore>,<item:netheroresplus:basalt_emerald_ore>,<item:netheroresplus:blackstone_emerald_ore>], <fluid:tconstruct:molten_emerald> * 432, 934, 480);
addStarlightInfusion([<item:netheroresplus:nether_emerald_ore>,<item:netheroresplus:basalt_emerald_ore>,<item:netheroresplus:blackstone_emerald_ore>], <item:minecraft:emerald> * 8);

# Nether Diamond recipes
addNetherOreSmelting([<item:netheroresplus:nether_diamond_ore>,<item:netheroresplus:basalt_diamond_ore>,<item:netheroresplus:blackstone_diamond_ore>], <item:minecraft:diamond>);
addNetherOreMelting([<item:netheroresplus:nether_diamond_ore>,<item:netheroresplus:basalt_diamond_ore>,<item:netheroresplus:blackstone_diamond_ore>], <fluid:tconstruct:molten_diamond> * 432, 1450, 580);
addStarlightInfusion([<item:netheroresplus:nether_diamond_ore>,<item:netheroresplus:basalt_diamond_ore>,<item:netheroresplus:blackstone_diamond_ore>], <item:minecraft:diamond> * 8);

print("ENDING NetherOresPlus.zs");