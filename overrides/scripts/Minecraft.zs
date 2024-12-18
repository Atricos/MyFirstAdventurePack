// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

print("STARTING Minecraft.zs");

# Eye of Ender
craftingTable.removeRecipe(<item:minecraft:ender_eye>);
<recipetype:astralsorcery:infusion>.removeRecipe(<item:minecraft:ender_eye>);
<recipetype:tconstruct:casting_table>.removeRecipe(<item:minecraft:ender_eye>);
<recipetype:astralsorcery:altar>.addRecipe("endereye_finale", "RADIANCE", <item:minecraft:ender_eye>, [
"_ccc_",
"csnsc",
"cninc",
"csnsc",
"_ccc_"], {c: <item:contenttweaker:ingot_of_culmination> as IIngredient, s: <item:theabyss:scorpion_eye> as IIngredient, n: <item:theabyss:nether_nugget> as IIngredient, i: <item:theabyss:icora_stone> as IIngredient}, 60, 400);

# Trident
#craftingTable.addShapedMirrored("trident", <item:minecraft:trident>, [
#	[<item:minecraft:air>,<item:tconstruct:small_blade>.withTag({Material: "tconstruct:bone" as string}),<item:minecraft:air>],
#	[<item:minecraft:air>,<item:theabyss:incorythe_gem>,<item:tconstruct:small_blade>.withTag({Material: "tconstruct:bone" as string})],
#	[<item:theabyss:incorythe_gem>,<item:minecraft:air>,<item:minecraft:air>]
#]);

# Ender Chest
craftingTable.removeRecipe(<item:minecraft:ender_chest>);
craftingTable.addShaped("minecraft_ender_chest", <item:minecraft:ender_chest>, [
	[<item:minecraft:obsidian>,<item:minecraft:obsidian>,<item:minecraft:obsidian>],
	[<item:minecraft:obsidian>,<item:minecraft:ender_pearl>,<item:minecraft:obsidian>],
	[<item:minecraft:obsidian>,<item:minecraft:obsidian>,<item:minecraft:obsidian>]
]);
<recipetype:tconstruct:casting_basin>.removeRecipe(<item:minecraft:ender_chest>);

# End Crystal
craftingTable.removeRecipe(<item:minecraft:end_crystal>);
craftingTable.addShaped("minecraft_end_crystal", <item:minecraft:end_crystal>, [
	[<tag:items:forge:glass>,<tag:items:forge:glass>,<tag:items:forge:glass>],
	[<tag:items:forge:glass>,<item:contenttweaker:ingot_of_culmination>,<tag:items:forge:glass>],
	[<tag:items:forge:glass>,<item:minecraft:ghast_tear>,<tag:items:forge:glass>]
]);




print("ENDING Minecraft.zs");