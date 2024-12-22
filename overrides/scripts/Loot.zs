// Author: Atricos
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.conditions.LootConditionBuilder;
import crafttweaker.api.util.MCResourceLocation;
import crafttweaker.api.loot.conditions.vanilla.LootTableId;
import crafttweaker.api.loot.conditions.LootConditionBuilder;
import crafttweaker.api.loot.modifiers.CommonLootModifiers;
import crafttweaker.api.item.MCWeightedItemStack;
import stdlib.List;

print("STARTING Loot.zs");

function removeLoot(name as string, lootTable as MCResourceLocation, lootItem as IItemStack) as void {
    loot.modifiers.register(
        name,
        LootConditionBuilder.createForSingle<LootTableId>((condition) => {
            condition.withTableId(lootTable);
        }),
        CommonLootModifiers.remove(lootItem)
    );
}

function addLootWithChance(name as string, lootTable as MCResourceLocation, lootItems as MCWeightedItemStack[]) as void {
    loot.modifiers.register(
        name,
        LootConditionBuilder.createForSingle<LootTableId>((condition) => {
            condition.withTableId(lootTable);
        }),
        CommonLootModifiers.addAllWithChance(lootItems)
    );
}

removeLoot("apotheosis_spawn_egg_creeper", <resource:apotheosis:spawner_swarm>, <item:minecraft:creeper_spawn_egg>);
removeLoot("apotheosis_spawn_egg_zombie", <resource:apotheosis:spawner_swarm>, <item:minecraft:zombie_spawn_egg>);
removeLoot("apotheosis_spawn_egg_skeleton", <resource:apotheosis:spawner_swarm>, <item:minecraft:skeleton_spawn_egg>);
removeLoot("apotheosis_spawn_egg_slime", <resource:apotheosis:spawner_swarm>, <item:minecraft:slime_spawn_egg>);
removeLoot("apotheosis_spawn_egg_silverfish", <resource:apotheosis:spawner_swarm>, <item:minecraft:silverfish_spawn_egg>);
removeLoot("apotheosis_spawn_egg_cavespider", <resource:apotheosis:spawner_swarm>, <item:minecraft:cave_spider_spawn_egg>);
removeLoot("apotheosis_spawn_egg_spider", <resource:apotheosis:spawner_swarm>, <item:minecraft:spider_spawn_egg>);

