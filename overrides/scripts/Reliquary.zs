// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

print("STARTING Reliquary.zs");

val air = <item:minecraft:air>;

# Salamander's Eye
craftingTable.removeRecipe(<item:xreliquary:salamander_eye>);
craftingTable.addShapedMirrored("reli_salamanders_eye", <item:xreliquary:salamander_eye>, [
	[air,<item:minecraft:ender_pearl>,air],
	[<item:xreliquary:molten_core>,<item:minecraft:spider_eye>,<item:xreliquary:frozen_core>],
	[air,<item:xreliquary:nebulous_heart>,air]
]);

# Ender Staff
craftingTable.removeRecipe(<item:xreliquary:ender_staff>);
craftingTable.addShapedMirrored("reli_ender_staff", <item:xreliquary:ender_staff>, [
	[air,<item:xreliquary:bat_wing>,<item:minecraft:ender_pearl>],
	[<item:xreliquary:nebulous_heart>,<item:xreliquary:void_tear>,<item:xreliquary:bat_wing>],
	[<item:minecraft:stick>,<item:xreliquary:nebulous_heart>,air]
]);

# Serpent Staff
craftingTable.removeRecipe(<item:xreliquary:serpent_staff>);
craftingTable.addShapedMirrored("reli_serpent_staff", <item:xreliquary:serpent_staff>, [
	[air,<item:xreliquary:chelicerae>,<item:minecraft:ender_pearl>],
	[air,<item:xreliquary:kraken_shell_fragment>,<item:xreliquary:chelicerae>],
	[<item:minecraft:stick>,air,air]
]);

print("ENDING Reliquary.zs");