import mods.zenstages.ZenStager;

stage_steam.addRecipeRegex("gregtech:steam.*");
stage_ulv.addRecipeRegex("gregtech:.*machine.*ulv");
stage_lv.addRecipeRegex("gregtech:.*machine.*lv");
stage_mv.addRecipeRegex("gregtech:.*machine.*mv");
stage_hv.addRecipeRegex("gregtech:.*machine.*hv");
stage_ev.addRecipeRegex("gregtech:.*machine.*ev");
stage_iv.addRecipeRegex("gregtech:.*machine.*iv");
stage_luv.addRecipeRegex("gregtech:.*machine.*luv");
stage_zpm.addRecipeRegex("gregtech:.*machine.*zpm");
stage_uv.addRecipeRegex("gregtech:.*machine.*uv");
stage_max.addRecipeRegex("gregtech:.*machine.*max");

stage_dml.addRecipeRegex("deepmoblearning:.*");
stage_lcr.addRecipeName("gregtech:large_chemical_reactor");
stage_rocket.addRecipeRegex("advancedrocketry:.*");
stage_oil.addIngredients([<gregtech:machine:1032>, <gregtech:machine:1033>,<gregtech:machine:1034>], true);
stage_miner.addRecipeRegex("gregtech:.*oil.*");

stage_hell.addDimension(-1);

ZenStager.buildAll();