val dungeons_arise_chests as MCResourceLocation[] = [
    <resource:dungeons_arise:chests/abandoned_temple/abandoned_temple_entrance>,
    <resource:dungeons_arise:chests/abandoned_temple/abandoned_temple_map>,
    <resource:dungeons_arise:chests/abandoned_temple/abandoned_temple_top>,
    <resource:dungeons_arise:chests/airship_redstone_chamber>,
    <resource:dungeons_arise:chests/aviary/aviary_barrels>,
    <resource:dungeons_arise:chests/aviary/aviary_normal>,
    <resource:dungeons_arise:chests/aviary/aviary_treasure>,
    <resource:dungeons_arise:chests/bandit_towers/bandit_towers_barrels>,
    <resource:dungeons_arise:chests/bandit_towers/bandit_towers_gardens>,
    <resource:dungeons_arise:chests/bandit_towers/bandit_towers_normal>,
    <resource:dungeons_arise:chests/bandit_towers/bandit_towers_rooms>,
    <resource:dungeons_arise:chests/bandit_towers/bandit_towers_supply>,
    <resource:dungeons_arise:chests/bandit_towers/bandit_towers_treasure>,
    <resource:dungeons_arise:chests/bandit_village/bandit_village_barrels>,
    <resource:dungeons_arise:chests/bandit_village/bandit_village_normal>,
    <resource:dungeons_arise:chests/bandit_village/bandit_village_supply>,
    <resource:dungeons_arise:chests/bandit_village/bandit_village_tents>,
    <resource:dungeons_arise:chests/campsite_supply>,
    <resource:dungeons_arise:chests/campsite_tent>,
    <resource:dungeons_arise:chests/ceryneian_hind/ceryneian_hind_treasure>,
    <resource:dungeons_arise:chests/desert_city_big>,
    <resource:dungeons_arise:chests/desert_city_medium>,
    <resource:dungeons_arise:chests/desert_city_small>,
    <resource:dungeons_arise:chests/desert_garden_treasure>,
    <resource:dungeons_arise:chests/fishing_hut/fishing_hut_barrels>,
    <resource:dungeons_arise:chests/fortified_house_medium>,
    <resource:dungeons_arise:chests/fortified_house_small>,
    <resource:dungeons_arise:chests/foundry/foundry_chains>,
    <resource:dungeons_arise:chests/foundry/foundry_lava_pit>,
    <resource:dungeons_arise:chests/foundry/foundry_normal>,
    <resource:dungeons_arise:chests/foundry/foundry_passage_exterior>,
    <resource:dungeons_arise:chests/foundry/foundry_passage_normal>,
    <resource:dungeons_arise:chests/foundry/foundry_treasure>,
    <resource:dungeons_arise:chests/giant_mushroom/red_giant_mushroom>,
    <resource:dungeons_arise:chests/giant_mushroom/twin_giant_mushroom>,
    <resource:dungeons_arise:chests/greenwood_bar_supply>,
    <resource:dungeons_arise:chests/greenwood_house_medium>,
    <resource:dungeons_arise:chests/greenwood_house_small>,
    <resource:dungeons_arise:chests/gunpowder_barrel>,
    <resource:dungeons_arise:chests/heavenly_challenger/heavenly_challenger_normal>,
    <resource:dungeons_arise:chests/heavenly_challenger/heavenly_challenger_supply>,
    <resource:dungeons_arise:chests/heavenly_challenger/heavenly_challenger_theater>,
    <resource:dungeons_arise:chests/heavenly_challenger/heavenly_challenger_treasure>,
    <resource:dungeons_arise:chests/heavenly_conqueror/heavenly_conqueror_barrels>,
    <resource:dungeons_arise:chests/heavenly_conqueror/heavenly_conqueror_normal>,
    <resource:dungeons_arise:chests/heavenly_conqueror/heavenly_conqueror_treasure>,
    <resource:dungeons_arise:chests/heavenly_rider/heavenly_rider_barrels>,
    <resource:dungeons_arise:chests/heavenly_rider/heavenly_rider_normal>,
    <resource:dungeons_arise:chests/heavenly_rider/heavenly_rider_treasure>,
    <resource:dungeons_arise:chests/heavenly_supply>,
    <resource:dungeons_arise:chests/heavenly_treasure>,
    <resource:dungeons_arise:chests/house_tower_treasure>,
    <resource:dungeons_arise:chests/icy_ship_small>,
    <resource:dungeons_arise:chests/illager_campsite/illager_campsite_map>,
    <resource:dungeons_arise:chests/illager_campsite/illager_campsite_supply>,
    <resource:dungeons_arise:chests/illager_campsite/illager_campsite_tent>,
    <resource:dungeons_arise:chests/illager_castle/illager_hall_bridges>,
    <resource:dungeons_arise:chests/illager_castle/illager_hall_corridors>,
    <resource:dungeons_arise:chests/illager_castle/illager_hall_treasure>,
    <resource:dungeons_arise:chests/illager_castle/illager_hall_weaponry>,
    <resource:dungeons_arise:chests/illager_corsair/illager_corsair_barrels>,
    <resource:dungeons_arise:chests/illager_corsair/illager_corsair_supply>,
    <resource:dungeons_arise:chests/illager_corsair/illager_corsair_treasure>,
    <resource:dungeons_arise:chests/illager_fort/illager_fort_barrels>,
    <resource:dungeons_arise:chests/illager_fort/illager_fort_normal>,
    <resource:dungeons_arise:chests/illager_fort/illager_fort_treasure>,
    <resource:dungeons_arise:chests/illager_fortress_big>,
    <resource:dungeons_arise:chests/illager_fortress_medium>,
    <resource:dungeons_arise:chests/illager_fortress_small>,
    <resource:dungeons_arise:chests/illager_galley/illager_galley_barrels>,
    <resource:dungeons_arise:chests/illager_galley/illager_galley_supply>,
    <resource:dungeons_arise:chests/illager_galley/illager_galley_treasure>,
    <resource:dungeons_arise:chests/illager_hall/illager_hall_bridges>,
    <resource:dungeons_arise:chests/illager_hall/illager_hall_treasure>,
    <resource:dungeons_arise:chests/illager_hall/illager_hall_weaponry>,
    <resource:dungeons_arise:chests/illager_windmill/illager_windmill_barrels>,
    <resource:dungeons_arise:chests/illager_windmill/illager_windmill_treasure>,
    <resource:dungeons_arise:chests/infested_temple/infested_temple_room_bookshelf>,
    <resource:dungeons_arise:chests/infested_temple/infested_temple_room_forge>,
    <resource:dungeons_arise:chests/infested_temple/infested_temple_room_garden>,
    <resource:dungeons_arise:chests/infested_temple/infested_temple_room_normal>,
    <resource:dungeons_arise:chests/infested_temple/infested_temple_room_supply>,
    <resource:dungeons_arise:chests/infested_temple/infested_temple_room_table>,
    <resource:dungeons_arise:chests/infested_temple/infested_temple_top_treasure>,
    <resource:dungeons_arise:chests/jungle_tree_house/jungle_tree_house_barrels>,
    <resource:dungeons_arise:chests/jungle_tree_house/jungle_tree_house_normal>,
    <resource:dungeons_arise:chests/jungle_tree_house/jungle_tree_house_treasure>,
    <resource:dungeons_arise:chests/lighthouse/lighthouse_top>,
    <resource:dungeons_arise:chests/lighthouse_top>,
    <resource:dungeons_arise:chests/mage_tower_small>,
    <resource:dungeons_arise:chests/merchant_campsite/merchant_campsite_map>,
    <resource:dungeons_arise:chests/merchant_campsite/merchant_campsite_supply>,
    <resource:dungeons_arise:chests/merchant_campsite/merchant_campsite_tent>,
    <resource:dungeons_arise:chests/mines_treasure_big>,
    <resource:dungeons_arise:chests/mines_treasure_medium>,
    <resource:dungeons_arise:chests/mines_treasure_small>,
    <resource:dungeons_arise:chests/mining_system/mining_system_barrels>,
    <resource:dungeons_arise:chests/mining_system/mining_system_treasure>,
    <resource:dungeons_arise:chests/monastery/monastery_barrels>,
    <resource:dungeons_arise:chests/monastery/monastery_bridges>,
    <resource:dungeons_arise:chests/monastery/monastery_map>,
    <resource:dungeons_arise:chests/mushroom_house/mushroom_house_barrels>,
    <resource:dungeons_arise:chests/mushroom_house/mushroom_house_normal>,
    <resource:dungeons_arise:chests/mushroom_house/mushroom_house_treasure>,
    <resource:dungeons_arise:chests/mushroom_mines/mushroom_mines_barrels>,
    <resource:dungeons_arise:chests/mushroom_mines/mushroom_mines_ores>,
    <resource:dungeons_arise:chests/mushroom_mines/mushroom_mines_tools>,
    <resource:dungeons_arise:chests/mushroom_mines/mushroom_mines_treasure>,
    <resource:dungeons_arise:chests/mushroom_village/mushroom_village_barrels>,
    <resource:dungeons_arise:chests/mushroom_village/mushroom_village_normal>,
    <resource:dungeons_arise:chests/mushroom_village/mushroom_village_potions>,
    <resource:dungeons_arise:chests/mushroom_village/mushroom_village_weaponry>,
    <resource:dungeons_arise:chests/pillager_palace_supply>,
    <resource:dungeons_arise:chests/pillager_palace_treasure>,
    <resource:dungeons_arise:chests/plague_asylum/plague_asylum_barrels>,
    <resource:dungeons_arise:chests/plague_asylum/plague_asylum_cells>,
    <resource:dungeons_arise:chests/plague_asylum/plague_asylum_normal>,
    <resource:dungeons_arise:chests/plague_asylum/plague_asylum_potions>,
    <resource:dungeons_arise:chests/plague_asylum/plague_asylum_storage>,
    <resource:dungeons_arise:chests/plague_asylum/plague_asylum_treasure>,
    <resource:dungeons_arise:chests/scorched_mines/scorched_mines_barrels>,
    <resource:dungeons_arise:chests/scorched_mines/scorched_mines_housing>,
    <resource:dungeons_arise:chests/scorched_mines/scorched_mines_hub>,
    <resource:dungeons_arise:chests/scorched_mines/scorched_mines_normal>,
    <resource:dungeons_arise:chests/scorched_mines/scorched_mines_treasure>,
    <resource:dungeons_arise:chests/ship_treasure_big>,
    <resource:dungeons_arise:chests/ship_treasure_elite>,
    <resource:dungeons_arise:chests/ship_treasure_small>,
    <resource:dungeons_arise:chests/shiraz_palace/shiraz_palace_elite>,
    <resource:dungeons_arise:chests/shiraz_palace/shiraz_palace_gardens>,
    <resource:dungeons_arise:chests/shiraz_palace/shiraz_palace_library>,
    <resource:dungeons_arise:chests/shiraz_palace/shiraz_palace_normal>,
    <resource:dungeons_arise:chests/shiraz_palace/shiraz_palace_rooms>,
    <resource:dungeons_arise:chests/shiraz_palace/shiraz_palace_towers>,
    <resource:dungeons_arise:chests/shiraz_palace/shiraz_palace_treasure>,
    <resource:dungeons_arise:chests/small_blimp/small_blimp_coal_storage>,
    <resource:dungeons_arise:chests/small_blimp/small_blimp_redstone_chamber>,
    <resource:dungeons_arise:chests/small_blimp/small_blimp_treasure>,
    <resource:dungeons_arise:chests/small_prairie_house/small_prairie_house_barrels>,
    <resource:dungeons_arise:chests/small_prairie_house/small_prairie_house_normal>,
    <resource:dungeons_arise:chests/small_prairie_house/small_prairie_house_ruined>,
    <resource:dungeons_arise:chests/steampunk_coal_storage>,
    <resource:dungeons_arise:chests/temple_treasure_big>,
    <resource:dungeons_arise:chests/temple_treasure_small>,
    <resource:dungeons_arise:chests/thornborn_towers/thornborn_towers_barrels>,
    <resource:dungeons_arise:chests/thornborn_towers/thornborn_towers_rooms>,
    <resource:dungeons_arise:chests/thornborn_towers/thornborn_towers_top_rooms>,
    <resource:dungeons_arise:chests/thornborn_towers/thornborn_towers_top_treasure>,
    <resource:dungeons_arise:chests/treehouse_medium>,
    <resource:dungeons_arise:chests/treehouse_small>,
    <resource:dungeons_arise:chests/treehouse_top>,
    <resource:dungeons_arise:chests/tribal_house>,
    <resource:dungeons_arise:chests/typhon/typhon_treasure>,
    <resource:dungeons_arise:chests/undead_pirate_ship/undead_pirate_ship_barrels>,
    <resource:dungeons_arise:chests/undead_pirate_ship/undead_pirate_ship_enchants>,
    <resource:dungeons_arise:chests/undead_pirate_ship/undead_pirate_ship_supply>,
    <resource:dungeons_arise:chests/undead_pirate_ship/undead_pirate_ship_treasure>,
    <resource:dungeons_arise:chests/winter_hall_weaponry>
];

