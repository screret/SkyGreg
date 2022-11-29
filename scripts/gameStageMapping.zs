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
stage_zpm.addRecipeRegex("gregtech:.*machine.*mv");

stage_dml.addRecipeRegex("deepmoblearning:.*");


ZenStager.buildAll();