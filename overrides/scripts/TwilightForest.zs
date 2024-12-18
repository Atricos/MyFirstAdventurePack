// Author: Atricos
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.util.text.MCStyle;

print("STARTING TwilightForest.zs");

# Uncrafting Table
craftingTable.removeRecipe(<item:twilightforest:uncrafting_table>);

val boldColored as MCStyle = new MCStyle().setBold(true).setColor(15080990);
val bold as MCStyle = new MCStyle().setBold(true).setColor(16777215);

# Lamp of Cinders tooltip
<item:twilightforest:lamp_of_cinders>.addTooltip(
	MCTextComponent.createStringTextComponent("Note: ").setStyle(
		boldColored) as MCTextComponent 
	+ MCTextComponent.createStringTextComponent("Does not get used up in crafting!").setStyle(bold) as MCTextComponent 
);

print("ENDING TwilightForest.zs");