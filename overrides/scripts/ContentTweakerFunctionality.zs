// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.potion.MCPotionEffectInstance;
import mods.contenttweaker.functions.IItemRightClick;
import crafttweaker.api.player.MCPlayerEntity;
import mods.contenttweaker.item.advance.CoTItemAdvanced;
import crafttweaker.api.util.ActionResultType;
import crafttweaker.api.world.MCWorld;

print("STARTING ContentTweakerFunctionality.zs");

<advanceditem:instant_bandage>.setOnItemRightClick((item, playerEntity, world, hand) => {
    if(world.remote) {
        return ActionResultType.PASS;
    }
    playerEntity.heal(4.0F);
    item.shrink();

    return ActionResultType.SUCCESS;
});

<advanceditem:commander_flag>.setOnItemRightClick((item, playerEntity, world, hand) => {
    if(world.remote) {
        return ActionResultType.PASS;
    }
    world.asServerWorld().server.executeCommand(
    "execute at @p run effect give @e[distance=0..30] minecraft:strength 30 1 false", playerEntity, true);
    item.shrink();

    return ActionResultType.SUCCESS;
});

print("ENDING ContentTweakerFunctionality.zs");