#loader contenttweaker
// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.tool.ItemBuilderTool;
import crafttweaker.api.food.MCFood;
import mods.contenttweaker.item.advance.ItemBuilderAdvanced;

print("STARTING ContentTweakerItems.zs");

new ItemBuilder().withRarity("RARE").build("star_of_revelation");
new ItemBuilder().withRarity("EPIC").build("enchanters_phd");
new ItemBuilder().withFood(
		new MCFood(16, 20.0) as MCFood)
		.build("beef_burger");
new ItemBuilder().withFood(
		new MCFood(16, 20.0) as MCFood)
		.build("pork_burger");
new ItemBuilder().withFood(
		new MCFood(16, 16.0) as MCFood)
		.build("chicken_burger");
new ItemBuilder()
		.withMaxStackSize(64)
		.withType<ItemBuilderAdvanced>()
		.build("instant_bandage");
new ItemBuilder()
		.withMaxStackSize(64)
		.withType<ItemBuilderAdvanced>()
		.build("commander_flag");
new ItemBuilder().withRarity("EPIC").isImmuneToFire().build("fortifying_augment");
new ItemBuilder().withRarity("EPIC").isImmuneToFire().build("ingot_of_culmination");

print("ENDING ContentTweakerItems.zs");