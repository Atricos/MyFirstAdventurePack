// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

print("STARTING Waystones.zs");

# XP Tome
craftingTable.removeRecipe(<item:waystones:warp_stone>);
craftingTable.addShapeless("warp_stone_tinkers", <item:waystones:warp_stone>,
	[<item:tconstruct:manyullyn_ingot>,<item:tconstruct:ender_slime_ball>]);
craftingTable.addShaped("warp_stone_vanilla", <item:waystones:warp_stone>, [
	[<item:minecraft:air>,<item:waystones:warp_dust>,<item:minecraft:air>],
	[<item:waystones:warp_dust>,<item:minecraft:slime_ball>,<item:waystones:warp_dust>],
	[<item:minecraft:air>,<item:waystones:warp_dust>,<item:minecraft:air>]
]);

print("ENDING Waystones.zs");