var i as int = 0;

for dac in dungeons_arise_chests {
    removeLoot("dungeons_arise_eye_of_ender_" + i as string, dac, <item:minecraft:ender_eye>);
    i += 1;
}

removeLoot("abyss_icora_stone", <resource:theabyss:chests/underground_dungeon>, <item:theabyss:icora_stone>);

removeLoot("abyss_apple_of_immortality", <resource:theabyss:chests/underground_dungeon_room>, <item:theabyss:apple_of_immortality>);

val twilight_forest_chests as MCResourceLocation[] = [
    <resource:twilightforest:structures/aurora_cache>,
    <resource:twilightforest:structures/aurora_room>,
    <resource:twilightforest:structures/basement>,
    <resource:twilightforest:structures/darktower_boss>,
    <resource:twilightforest:structures/darktower_cache>,
    <resource:twilightforest:structures/darktower_key>,
    <resource:twilightforest:structures/graveyard>,
    <resource:twilightforest:structures/hedge_maze>,
    <resource:twilightforest:structures/hill_1>,
    <resource:twilightforest:structures/hill_2>,
    <resource:twilightforest:structures/hill_3>,
    <resource:twilightforest:structures/labyrinth_dead_end>,
    <resource:twilightforest:structures/labyrinth_room>,
    <resource:twilightforest:structures/labyrinth_vault>,
    <resource:twilightforest:structures/stronghold_boss>,
    <resource:twilightforest:structures/stronghold_cache>,
    <resource:twilightforest:structures/stronghold_room>,
    <resource:twilightforest:structures/tower_library>,
    <resource:twilightforest:structures/tower_room>,
    <resource:twilightforest:structures/tree_cache>,
    <resource:twilightforest:structures/troll_garden>,
    <resource:twilightforest:structures/troll_vault>,
    <resource:twilightforest:structures/useless>
];

