// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.ICollectionData;
import crafttweaker.api.data.MapData;

print("STARTING DraconicEvolution.zs");

val air = <item:minecraft:air>;

# Draconic Evolution Information Tablet
craftingTable.addShapeless("de_information_tablet", <item:draconicevolution:info_tablet>, 
	[<item:minecraft:book>,<item:draconicevolution:draconium_ingot>]
);

# Draconium Core
craftingTable.removeRecipe(<item:draconicevolution:draconium_core>);
craftingTable.addShaped("de_draconium_core", <item:draconicevolution:draconium_core> * 8, [
	[<item:draconicevolution:draconium_ingot>,<item:theabyss:glacerythe_gem>,<item:draconicevolution:draconium_ingot>],
	[<item:theabyss:glacerythe_gem>,<item:bountifulbaubles:ender_dragon_scale>,<item:theabyss:glacerythe_gem>],
	[<item:draconicevolution:draconium_ingot>,<item:theabyss:glacerythe_gem>,<item:draconicevolution:draconium_ingot>]
]);

# Wyvern Core
craftingTable.removeRecipe(<item:draconicevolution:wyvern_core>);
craftingTable.addShaped("de_wyvern_core", <item:draconicevolution:wyvern_core> * 4, [
	[<item:theabyss:ender_crystal_shard>,<item:draconicevolution:draconium_core>,<item:theabyss:ender_crystal_shard>],
	[<item:draconicevolution:draconium_core>,<item:enigmaticlegacy:etherium_ingot>,<item:draconicevolution:draconium_core>],
	[<item:theabyss:ender_crystal_shard>,<item:draconicevolution:draconium_core>,<item:theabyss:ender_crystal_shard>]
]);

# tiers = "DRACONIUM", "WYVERN", "DRACONIC", "CHAOTIC"
function changeDEFusionRecipe(catalyst as IItemStack, ingredients as IItemStack[], output as IItemStack, tier as string, energy as int) as void {
	var ingredientsList as ICollectionData = ListData.create();
	for ingr in ingredients {
		ingredientsList.add({"item": ingr.registryName});
	}
	<recipetype:draconicevolution:fusion_crafting>.removeRecipe(output);
	<recipetype:draconicevolution:fusion_crafting>.addJSONRecipe("de_fusioncutom_" + catalyst.registryName.path + "_" + output.registryName.path,
	{
	  "catalyst": {
	    "item": catalyst.registryName
	  },
	  "ingredients": ingredientsList,
	  "result": {
	    "item": output.registryName
	  },
	  "tier": tier,
	  "total_energy": energy
	}
);}

# Draconic Core
changeDEFusionRecipe(<item:draconicevolution:wyvern_core>, [<item:draconicevolution:awakened_draconium_ingot>,<item:draconicevolution:awakened_draconium_ingot>,<item:enigmaticlegacy:astral_dust>,<item:enigmaticlegacy:astral_dust>,<item:draconicevolution:awakened_draconium_ingot>,<item:draconicevolution:awakened_draconium_ingot>], <item:draconicevolution:awakened_core>, "WYVERN", 1000000);

# Chaotic Core
changeDEFusionRecipe(<item:draconicevolution:awakened_core>, [<item:contenttweaker:ingot_of_culmination>,<item:contenttweaker:ingot_of_culmination>,<item:draconicevolution:large_chaos_frag>,<item:draconicevolution:large_chaos_frag>,<item:minecraft:nether_star>,<item:contenttweaker:ingot_of_culmination>,<item:draconicevolution:large_chaos_frag>,<item:draconicevolution:large_chaos_frag>,<item:contenttweaker:ingot_of_culmination>,<item:contenttweaker:ingot_of_culmination>], <item:draconicevolution:chaotic_core>, "DRACONIC", 100000000);

# Fusion Crafting Core
craftingTable.removeRecipe(<item:draconicevolution:crafting_core>);
craftingTable.addShaped("de_fusion_core", <item:draconicevolution:crafting_core>, [
	[<item:theabyss:unorithe_ingot>,<item:contenttweaker:enchanters_phd>,<item:theabyss:unorithe_ingot>],
	[<item:enigmaticlegacy:etherium_ingot>,<item:contenttweaker:star_of_revelation>,<item:enigmaticlegacy:etherium_ingot>],
	[<item:theabyss:unorithe_ingot>,<item:draconicevolution:draconium_core>,<item:theabyss:unorithe_ingot>]
]);

# Dislocator
craftingTable.removeRecipe(<item:draconicevolution:dislocator>);
craftingTable.addShaped("de_dislocator", <item:draconicevolution:dislocator>, [
	[<item:atum:nebu_ingot>,<item:draconicevolution:draconium_ingot>,<item:atum:nebu_ingot>],
	[<item:draconicevolution:draconium_ingot>,<item:minecraft:ender_pearl>,<item:draconicevolution:draconium_ingot>],
	[<item:atum:nebu_ingot>,<item:draconicevolution:draconium_ingot>,<item:atum:nebu_ingot>]
]);

