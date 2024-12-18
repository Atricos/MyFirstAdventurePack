// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

print("STARTING XPTome.zs");

# XP Tome
craftingTable.removeRecipe(<item:xpbook:xp_tome>);
craftingTable.addShaped("xp_tome_twilight", <item:xpbook:xp_tome>, [
	[<item:twilightforest:carminite>,<item:minecraft:book>,<item:twilightforest:carminite>]
]);
craftingTable.addShaped("xp_tome_atum", <item:xpbook:xp_tome>, [
	[<item:atum:glistering_date>,<item:minecraft:book>,<item:atum:glistering_date>]
]);

print("ENDING XPTome.zs");