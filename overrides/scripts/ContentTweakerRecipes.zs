// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.IData;
import crafttweaker.api.item.tooltip.ITooltipFunction;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.data.MapData;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.util.text.MCStyle;

print("STARTING ContentTweakerRecipes.zs");

val air = <item:minecraft:air>;

# Star of Revelation
craftingTable.addShapedMirrored("star_of_revelation", <item:contenttweaker:star_of_revelation>, [
	[<item:astralsorcery:attuned_celestial_crystal>,air,<item:astralsorcery:attuned_celestial_crystal>],
	[air,<item:astralsorcery:shifting_star_vicio>,air],
	[<item:astralsorcery:attuned_celestial_crystal>,air,<item:astralsorcery:attuned_celestial_crystal>]],
	(out as IItemStack, ins as IItemStack[][]) => {

		val reqTraits = ["astralsorcery.constellation.alcara", "astralsorcery.constellation.gelu", "astralsorcery.constellation.ulteria", "astralsorcery.constellation.vorux"] as string[];
		var curCraftTraits = [] as string[] as stdlib.List<string>;

	    for row in ins {
	        for it in row {
	            if(<item:astralsorcery:attuned_celestial_crystal>.matches(it)) {
	            	var curTag = it.tag.asMap();
	            	if(it.tag.contains("astralsorcery")
	            	&& curTag["astralsorcery"].contains("constellationName")
	            	&& curTag["astralsorcery"].contains("trait")) {
		                var curTraits = curTag["astralsorcery"].asMap();
		                curCraftTraits.add(curTraits["trait"].getString());
	            	}
	            }

	        }
	    }

	    var counter = 0;

	    for e in reqTraits {

	    	if(e in curCraftTraits) {
				counter++;	    		
	    	}

	    }

	    if counter == 4 {
	    	return out;
	    }

	    return air;

	}
);
#ITooltipFunction.apply(<item:contenttweaker:star_of_revelation>, "To craft this, you will need 4", false);
<item:contenttweaker:star_of_revelation>.addTooltip("To craft this, you will need 4 Attuned Celestial Crystals");
<item:contenttweaker:star_of_revelation>.addTooltip("that each have a unique trait of a Faint Constellation:");
<item:contenttweaker:star_of_revelation>.addTooltip("Alcara, Gelu, Ulteria, and Vorux. To add a trait to a Crystal:");
<item:contenttweaker:star_of_revelation>.addTooltip("1. Attune it to any Constellation.");
<item:contenttweaker:star_of_revelation>.addTooltip("2. Wait until a Faint Constellation is available at night.");
<item:contenttweaker:star_of_revelation>.addTooltip("3. Attune it again to the Faint Constellation (this will add a");
<item:contenttweaker:star_of_revelation>.addTooltip("   Trait modifier to it).");

# Enchanter's PhD
craftingTable.addShapedMirrored("enchaters_phd", <item:contenttweaker:enchanters_phd>, [
	[air,<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: "minecraft:power" as string}]}),air],
	[<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: "minecraft:sharpness" as string}]}),<item:astralsorcery:parchment>,<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:luck_of_the_sea" as string}]})],
	[air,<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: "minecraft:piercing" as string}]}),air]
]);

# Fortifying augment
craftingTable.addShaped("fortifying_augment", <item:contenttweaker:fortifying_augment> * 8, [
	[<item:tconstruct:large_plate>.withTag({Material: "tconstruct:manyullyn" as string}),<item:atum:godforged_block>,<item:tconstruct:large_plate>.withTag({Material: "tconstruct:manyullyn" as string})],
	[<item:contenttweaker:harbinger_cube>,<item:twilightforest:lamp_of_cinders>.reuse(),<item:contenttweaker:harbinger_cube>],
	[<item:tconstruct:large_plate>.withTag({Material: "tconstruct:manyullyn" as string}),<item:atum:godforged_block>,<item:tconstruct:large_plate>.withTag({Material: "tconstruct:manyullyn" as string})]
]);

# Fortifying recipes
val meeleeFortifiables as IItemStack[] = [
	<item:cataclysm:infernal_forge>,
	<item:cataclysm:the_incinerator>,
	<item:cataclysm:gauntlet_of_guard>,
	<item:atum:anputs_hunger>,
	<item:atum:anubis_wrath>,
	<item:atum:atems_will>,
	<item:atum:gebs_might>,
	<item:atum:gebs_toil>,
	<item:atum:gebs_undoing>,
	<item:atum:horus_ascension>,
	<item:atum:montus_strike>,
	<item:atum:nepthys_banishing>,
	<item:atum:nuits_ire>,
	<item:atum:nuits_quarter>,
	<item:atum:osiris_blessing>,
	<item:atum:ptahs_decadence>,
	<item:atum:seths_sting>,
	<item:atum:shus_exile>,
	<item:atum:tefnuts_call>
];

val rangedFortifiables as IItemStack[] = [
	<item:atum:anputs_grounding>,
	<item:atum:isis_division>,
	<item:atum:montus_blast>,
	<item:atum:ras_fury>,
	<item:atum:seths_venom>,
	<item:atum:shus_breath>,
	<item:atum:tefnuts_rain>
];