# Draconium Infused Obsidian
craftingTable.removeRecipe(<item:draconicevolution:infused_obsidian>);
craftingTable.addShaped("de_infused_obsidian", <item:draconicevolution:infused_obsidian>, [
	[<item:minecraft:blaze_powder>,<item:minecraft:obsidian>,<item:minecraft:blaze_powder>],
	[<item:minecraft:obsidian>,<item:draconicevolution:draconium_ingot>,<item:minecraft:obsidian>],
	[<item:minecraft:blaze_powder>,<item:minecraft:obsidian>,<item:minecraft:blaze_powder>]
]);

# Potentiometer
craftingTable.removeRecipe(<item:draconicevolution:potentiometer>);
craftingTable.addShaped("de_potentiometer", <item:draconicevolution:potentiometer>, [
	[air,<tag:items:minecraft:planks>,air],
	[<item:minecraft:redstone>,<item:draconicevolution:draconium_ingot>,<item:minecraft:redstone>],
	[<item:minecraft:stone_slab>,<item:minecraft:stone_slab>,<item:minecraft:stone_slab>]
]);

# Creative Power Source
craftingTable.addShaped("de_creative_power_source", <item:draconicevolution:creative_op_capacitor>, [
	[<item:draconicevolution:draconium_block>,<item:contenttweaker:fortifying_augment>,<item:draconicevolution:draconium_block>],
	[<item:contenttweaker:fortifying_augment>,<item:draconicevolution:wyvern_core>,<item:contenttweaker:fortifying_augment>],
	[<item:draconicevolution:draconium_block>,<item:contenttweaker:fortifying_augment>,<item:draconicevolution:draconium_block>]
]);

# Creative Capacitor
craftingTable.addShaped("de_creative_capacitor", <item:draconicevolution:creative_capacitor>, [
	[<item:draconicevolution:awakened_draconium_ingot>,<item:contenttweaker:fortifying_augment>,<item:draconicevolution:awakened_draconium_ingot>],
	[<item:contenttweaker:fortifying_augment>,<item:draconicevolution:draconic_capacitor>,<item:contenttweaker:fortifying_augment>],
	[<item:draconicevolution:awakened_draconium_ingot>,<item:contenttweaker:fortifying_augment>,<item:draconicevolution:awakened_draconium_ingot>]
]);

# Basic Wireless Energy Crystal
craftingTable.removeRecipe(<item:draconicevolution:basic_wireless_crystal>);
craftingTable.addShaped("de_basic_wireless_energy_crystal", <item:draconicevolution:basic_wireless_crystal>, [
	[<item:minecraft:ender_pearl>,<item:draconicevolution:particle_generator>,<item:minecraft:ender_pearl>],
	[<item:contenttweaker:ingot_of_culmination>,<item:draconicevolution:basic_relay_crystal>,<item:contenttweaker:ingot_of_culmination>],
	[<item:minecraft:ender_pearl>,<item:draconicevolution:particle_generator>,<item:minecraft:ender_pearl>]
]);

# Wyvern Wireless Energy Crystal
craftingTable.removeRecipe(<item:draconicevolution:wyvern_wireless_crystal>);
craftingTable.addShaped("de_wyvern_wireless_energy_crystal", <item:draconicevolution:wyvern_wireless_crystal>, [
	[<item:minecraft:ender_pearl>,<item:draconicevolution:particle_generator>,<item:minecraft:ender_pearl>],
	[<item:contenttweaker:ingot_of_culmination>,<item:draconicevolution:wyvern_relay_crystal>,<item:contenttweaker:ingot_of_culmination>],
	[<item:minecraft:ender_pearl>,<item:draconicevolution:particle_generator>,<item:minecraft:ender_pearl>]
]);

# Draconic Wireless Energy Crystal
craftingTable.removeRecipe(<item:draconicevolution:draconic_wireless_crystal>);
craftingTable.addShaped("de_draconic_wireless_energy_crystal", <item:draconicevolution:draconic_wireless_crystal>, [
	[<item:minecraft:ender_pearl>,<item:draconicevolution:particle_generator>,<item:minecraft:ender_pearl>],
	[<item:contenttweaker:ingot_of_culmination>,<item:draconicevolution:draconic_relay_crystal>,<item:contenttweaker:ingot_of_culmination>],
	[<item:minecraft:ender_pearl>,<item:draconicevolution:particle_generator>,<item:minecraft:ender_pearl>]
]);

# Energy Pylon
craftingTable.removeRecipe(<item:draconicevolution:energy_pylon>);
craftingTable.addShaped("de_energy_pylon", <item:draconicevolution:energy_pylon>, [
	[<item:draconicevolution:draconium_ingot>,<item:contenttweaker:ingot_of_culmination>,<item:draconicevolution:draconium_ingot>],
	[<item:minecraft:diamond>,<item:draconicevolution:draconium_core>,<item:minecraft:diamond>],
	[<item:draconicevolution:draconium_ingot>,<item:contenttweaker:ingot_of_culmination>,<item:draconicevolution:draconium_ingot>]
]);

print("ENDING DraconicEvolution.zs");