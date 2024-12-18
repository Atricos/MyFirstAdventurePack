#loader contenttweaker
// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.stairs.BlockBuilderStairs;
import mods.contenttweaker.block.basic.BlockBuilderBasic;
import mods.contenttweaker.block.pillar.BlockBuilderPillarRotatable;

print("STARTING ContentTweakerBlocks.zs");

new BlockBuilder(<blockmaterial:rock>)
				.withHardnessAndResistance(2.0f)
				.withRarity("EPIC")
				.build("harbinger_cube");

print("ENDING ContentTweakerBlocks.zs");