var i as int = 0;

for m in meeleeFortifiables {
	craftingTable.addShaped("meelee_" + i as string + "_fortification",
		m.withTag({Damage: 0 as int,
			Enchantments: [
			{lvl: 100 as short, id: "minecraft:sharpness" as string}, 
			{lvl: 20 as short, id: "minecraft:smite" as string}, 
			{lvl: 20 as short, id: "minecraft:bane_of_arthropods" as string}, 
			{lvl: 10 as short, id: "minecraft:sweeping" as string},
			{lvl: 10 as short, id: "enigmaticlegacy:wrath" as string}
		]}),
		[
			[air,<item:contenttweaker:fortifying_augment>,air],
			[<item:contenttweaker:fortifying_augment>,m,<item:contenttweaker:fortifying_augment>],
			[air,<item:contenttweaker:fortifying_augment>,air]
		]);
	i += 1;
}

for r in rangedFortifiables {
		craftingTable.addShaped("ranged_" + i as string + "_fortification",
		r.withTag({Damage: 0 as int,
			Enchantments: [
			{lvl: 100 as short, id: "minecraft:power" as string}, 
			{lvl: 12 as short, id: "minecraft:punch" as string}, 
			{lvl: 1 as short, id: "minecraft:infinity" as string}, 
			{lvl: 10 as short, id: "spartanweaponry:sharpshooter" as string},
			{lvl: 10 as short, id: "apotheosis:crescendo" as string},
			{lvl: 10 as short, id: "enigmaticlegacy:sharpshooter" as string}
		]}),
		[
			[air,<item:contenttweaker:fortifying_augment>,air],
			[<item:contenttweaker:fortifying_augment>,r,<item:contenttweaker:fortifying_augment>],
			[air,<item:contenttweaker:fortifying_augment>,air]
		]);
	i += 1;
}

# Beef Burger
craftingTable.addShaped("beef_burger", <item:contenttweaker:beef_burger> * 3, [
	[<item:atum:emmer_bread>,<item:atum:emmer_bread>,<item:atum:emmer_bread>],
	[<item:minecraft:cooked_beef>,<item:minecraft:cooked_beef>,<item:minecraft:cooked_beef>],
	[<item:atum:emmer_bread>,<item:atum:emmer_bread>,<item:atum:emmer_bread>]
]);

# Pork Burger
craftingTable.addShaped("pork_burger", <item:contenttweaker:pork_burger> * 3, [
	[<item:atum:emmer_bread>,<item:atum:emmer_bread>,<item:atum:emmer_bread>],
	[<item:minecraft:cooked_porkchop>,<item:minecraft:cooked_porkchop>,<item:minecraft:cooked_porkchop>],
	[<item:atum:emmer_bread>,<item:atum:emmer_bread>,<item:atum:emmer_bread>]
]);

# Chicken Burger
craftingTable.addShaped("chicken_burger", <item:contenttweaker:chicken_burger> * 3, [
	[<item:atum:emmer_bread>,<item:atum:emmer_bread>,<item:atum:emmer_bread>],
	[<item:minecraft:cooked_chicken>,<item:minecraft:cooked_chicken>,<item:minecraft:cooked_chicken>],
	[<item:atum:emmer_bread>,<item:atum:emmer_bread>,<item:atum:emmer_bread>]
]);

# Instant Bandage
craftingTable.addShapeless("instant_bandage", <item:contenttweaker:instant_bandage> * 3, [
	<item:atum:linen_cloth>,<item:tconstruct:blood_slime_ball>
]);
<item:contenttweaker:instant_bandage>.addTooltip(MCTextComponent.createStringTextComponent("Restores 2 hearts instantly."));

# Commander's Flag
craftingTable.addShapedMirrored("commander_flag", <item:contenttweaker:commander_flag> * 16, [
	[<item:atum:linen_cloth>,<item:atum:linen_cloth>,<item:atum:linen_cloth>],
	[<item:atum:linen_cloth>,<item:atum:linen_cloth>,<item:atum:linen_cloth>],
	[air,air,<item:minecraft:stick>]
]);
<item:contenttweaker:commander_flag>.addTooltip(MCTextComponent.createStringTextComponent("Grants allies in 30 blocks Strength II for 30 seconds."));

# Ingot of Culmination
craftingTable.addShaped("ingot_of_culmination", <item:contenttweaker:ingot_of_culmination> * 32, [
	[<item:tconstruct:hepatizon_ingot>,<item:draconicevolution:draconium_ingot>,<item:atum:nebu_ingot>],
	[<item:theabyss:bricked_knight_ingot>,<item:minecraft:ender_pearl>,<item:twilightforest:knightmetal_ingot>],
	[<item:astralsorcery:starmetal_ingot>,<item:tconstruct:slimesteel_ingot>,<item:theabyss:unorithe_ingot>]
]);

print("ENDING ContentTweakerRecipes.zs");