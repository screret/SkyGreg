// Decompiled with: CFR 0.152
// Class Version: 8
package com.zook.devtech.api.machines;

import com.zook.devtech.api.machines.IMoveType;
import com.zook.devtech.common.machines.recipe.CTRecipeBuilder;
import crafttweaker.annotations.ModOnly;
import crafttweaker.annotations.ZenRegister;
import gnu.trove.map.TByteObjectMap;
import gnu.trove.map.hash.TByteObjectHashMap;
import gregtech.api.gui.GuiTextures;
import gregtech.api.gui.resources.TextureArea;
import gregtech.api.gui.widgets.ProgressWidget;
import gregtech.api.recipes.RecipeMap;
import gregtech.api.recipes.builders.SimpleRecipeBuilder;
import net.minecraft.util.ResourceLocation;
import net.minecraft.util.SoundEvent;
import net.minecraftforge.fml.common.registry.ForgeRegistries;
import stanhebben.zenscript.annotations.Optional;
import stanhebben.zenscript.annotations.ZenClass;
import stanhebben.zenscript.annotations.ZenMethod;

@ZenClass(value="mods.gregtech.recipe.RecipeMapBuilder")
@ZenRegister
public class RecipeMapBuilder {
    private int minInputs = 0;
    private int maxInputs = 0;
    private int minOutputs = 0;
    private int maxOutputs = 0;
    private int minFluidInputs = 0;
    private int maxFluidInputs = 0;
    private int minFluidOutputs = 0;
    private int maxFluidOutputs = 0;
    private final String name;
    private boolean isHidden = false;
    private final TByteObjectMap<TextureArea> slotOverlays = new TByteObjectHashMap<TextureArea>();
    private ProgressWidget.MoveType moveType = ProgressWidget.MoveType.HORIZONTAL;
    private TextureArea progressBarTexture = GuiTextures.PROGRESS_BAR_ARROW;
    private RecipeMap.IChanceFunction chanceFunction;
    private SoundEvent sound;

    public RecipeMapBuilder(String name) {
        this.name = name;
    }

    @ZenMethod
    public static RecipeMapBuilder create(String name) {
        return new RecipeMapBuilder(name);
    }

    @ZenMethod
    public RecipeMapBuilder setInputs(int max, @Optional int min) {
        if (min < 0) {
            min = 0;
        }
        if (max < 0) {
            max = 0;
        }
        if (min > max) {
            min = max;
        }
        this.maxInputs = max;
        this.minInputs = min;
        return this;
    }

    @ZenMethod
    public RecipeMapBuilder setOutputs(int max, @Optional int min) {
        if (min < 0) {
            min = 0;
        }
        if (max < 0) {
            max = 0;
        }
        if (min > max) {
            min = max;
        }
        this.maxOutputs = max;
        this.minOutputs = min;
        return this;
    }

    @ZenMethod
    public RecipeMapBuilder setFluidInputs(int max, @Optional int min) {
        if (min < 0) {
            min = 0;
        }
        if (max < 0) {
            max = 0;
        }
        if (min > max) {
            min = max;
        }
        this.maxFluidInputs = max;
        this.minFluidInputs = min;
        return this;
    }

    @ZenMethod
    public RecipeMapBuilder setFluidOutputs(int max, @Optional int min) {
        if (min < 0) {
            min = 0;
        }
        if (max < 0) {
            max = 0;
        }
        if (min > max) {
            min = max;
        }
        this.maxFluidOutputs = max;
        this.minFluidOutputs = min;
        return this;
    }

    @ZenMethod
    public RecipeMapBuilder setHidden(boolean hidden) {
        this.isHidden = hidden;
        return this;
    }

    @ZenMethod
    public RecipeMapBuilder setDurationBar(String path, @Optional IMoveType moveType) {
        this.progressBarTexture = TextureArea.fullImage(path);
        if (moveType != null) {
            this.moveType = moveType.moveType;
        }
        return this;
    }

    @ZenMethod
    public RecipeMapBuilder setChanceFunction(RecipeMap.IChanceFunction chanceFunction) {
        this.chanceFunction = chanceFunction;
        return this;
    }

    @ZenMethod
    public RecipeMapBuilder setSound(String name) {
        ResourceLocation loc = new ResourceLocation(name);
        SoundEvent sound = ForgeRegistries.SOUND_EVENTS.getValue(loc);
        if (sound != null) {
            this.sound = sound;
        }
        return this;
    }

    @ZenMethod
    public RecipeMap<?> build() {
        RecipeMap recipeMap = new RecipeMap(this.name, this.minInputs, this.maxInputs, this.minOutputs, this.maxOutputs, this.minFluidInputs, this.maxFluidInputs, this.minFluidOutputs, this.maxFluidOutputs, new SimpleRecipeBuilder(), this.isHidden);
        for (byte key : this.slotOverlays.keys()) {
            recipeMap.setSlotOverlay((key & 2) != 0, (key & 1) != 0, (key & 4) != 0, this.slotOverlays.get(key));
        }
        if (this.progressBarTexture != null && this.moveType != null) {
            recipeMap.setProgressBar(this.progressBarTexture, this.moveType);
        }
        if (this.chanceFunction != null) {
            recipeMap.chanceFunction = this.chanceFunction;
        }
        if (this.sound != null) {
            recipeMap.setSound(this.sound);
        }
        return recipeMap;
    }
}
