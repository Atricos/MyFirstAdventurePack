// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

print("STARTING AstralSorcery.zs");

val air = <item:minecraft:air>;

# Resonating Wand
craftingTable.removeRecipe(<item:astralsorcery:wand>);
craftingTable.addShapedMirrored("resonating_wand", <item:astralsorcery:wand>, [
	[air,<item:astralsorcery:aquamarine>,<item:astralsorcery:marble_raw>],
	[air,<item:tconstruct:copper_ingot>,<item:astralsorcery:aquamarine>],
	[<item:astralsorcery:marble_raw>,air,air]
]);
<recipetype:astralsorcery:altar>.removeByName("astralsorcery:altar/wand");

# Resplendent Prism
<recipetype:astralsorcery:altar>.removeByName("astralsorcery:altar/enchantment_amulet_init");
<recipetype:astralsorcery:altar>.addRecipe("resplendent_prism", "CONSTELLATION", <item:astralsorcery:enchantment_amulet>, [
"_____",
"_gsg_",
"_dad_",
"drerd",
"_d_d_"], {g: <item:minecraft:gold_ingot> as IIngredient, s: <tag:items:forge:string>, d: <item:astralsorcery:stardust> as IIngredient, e: <item:minecraft:ender_pearl> as IIngredient, a: <item:astralsorcery:shifting_star> as IIngredient, r: <item:astralsorcery:resonating_gem> as IIngredient}, 60, 100);

print("ENDING AstralSorcery.zs");