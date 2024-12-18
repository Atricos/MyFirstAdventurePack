// Author: Atricos
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.world.MCWorld;

print("STARTING FrostDimWither.zs");

CTEventManager.register<crafttweaker.api.event.tick.MCPlayerTickEvent>((event) => {
	 var player = event.player;
	 var world as MCWorld = player.getWorld();
	 #player.getWorld().asServerWorld().server.executeCommand
	 var dim as string = world.dimension;
	 if !world.remote {
	 var curTime as long = world.gameTime;
		 if curTime % 34 == 0 {
			 if dim == "theabyss:frost_world" {
			 	player.setHealth(player.getHealth() - 1.0);
			 }
		 }
	 }
 });

print("ENDING FrostDimWither.zs");