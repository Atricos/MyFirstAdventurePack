// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

print("STARTING AngelRing.zs");

val air = <item:minecraft:air>;

# Angel Ring
craftingTable.removeRecipe(<item:angelring:itemring>);
craftingTable.addShaped("angelring", <item:angelring:itemring>, [
	[<item:minecraft:feather>,<item:draconicevolution:draconium_core>,<item:minecraft:feather>],
	[<item:minecraft:gold_block>,<item:angelring:itemdiamondring>,<item:minecraft:gold_block>],
	[<item:minecraft:nether_star>,<item:minecraft:gold_block>,<item:minecraft:nether_star>]
]);

# Energetic Angel Ring
craftingTable.removeRecipe(<item:angelring:energetic_angel_ring>);

print("ENDING AngelRing.zs");