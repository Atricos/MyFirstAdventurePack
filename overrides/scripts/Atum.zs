// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

print("STARTING Atum.zs");

val air = <item:minecraft:air>;

# Godforge
craftingTable.removeRecipe(<item:atum:godforge>);
<recipetype:astralsorcery:altar>.addRecipe("godforge", "CONSTELLATION", <item:atum:godforge>, [
"oy_yo",
"ynnny",
"_nsn_",
"ynnny",
"oy_yo"], {o: <item:tconstruct:copper_block> as IIngredient, y: <item:atum:ceramic_yellow> as IIngredient, n: <item:atum:nebu_ingot> as IIngredient, s: <item:tconstruct:smeltery_controller> as IIngredient}, 60, 100);

print("ENDING Atum.zs");