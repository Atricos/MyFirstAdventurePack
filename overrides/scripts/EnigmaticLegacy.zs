// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

print("STARTING EnigmaticLegacy.zs");

val air = <item:minecraft:air>;

# Dislocation Ring
craftingTable.removeRecipe(<item:enigmaticlegacy:super_magnet_ring>);
craftingTable.addShaped("el_dislocation_ring", <item:enigmaticlegacy:super_magnet_ring>, [
	[<item:minecraft:ender_pearl>,<item:minecraft:gold_ingot>,<item:minecraft:ender_pearl>],
	[<item:theabyss:ender_crystal_shard>,<item:enigmaticlegacy:magnet_ring>,<item:theabyss:ender_crystal_shard>],
	[<item:minecraft:ender_pearl>,<item:minecraft:gold_ingot>,<item:minecraft:ender_pearl>]
]);

# Extrapolcated Megasponge
craftingTable.removeRecipe(<item:enigmaticlegacy:mega_sponge>);
craftingTable.addShaped("el_extrapolated_megasponge", <item:enigmaticlegacy:mega_sponge>, [
	[<item:minecraft:sponge>,<item:minecraft:ghast_tear>,<item:minecraft:sponge>],
	[<item:minecraft:heart_of_the_sea>,<item:minecraft:nautilus_shell>,<item:minecraft:heart_of_the_sea>],
	[<item:minecraft:sponge>,<item:minecraft:ghast_tear>,<item:minecraft:sponge>]
]);

# Scroll of Ageless Wisdom
craftingTable.removeRecipe(<item:enigmaticlegacy:xp_scroll>);
craftingTable.addShaped("el_scroll_of_ageless_wisdom", <item:enigmaticlegacy:xp_scroll>, [
	[air,<item:minecraft:experience_bottle>,air],
	[<item:minecraft:experience_bottle>,<item:enigmaticlegacy:thicc_scroll>,<item:minecraft:experience_bottle>],
	[air,<item:xpbook:xp_tome>,air]
]);

# Extradimensional Eye
craftingTable.removeRecipe(<item:enigmaticlegacy:extradimensional_eye>);
craftingTable.addShaped("el_extradimensional_eye", <item:enigmaticlegacy:extradimensional_eye>, [
	[<item:minecraft:gold_nugget>,<item:minecraft:phantom_membrane>,<item:minecraft:gold_nugget>],
	[<item:minecraft:gold_ingot>,<item:minecraft:ender_pearl>,<item:minecraft:gold_ingot>],
	[<item:minecraft:gold_nugget>,<item:minecraft:blaze_powder>,<item:minecraft:gold_nugget>]
]);




print("ENDING EnigmaticLegacy.zs");