// Author: Atricos
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.inventory.PlayerInventory;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;

print("STARTING InitialInventory.zs");

# Starting with the quest book
mods.initialinventory.InvHandler.addStartingItem("questbook", <item:ftbquests:book>);

# Starting with a piece of paper for instructions
mods.initialinventory.InvHandler.addStartingItem("paper", <item:minecraft:paper>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"Press 'K' to open your quests\"}" as string}}));

# Starting with the Welcome Book
val welcomeBook as IItemStack = <item:minecraft:written_book>.withTag({pages: ["{\"text\":\"   ---===oOo===---\\n      §lWelcome to\\n     your first\\n  Adventure Pack!§r\\n   ---===oOo===---\\n\\n\\nThis modpack was created for first-time Modded Minecraft players that also like the adventure that this game can offer!\"}" as string, "{\"text\":\"\\nThe Overworld has been spiced up with lots of dungeons that provide the loot for you to progress.\\n\\nAfter the overworld, the player is expected to visit the Nether, the Twilight Forest, and the Atum dimension.\"}" as string, "{\"text\":\"A Quest Book has been provided to each player that shows the way to get to these dimensions with descriptions and images.\\n\\nTo access your Quest Book, either use the item in your inventory or press 'K' (by default).\"}" as string, "{\"text\":\"\\nHowever, you will need to get strong in order to face the trials of these new dimensions!\\n\\nThe first half of the Quest Book is exactly for this purpose: it provides you the tools to get much stronger than vanilla would allow you to. \"}" as string, "{\"text\":\"\\nVarious charms, trinkets, baubles, curious, necklaces, rings, staves and more have been added - most of which you can place in extra amor slots, accessed by the top-left gray dot in your inventory.\"}" as string, "{\"text\":\"\\nAdditionally, you can access much stronger weapons, armors, and enchantments than vanilla.\\n\\n\\n...Ever wondered what Sharpness 100 would feel like? Well, you can try it in this modpack!\"}" as string, "{\"text\":\"\\nAnd you WILL need the strength...! Mobs from the Twilight Forest and Atum are over twice as strong as vanilla, and when  progressing further into the Abyss dimensions you will find mobs that are over 5 times stronger. \"}" as string, "{\"text\":\"The goal of the modpack is the beat the Chaos Guardian, a boss in the End added by Draconic Evolution - the last mod you'll unlock in the pack.\\n\\nGood luck, as you'll progress through increasingly harder challenges in order to get there!\"}" as string, "{\"text\":\"\\nSo what are you waiting for!\\n\\n\\n§lOpen your Quest Book and let's get things started!!§r\"}" as string], title: "WELCOME" as string, author: "Atricos" as string});

mods.initialinventory.InvHandler.addStartingItem("welcome_book", welcomeBook);

# Starting with the Mod Information Book
val modInfo as IItemStack = <item:minecraft:written_book>.withTag({pages: ["{\"text\":\"   ---===oOo===---\\n   §lMod Information§r\\n   ---===oOo===---\\n\\nThis book contains a simple explanation of  the included mods.\\n\\nIf you're interested, feel free to read on; unless yo'd like to discover them on your own. \"}" as string,  "{\"text\":\"§nJust Enough Items (JEI)§r\\n\\nAdds an ingame wiki for items. Press R or Left Click for each items's recipe, and U or Right Click for each item's usage.\\n\\n§nJourney Map§r\\n\\nAdds a map. Press J to fullscreen!\"}" as string, "{\"text\":\"§nTinkers' Construct§r\\n\\nAllows you to melt down Ores to double their outputs, and mold them into parts, which you can then combine into tools, weapons and armor. Allows you to upgrade them further with vanilla materials for more damage, speed, looting, etc.\"}" as string, "{\"text\":\"§nSpartan Weaponry & Spartan Shields§r\\n\\nAdds a diverse set of weapons with different damage and attack speed values. Adds several enchantments, especially for shields.\"}" as string, "{\"text\":\"§nApotheosis§r\\n\\nOverhauls the enchanting system and makes higher tier enchantments available. Boss mobs can spawn that can drop tiered items with higher base stats. Allows for the creation of Potion Charms to store Potion effects.\"}" as string, "{\"text\":\"§nAstral Sorcery§r\\n\\nAllows you to harness the power of the stars, building altars to infuse items and attune yourself with a PoE-like talent tree. Adds utility tools, armor and lighting items. Allows for higher level enchantments.\"}" as string, "{\"text\":\"§nXP Tome§r\\n\\nAllows for XP storage outside the player.\\n\\n§nColossal Chests§r\\n\\nAllows you to build massive Chests.\\n\\n§nSimply Backpacks§r\\n\\nAdds Backpacks for more inventory space.\"}" as string, "{\"text\":\"§nWaystones§r\\n\\nAllows you to build Waystone which can be teleported to and between.\\n\\n§nWhen Dungeons Arise§r\\n\\nSpawns massive dungeons in the overworld.\"}" as string, "{\"text\":\"§nBountiful Baubles, Enigmatic Legacy & Reliquary Reincarnations§r\\n\\nAdds baubles, curious, charms, trinkets, utilitiy items etc.; some of which you can craft, some of which you can find in dungeons.\"}" as string,"{\"text\":\"§nInfernal Expansion§r\\n\\nAdds various blocks, items and mobs to spice up the Nether.\\n\\n§nL_Ender's Cataclysm§r\\n\\nAdds a couple bosses into the Nether and the End with large boss arenas and great loot drops.\"}" as string, "{\"text\":\"§nTwilight Forest§r\\n\\nPerhaps the best dimension mod in Minecraft. The Twilight Forest contains several tiers of bosses, all leading up to unlocking the Castle in the middle of the forest. Adds various weapons, armor and charms too.\"}" as string, "{\"text\":\"§nAtum 2: Return to the Sands§r\\n\\nAdds the Atum dimension, which is an Egyptian-themed desert, full of loot, and structures like pyramids. Adds several boss-level weapons and armor; and its own overworld-equivalent items.\"}" as string, "{\"text\":\"§nThe Abyss II§r\\n\\nYou may come across nightmares, after which you'll be able to enter the Abyss, with dangerous mobs. Adds lots of weapons and armor, spellcasting Rings and its own power system. Adds the Frost dimension, which deals constant damage in this pack.\"}" as string, "{\"text\":\"§nDraconic Evolution§r\\n\\nAdds OP weapons, tools and armor after defeating the Ender Dragon. Adds Fusion crafting to upgrade them with Modules. Adds the final boss, the Chaos Guardian.\"}" as string], title: "MOD INFORMATION" as string, author: "Atricos" as string});

mods.initialinventory.InvHandler.addStartingItem("welcome_book", modInfo);

# Removing The Abyss II guide book when the player joins
val possibleItems as IItemStack[] = [<item:theabyss:guide_book>];

CTEventManager.register<MCPlayerTickEvent>((event) => {

    if (event.isStart()) {
	
        val player = event.player as MCPlayerEntity;
        val inventory = player.getInventory() as PlayerInventory;
	
        for it in possibleItems {
            if (inventory.hasIItemStack(it as IIngredient)) {
                inventory.remove(it);
            }
        }
    }
});

print("ENDING InitialInventory.zs");