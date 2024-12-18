// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

print("STARTING TinkersConstruct.zs");

# Ender Slime alternative recipe
<recipetype:tconstruct:alloying>.addRecipe("alloy_test", [<fluid:tconstruct:earth_slime>, <fluid:tconstruct:molten_ender>], <fluid:tconstruct:ender_slime> * 2, 50);

print("ENDING TinkersConstruct.zs");