i = 0;

for tfc in twilight_forest_chests {
    removeLoot("twilight_forest_uncrafting_" + i as string, tfc, <item:twilightforest:uncrafting_table>);
    i += 1;
}

val atumChests as MCResourceLocation[] = [
    <resource:atum:chests/crate>,
    <resource:atum:chests/crate_bonus>,
    <resource:atum:chests/girafi_tomb>,
    <resource:atum:chests/lighthouse>,
    <resource:atum:chests/pharaoh>,
    <resource:atum:chests/pyramid_chest>
];

val atumArtifacts as MCWeightedItemStack[] = [
    <item:atum:anputs_hunger> % 1,
    <item:atum:anubis_wrath> % 1,
    <item:atum:atems_will> % 1,
    <item:atum:gebs_might> % 1,
    <item:atum:gebs_toil> % 1,
    <item:atum:gebs_undoing> % 1,
    <item:atum:horus_ascension> % 1,
    <item:atum:montus_strike> % 1,
    <item:atum:nepthys_banishing> % 1,
    <item:atum:nuits_ire> % 1,
    <item:atum:nuits_quarter> % 1,
    <item:atum:osiris_blessing> % 1,
    <item:atum:ptahs_decadence> % 1,
    <item:atum:seths_sting> % 1,
    <item:atum:shus_exile> % 1,
    <item:atum:tefnuts_call> % 1,
    <item:atum:anputs_grounding> % 1,
    <item:atum:isis_division> % 1,
    <item:atum:montus_blast> % 1,
    <item:atum:ras_fury> % 1,
    <item:atum:seths_venom> % 1,
    <item:atum:shus_breath> % 1,
    <item:atum:tefnuts_rain> % 1,
    <item:atum:eyes_of_atem> % 1,
    <item:atum:body_of_atem> % 1,
    <item:atum:legs_of_atem> % 1,
    <item:atum:feet_of_atem> % 1,
    <item:atum:halo_of_ra> % 1,
    <item:atum:body_of_ra> % 1,
    <item:atum:legs_of_ra> % 1,
    <item:atum:feet_of_ra> % 1
];

i = 0;
for ac in atumChests {
    addLootWithChance("atum_artifact_" + i as string, ac, atumArtifacts);
    i += 1;
}

print("ENDING Loot.zs");