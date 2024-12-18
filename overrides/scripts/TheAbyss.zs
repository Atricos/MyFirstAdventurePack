// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

print("STARTING TheAbyss.zs");

val air = <item:minecraft:air>;

# Portal Activator
craftingTable.removeRecipe(<item:theabyss:the_abyss>);
craftingTable.addShaped("abyss_portal_activator_unique", <item:theabyss:the_abyss>, [
	[air,<item:twilightforest:knightmetal_ingot>,<item:astralsorcery:resonating_gem>],
	[air,<item:atum:nebu_ingot>,<item:twilightforest:knightmetal_ingot>],
	[<item:infernalexp:charged_chiseled_soul_stone_bricks>,air,air]
]);

# Guide Book
craftingTable.addShapeless("abyss_guide_book", <item:theabyss:guide_book>, [
	<item:minecraft:book>,<item:theabyss:loran>
]);

# Glacerite from Ore
furnace.addRecipe("glacerite", <item:theabyss:glacerythe_gem> * 2, <item:theabyss:glacerythe_ore>, 1.0, 200);
blastFurnace.addRecipe("abyss_glacerite_blast", <item:theabyss:glacerythe_gem> * 2, <item:theabyss:glacerythe_ore>, 1.0, 100);

# Incoryte from Ore
furnace.addRecipe("inchorite", <item:theabyss:incorythe_gem> * 2, <item:theabyss:incorythe_ore>, 1.0, 200);
blastFurnace.addRecipe("abyss_inchorite_blast", <item:theabyss:incorythe_gem> * 2, <item:theabyss:incorythe_ore>, 1.0, 100);

# Unstable Slime
craftingTable.removeRecipe(<item:theabyss:slime_stage_2>);
craftingTable.addShaped("abyss_unstable_slime", <item:theabyss:slime_stage_2> * 3, [
	[<item:minecraft:snowball>,<item:theabyss:slime_stage_1>,<item:minecraft:snowball>],
	[<item:theabyss:slime_stage_1>,<item:theabyss:slime_stage_1>,<item:theabyss:slime_stage_1>],
	[<item:minecraft:snowball>,<item:theabyss:slime_stage_1>,<item:minecraft:snowball>]
]);

# Stable Slime
craftingTable.removeRecipe(<item:theabyss:slime_stage_3>);
craftingTable.addShaped("abyss_stable_slime", <item:theabyss:slime_stage_3> * 3, [
	[<tag:items:forge:slimeballs>,<item:theabyss:slime_stage_2>,<tag:items:forge:slimeballs>],
	[<item:theabyss:slime_stage_2>,<item:theabyss:slime_stage_2>,<item:theabyss:slime_stage_2>],
	[<tag:items:forge:slimeballs>,<item:theabyss:slime_stage_2>,<tag:items:forge:slimeballs>]
]);

# Slime Fusion
craftingTable.removeRecipe(<item:theabyss:slime_stage_4>);
craftingTable.addShaped("abyss_slime_fusion", <item:theabyss:slime_stage_4>, [
	[<item:theabyss:slime_stage_3>,<item:theabyss:slime_stage_3>,<item:theabyss:slime_stage_3>],
	[<item:theabyss:slime_stage_3>,<item:astralsorcery:infused_glass>,<item:theabyss:slime_stage_3>],
	[<item:theabyss:slime_stage_3>,<item:theabyss:slime_stage_3>,<item:theabyss:slime_stage_3>]
]);

# Crystal conversions
val crystalClusters as IItemStack[] = [
	<item:theabyss:crimson_crystal_ore>,
	<item:theabyss:warped_crystal_ore>,
	<item:theabyss:ender_crystal_ore>,
	<item:theabyss:abyss_crystal_ore>,
	<item:theabyss:hollow_crystal_ore>,
	<item:theabyss:caverna_crystal_ore>,
	<item:theabyss:frost_crystal_ore>
];

val crystals as IItemStack[] = [
	<item:theabyss:crimson_crystal_shard>,
	<item:theabyss:warped_crystal_shard>,
	<item:theabyss:ender_crystal_shard>,
	<item:theabyss:abyss_crystal_shard>,
	<item:theabyss:hollow_crystal_shard>,
	<item:theabyss:caverna_crystal>,
	<item:theabyss:frost_crystal_shard>
];

var abyssCrystalShards = <tag:items:theabyss:crystalshard>;

for item in crystals {
	abyssCrystalShards.add(item);
}
abyssCrystalShards.add(<item:theabyss:aurel_crystal_shard>);

val crystalMats as IItemStack[] = [
	<item:minecraft:nether_wart>,
	<item:minecraft:warped_fungus>,
	<item:minecraft:ender_pearl>,
	<item:theabyss:loran>,
	<item:minecraft:feather>,
	<item:minecraft:stone>,
	<item:minecraft:packed_ice>
];

#for aurel: <item:twilightforest:fiery_ingot>


for i in 0 .. crystals.length {

	craftingTable.addShapeless("abyss_crystal_breakdown_" + i as string, crystals[i] * 4, [crystalClusters[i]]);

	craftingTable.addShaped("abyss_crystal_conversion_" + i as string, crystals[i], [[abyssCrystalShards,crystalMats[i],abyssCrystalShards]]);

}

craftingTable.addShaped("abyss_crystal_conversion_aurel", <item:theabyss:aurel_crystal_shard>, [[abyssCrystalShards,<item:twilightforest:fiery_ingot>,abyssCrystalShards]]);

# Key of Ice
craftingTable.removeRecipe(<item:theabyss:frost_world>);
craftingTable.addShapedMirrored("abyss_key_of_ice", <item:theabyss:frost_world>, [
	[<item:theabyss:unorithe_ingot>,air,air],
	[air,<item:theabyss:unorithe_ingot>,air],
	[air,air,<item:theabyss:slime_stage_4>]
]);

# More Icora
craftingTable.addShapeless("extra_icora1", <item:theabyss:icora_nugget>,
[<item:theabyss:ice_rank>]);
craftingTable.addShapeless("extra_icora2", <item:theabyss:icora_nugget>,
[<item:theabyss:icela_rank>]);
craftingTable.addShapeless("extra_icora3", <item:theabyss:icora_nugget>,
[<item:theabyss:tesla_rank>]);

# More Briked Knight Ingots
craftingTable.removeRecipe(<item:theabyss:bricked_knight_ingot>);
craftingTable.addShaped("briked_knight", <item:theabyss:bricked_knight_ingot> * 4, [
	[<item:theabyss:knight_shard>,<item:theabyss:knight_shard>,<item:theabyss:knight_shard>],
	[<item:theabyss:knight_shard>,<item:theabyss:loran_energy>,<item:theabyss:knight_shard>],
	[<item:theabyss:knight_shard>,<item:theabyss:knight_shard>,<item:theabyss:knight_shard>]
]);

print("ENDING Minecraft.zs");