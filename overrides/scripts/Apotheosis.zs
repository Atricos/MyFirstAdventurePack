// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

print("STARTING Apotheosis.zs");

val air = <item:minecraft:air>;
val infusedHellshelf = <item:apotheosis:hellshelf>.withTag({Enchantments: [{lvl: 3 as short, id: "apotheosis:hell_infusion" as string}], display: {Lore: ["{\"translate\":\"ingredient.apotheosis.ench\",\"with\":[{\"italic\":true,\"color\":\"dark_purple\",\"extra\":[{\"text\":\" \"},{\"translate\":\"enchantment.level.3\"}],\"translate\":\"enchantment.apotheosis.hell_infusion\"}]}" as string]}});

# Shelf of Sight
craftingTable.removeRecipe(<item:apotheosis:sightshelf>);
craftingTable.addShaped("apo_shelf_of_sight", <item:apotheosis:sightshelf>, [
	[<item:minecraft:gold_block>,infusedHellshelf,<item:minecraft:gold_block>],
	[<item:minecraft:potion>.withTag({Potion: "minecraft:night_vision" as string}),<tag:items:forge:glass/colorless>,<item:minecraft:potion>.withTag({Potion: "minecraft:night_vision" as string})],
	[<item:minecraft:gold_block>,infusedHellshelf,<item:minecraft:gold_block>]
]);


print("ENDING Apotheosis.zs");