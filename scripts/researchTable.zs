import mods.ResearchTable;
import ResearchTable.Category;
import ResearchTable.Builder;

var categoryMachinery = ResearchTable.addCategory(<gregtech:warning_sign_1:5>, "Machinery"); //category icon and title (optional)
var categoryExtras = ResearchTable.addCategory(<deepmoblearning:simulation_chamber>, "Extras");

ResearchTable.builder("steam", categoryMachinery)
    .setIcons(<gregtech:steam_casing>)
    .setTitle("Steam Devicery") // I18n support: use language key
    .setDescription("Research on Steam machinery")
    .addCondition(<metaitem:ingotBronze> * 16)
    .setRewardStages("STEAM")
    .setMaxCount(1)
    .build();
ResearchTable.builder("ulv", categoryMachinery)
    .setIcons(<gregtech:machine_casing>)
    .setTitle("Ultra Low Voltage") // I18n support: use language key
    .setDescription("Research on Ulta Low Voltage machinery")
    .addCondition(<metaitem:ingotWroughtIron> * 16)
    .setRequiredResearches("steam")
    .setRewardStages("ULV")
    .setMaxCount(1)
    .build();
ResearchTable.builder("lv", categoryMachinery)
    .setIcons(<gregtech:machine_casing:1>)
    .setTitle("Low Voltage") // I18n support: use language key
    .setDescription("Research on Low Voltage machinery")
    .addCondition(<metaitem:ingotSteel> * 16)
    .setRequiredResearches("ulv")
    .setRewardStages("LV")
    .setMaxCount(1)
    .build();
ResearchTable.builder("mv", categoryMachinery)
    .setIcons(<gregtech:machine_casing:2>)
    .setTitle("Medium Voltage") // I18n support: use language key
    .setDescription("Research on Medium Voltage machinery")
    .addCondition(<metaitem:ingotAluminium> * 16)
    .setRequiredResearches("lv")
    .setRewardStages("MV")
    .setMaxCount(1)
    .build();
ResearchTable.builder("hv", categoryMachinery)
    .setIcons(<gregtech:machine_casing:3>)
    .setTitle("High Voltage") // I18n support: use language key
    .setDescription("Research on High Voltage machinery")
    .addCondition(<metaitem:ingotStainlessSteel> * 16)
    .setRequiredResearches("mv")
    .setRewardStages("HV")
    .setMaxCount(1)
    .build();
ResearchTable.builder("ev", categoryMachinery)
    .setIcons(<gregtech:machine_casing:4>)
    .setTitle("Extreme Voltage") // I18n support: use language key
    .setDescription("Research on Exteme Voltage machinery")
    .addCondition(<metaitem:ingotTitanium> * 16)
    .setRequiredResearches("hv")
    .setRewardStages("EV")
    .setMaxCount(1)
    .build();
ResearchTable.builder("iv", categoryMachinery)
    .setIcons(<gregtech:machine_casing:5>)
    .setTitle("Insane Voltage") // I18n support: use language key
    .setDescription("Research on Insane Voltage machinery")
    .addCondition(<metaitem:ingotTungstenSteel> * 16)
    .setRequiredResearches("ev")
    .setRewardStages("IV")
    .setMaxCount(1)
    .build();
ResearchTable.builder("luv", categoryMachinery)
    .setIcons(<gregtech:machine_casing:6>)
    .setTitle("Ludicrous Voltage") // I18n support: use language key
    .setDescription("Research on Ludicrous Voltage machinery")
    .addCondition(<metaitem:ingotRhodiumPlatedPalladium> * 16)
    .setRequiredResearches("iv")
    .setRewardStages("LUV")
    .setMaxCount(1)
    .build();
ResearchTable.builder("zpm", categoryMachinery)
    .setIcons(<gregtech:machine_casing:7>)
    .setTitle("Zero Point Module") // I18n support: use language key
    .setDescription("Research on Zero Point Module machinery")
    .addCondition(<metaitem:ingotNaquadahAlloy> * 16)
    .setRequiredResearches("luv")
    .setRewardStages("ZPM")
    .setMaxCount(1)
    .build();
ResearchTable.builder("uv", categoryMachinery)
    .setIcons(<gregtech:machine_casing:8>)
    .setTitle("Ultimate Voltage") // I18n support: use language key
    .setDescription("Research on Ultimate Voltage machinery")
    .addCondition(<metaitem:ingotDarmstadtium> * 16)
    .setRequiredResearches("zpm")
    .setRewardStages("UV")
    .setMaxCount(1)
    .build();

ResearchTable.builder("dml", categoryExtras)
    .setIcons(<deepmoblearning:simulation_chamber>)
    .setTitle("Deep Mob Learning") // I18n support: use language key
    .setDescription("Research on Deep Mob Learning AI resource generation")
    .addCondition(<metaitem:ingotDarmstadtium> * 16)
    .setRewardStages("DML")
    .setMaxCount(1)
    .build();
