Addon.data.Hekili = {
  ["displays"] = {
    ["Interrupts"] = {
      ["primaryHeight"] = 36,
      ["keybindings"] = {
        ["fontSize"] = 14,
      },
      ["queue"] = {
        ["width"] = 42,
        ["height"] = 36,
      },
      ["y"] = -68,
      ["primaryWidth"] = 42,
    },
    ["Cooldowns"] = {
      ["primaryHeight"] = 36,
      ["keybindings"] = {
        ["fontSize"] = 14,
      },
      ["queue"] = {
        ["width"] = 42,
        ["height"] = 36,
      },
      ["y"] = -26,
      ["primaryWidth"] = 42,
    },
    ["Primary"] = {
      ["primaryWidth"] = 42,
      ["numIcons"] = 5,
      ["keybindings"] = {
        ["fontSize"] = 14,
      },
      ["queue"] = {
        ["width"] = 42,
        ["height"] = 36,
      },
      ["y"] = -68,
      ["primaryHeight"] = 36,
    },
    ["AOE"] = {
      ["numIcons"] = 5,
      ["keybindings"] = {
        ["fontSize"] = 14,
      },
      ["queue"] = {
        ["width"] = 42,
        ["height"] = 36,
      },
      ["y"] = -110,
      ["primaryHeight"] = 36,
      ["primaryWidth"] = 42,
    },
    ["Defensives"] = {
      ["primaryHeight"] = 36,
      ["keybindings"] = {
        ["fontSize"] = 14,
      },
      ["queue"] = {
        ["width"] = 42,
        ["height"] = 36,
      },
      ["y"] = -68,
      ["primaryWidth"] = 42,
    },
  },
  ["runOnce"] = {
    ["forceReloadAllDefaultPriorities_20220228"] = true,
    ["forceEnableAllClassesOnceDueToBug_20220225"] = true,
    ["removeOldThrottles_20241115"] = true,
    ["forceReloadClassDefaultOptions_20220306_262"] = true,
    ["forceReloadClassDefaultOptions_20220306_264"] = true,
    ["fixHavocPriorityVersion_20240805"] = true,
    ["forceReloadClassDefaultOptions_20220306_263"] = true,
    ["resetAberrantPackageDates_20190728_1"] = true,
    ["forceSpellFlashBrightness_20221030"] = true,
  },
  ["toggles"] = {
    ["defensives"] = {
      ["separate"] = true,
    },
    ["interrupts"] = {
      ["separate"] = true,
    },
    ["cooldowns"] = {
      ["separate"] = true,
    },
  },
  ["notifications"] = {
    ["y"] = 256,
  },
  ["specs"] = {
    [263] = {
      ["settings"] = {
        ["filler_shock"] = true,
        ["pad_lava_lash"] = true,
        ["pad_windstrike"] = true,
        ["funnel_priority"] = false,
        ["pwave_targets"] = 0,
        ["hostile_dispel"] = false,
        ["pwave_gcds"] = 4,
        ["purge_icd"] = 12,
      },
    },
    [264] = {
      ["settings"] = {
        ["second_shield"] = "earth_shield",
        ["healing_mode"] = false,
      },
    },
    [262] = {
      ["settings"] = {
        ["purge_icd"] = 12,
        ["hostile_dispel"] = false,
        ["stack_buffer"] = 1.1,
      },
    },
  },
  ["packs"] = {
    ["Enhancement"] = {
      ["source"] = "https://github.com/simulationcraft/simc/blob/dragonflight/engine/class_modules/sc_shaman.cpp",
      ["builtIn"] = true,
      ["date"] = 20241109.1,
      ["spec"] = 263,
      ["desc"] =
      "2024-11-09: Spread Flame Shock before Ascendance (SB); use Tempest to swap Thorim's Invocation\n\n2024-11-03: SimC update; Thorim's Invocation\n\n2024-11-02: 11.0.5 Revamp; fix Funnel; 2nd SimC update\n\n2024-10-29: Totemic WiP and EB fixes\n\n2024-10-27: Voltaic Blaze\n\n2024-10-23: Add missed single target changes; Totemic\n - Funnel / cycling adjustments\n\n2024-10-22: 11.0.5\n\n2024-10-16, 10-21: SimC updates; Thorim's Invocation adjustment\n\n2024-09-30: Test Lava Lash in AOE\n\n2024-09-09: SimC update\n\n2024-09-08: Fix filler_shock\n\n2024-08-22, 08-24, 08-25: SimC priority update\n\n2024-07-23: The War Within",
      ["lists"] = {
        ["single"] = {
          {
            ["enabled"] = true,
            ["criteria"] = "talent.elemental_spirits.enabled",
            ["action"] = "feral_spirit",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.thorims_invocation.enabled & buff.maelstrom_weapon.stack > 0 & ti_lightning_bolt & ! talent.elemental_spirits.enabled",
            ["action"] = "windstrike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! dot.flame_shock.ticking & talent.molten_assault.enabled",
            ["action"] = "primordial_wave",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.lashing_flames.enabled & debuff.lashing_flames.down",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.maelstrom_weapon.stack < 2 & cooldown.ascendance.remains = 0",
            ["action"] = "stormstrike",
          },
          {
            ["action"] = "feral_spirit",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "cast_time = 0 & talent.ascendance.enabled & cooldown.ascendance.remains < 2 * gcd.max & talent.thorims_invocation.enabled & ! ti_lightning_bolt",
            ["action"] = "tempest",
            ["description"] = "[Hekili] Avoid delaying Ascendance due to Thorim's Invocation",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "cast_time = 0 & talent.ascendance.enabled & cooldown.ascendance.remains < 2 * gcd.max & talent.thorims_invocation.enabled & ! ti_lightning_bolt",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "dot.flame_shock.ticking & ti_lightning_bolt & active_enemies = 1 & buff.maelstrom_weapon.stack >= 2",
            ["action"] = "ascendance",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack || ( buff.tempest.stack = buff.tempest.max_stack & ( tempest_mael_count > 30 || buff.awakening_storms.stack = 2 ) & buff.maelstrom_weapon.stack >= 5 )",
            ["action"] = "tempest",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & talent.elemental_spirits.enabled & feral_spirit.active >= 6 & ( charges_fractional >= 1.8 || buff.ascendance.up )",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.thorims_invocation.enabled & buff.maelstrom_weapon.stack > 0 & ti_lightning_bolt & charges = max_charges",
            ["action"] = "windstrike",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.elemental_spirits.enabled & talent.ascendance.enabled & buff.maelstrom_weapon.stack >= 2",
            ["action"] = "doom_winds",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.thorims_invocation.enabled & buff.maelstrom_weapon.up & ti_lightning_bolt",
            ["action"] = "windstrike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! ticking & talent.ashen_catalyst.enabled",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & buff.primordial_wave.up",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( ! talent.overflowing_maelstrom.enabled & buff.maelstrom_weapon.stack >= 5 ) || ( buff.maelstrom_weapon.stack >= 10 - 2 * talent.elemental_spirits.enabled )",
            ["action"] = "tempest",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! talent.deeply_rooted_elements.enabled",
            ["action"] = "primordial_wave",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack >= 8 & feral_spirit.active >= 4 & ( ! buff.ascendance.up || charges_fractional >= 1.8 )",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.maelstrom_weapon.stack >= 8 + 2 * talent.legacy_of_the_frost_witch.enabled",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack >= 5 & ! talent.legacy_of_the_frost_witch.enabled & ( talent.deeply_rooted_elements.enabled || ! talent.overflowing_maelstrom.enabled || ! talent.witch_doctors_ancestry.enabled )",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.voltaic_blaze.up & talent.elemental_spirits.enabled & ! talent.witch_doctors_ancestry.enabled",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.arc_discharge.up & talent.deeply_rooted_elements.enabled",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.hot_hand.up || ( buff.ashen_catalyst.stack = buff.ashen_catalyst.max_stack )",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.doom_winds.up || ( talent.stormblast.enabled & buff.stormsurge.up & charges = max_charges )",
            ["action"] = "stormstrike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.lashing_flames.enabled & ! buff.doom_winds.up",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.voltaic_blaze.up & talent.elemental_spirits.enabled & ! buff.doom_winds.up",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.unrelenting_storms.enabled & talent.elemental_spirits.enabled & ! talent.deeply_rooted_elements.enabled",
            ["action"] = "crash_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.elemental_assault.enabled & talent.swirling_maelstrom.enabled & talent.witch_doctors_ancestry.enabled",
            ["action"] = "ice_strike",
          },
          {
            ["action"] = "stormstrike",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack >= 5 & talent.ascendance.enabled & ! talent.legacy_of_the_frost_witch.enabled",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.unrelenting_storms.enabled",
            ["action"] = "crash_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.voltaic_blaze.up",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! talent.elemental_spirits.enabled",
            ["action"] = "sundering",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.hailstorm.up & buff.ice_strike.up & talent.swirling_maelstrom.enabled & talent.ascendance.enabled",
            ["action"] = "frost_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack >= 5 & feral_spirit.active >= 4 & talent.deeply_rooted_elements.enabled & ( charges_fractional >= 1.8 || ( buff.molten_weapon.stack + buff.icy_edge.stack >= 4 ) ) & ! talent.flowing_spirits.enabled",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.alpha_wolf.enabled & feral_spirit.active & alpha_wolf_min_remains = 0",
            ["action"] = "crash_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! ticking & ! talent.tempest.enabled",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.elemental_spirits.enabled",
            ["action"] = "doom_winds",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.elemental_assault.enabled & talent.tempest.enabled & talent.molten_assault.enabled & talent.deeply_rooted_elements.enabled & dot.flame_shock.ticking",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.elemental_assault.enabled & talent.swirling_maelstrom.enabled",
            ["action"] = "ice_strike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.arc_discharge.up",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.unrelenting_storms.enabled",
            ["action"] = "crash_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.elemental_assault.enabled & talent.tempest.enabled & talent.molten_assault.enabled & dot.flame_shock.ticking",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.hailstorm.up & buff.ice_strike.up & talent.swirling_maelstrom.enabled & talent.tempest.enabled",
            ["action"] = "frost_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! ticking",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.lashing_flames.enabled",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! buff.ice_strike.up",
            ["action"] = "ice_strike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.hailstorm.up",
            ["action"] = "frost_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.converging_storms.enabled",
            ["action"] = "crash_lightning",
          },
          {
            ["action"] = "lava_lash",
            ["enabled"] = true,
          },
          {
            ["action"] = "ice_strike",
            ["enabled"] = true,
          },
          {
            ["action"] = "windstrike",
            ["enabled"] = true,
          },
          {
            ["action"] = "stormstrike",
            ["enabled"] = true,
          },
          {
            ["action"] = "sundering",
            ["enabled"] = true,
          },
          {
            ["action"] = "frost_shock",
            ["enabled"] = true,
          },
          {
            ["action"] = "crash_lightning",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "active_dot.flame_shock",
            ["action"] = "fire_nova",
          },
          {
            ["action"] = "earth_elemental",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "settings.filler_shock",
            ["action"] = "flame_shock",
          },
        },
        ["funnel"] = {
          {
            ["enabled"] = true,
            ["criteria"] = "talent.elemental_spirits.enabled",
            ["action"] = "feral_spirit",
          },
          {
            ["action"] = "surging_totem",
            ["enabled"] = true,
          },
          {
            ["action"] = "ascendance",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( talent.thorims_invocation.enabled & buff.maelstrom_weapon.stack > 0 ) || buff.converging_storms.stack = buff.converging_storms.max_stack",
            ["action"] = "windstrike",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack || ( buff.maelstrom_weapon.stack >= 5 & ( tempest_mael_count > 30 || buff.awakening_storms.stack = 2 ) )",
            ["action"] = "tempest",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( active_dot.flame_shock >= active_enemies || active_dot.flame_shock = 6 ) & buff.primordial_wave.up & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & ( ! buff.splintered_elements.up || fight_remains <= 12 || raid_event.adds.remains <= gcd.max )",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack >= 5 & talent.elemental_spirits.enabled & feral_spirit.active >= 4",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.supercharge.enabled & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & ( variable.expected_lb_funnel > variable.expected_cl_funnel )",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( talent.supercharge.enabled & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack ) || buff.arc_discharge.up & buff.maelstrom_weapon.stack >= 5",
            ["action"] = "chain_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( talent.molten_assault.enabled & dot.flame_shock.ticking & ( active_dot.flame_shock < active_enemies ) & active_dot.flame_shock < 6 ) || ( talent.ashen_catalyst.enabled & buff.ashen_catalyst.stack = buff.ashen_catalyst.max_stack )",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! buff.primordial_wave.up",
            ["action"] = "primordial_wave",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( ! talent.elemental_spirits.enabled || ( talent.elemental_spirits.enabled & ( charges = max_charges || buff.feral_spirit.up ) ) ) & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack",
            ["action"] = "elemental_blast",
          },
          {
            ["action"] = "feral_spirit",
            ["enabled"] = true,
          },
          {
            ["action"] = "doom_winds",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.converging_storms.stack = buff.converging_storms.max_stack",
            ["action"] = "stormstrike",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.molten_weapon.stack > buff.crackling_surge.stack ) & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack",
            ["action"] = "lava_burst",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & ( variable.expected_lb_funnel > variable.expected_cl_funnel )",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack",
            ["action"] = "chain_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.doom_winds.up || ! buff.crash_lightning.up || ( talent.alpha_wolf.enabled & feral_spirit.active & alpha_wolf_min_remains = 0 ) || ( talent.converging_storms.enabled & buff.converging_storms.stack < buff.converging_storms.max_stack )",
            ["action"] = "crash_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.doom_winds.up || talent.earthsurge.enabled",
            ["action"] = "sundering",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "active_dot.flame_shock = 6 || ( active_dot.flame_shock >= 4 & active_dot.flame_shock >= active_enemies )",
            ["action"] = "fire_nova",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.hailstorm.enabled & ! buff.ice_strike.up",
            ["action"] = "ice_strike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.hailstorm.enabled & buff.hailstorm.up",
            ["action"] = "frost_shock",
          },
          {
            ["action"] = "sundering",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.molten_assault.enabled & ! ticking",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "refreshable & ( talent.fire_nova.enabled || talent.primordial_wave.enabled ) & ( active_dot.flame_shock < active_enemies ) & active_dot.flame_shock < 6",
            ["action"] = "flame_shock",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "active_dot.flame_shock >= 3",
            ["action"] = "fire_nova",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.crash_lightning.up & talent.deeply_rooted_elements.enabled",
            ["action"] = "stormstrike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.crashing_storms.enabled & buff.cl_crash_lightning.up & active_enemies >= 4",
            ["action"] = "crash_lightning",
          },
          {
            ["action"] = "windstrike",
            ["enabled"] = true,
          },
          {
            ["action"] = "stormstrike",
            ["enabled"] = true,
          },
          {
            ["action"] = "ice_strike",
            ["enabled"] = true,
          },
          {
            ["action"] = "lava_lash",
            ["enabled"] = true,
          },
          {
            ["action"] = "crash_lightning",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "active_dot.flame_shock >= 2",
            ["action"] = "fire_nova",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( ! talent.elemental_spirits.enabled || ( talent.elemental_spirits.enabled & ( charges = max_charges || buff.feral_spirit.up ) ) ) & buff.maelstrom_weapon.stack >= 5",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "( buff.molten_weapon.stack > buff.crackling_surge.stack ) & buff.maelstrom_weapon.stack >= 5",
            ["action"] = "lava_burst",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack >= 5 & ( variable.expected_lb_funnel > variable.expected_cl_funnel )",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.maelstrom_weapon.stack >= 5",
            ["action"] = "chain_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! ticking",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! talent.hailstorm.enabled",
            ["action"] = "frost_shock",
          },
        },
        ["default"] = {
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & ( fight_remains % 300 <= 30 ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
            ["action"] = "potion",
          },
          {
            ["enabled"] = true,
            ["description"] = "Interrupt of casts.",
            ["action"] = "wind_shear",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.dispellable_magic.up",
            ["action"] = "purge",
            ["line_cd"] = "settings.purge_icd",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.dispellable_magic.up",
            ["action"] = "greater_purge",
          },
          {
            ["enabled"] = true,
            ["use_off_gcd"] = 1,
            ["action"] = "elementium_pocket_anvil",
            ["name"] = "elementium_pocket_anvil",
          },
          {
            ["enabled"] = true,
            ["action"] = "algethar_puzzle_box",
            ["use_off_gcd"] = 1,
            ["criteria"] =
            "( ! buff.ascendance.up & ! buff.feral_spirit.up & ! buff.doom_winds.up ) || ( talent.ascendance.enabled & ( cooldown.ascendance.remains < 2 * action.stormstrike.gcd ) ) || ( fight_remains % 180 <= 30 )",
            ["name"] = "algethar_puzzle_box",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "! variable.trinket1_is_weird & trinket.t1.has_use_buff & ( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & ( fight_remains % trinket.t1.cooldown.duration <= trinket.t1.buff_duration ) || ( variable.min_talented_cd_remains >= trinket.t1.cooldown.duration ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
            ["action"] = "trinket1",
            ["slot"] = "trinket1",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "! variable.trinket2_is_weird & trinket.t2.has_use_buff & ( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & ( fight_remains % trinket.t2.cooldown.duration <= trinket.t2.buff_duration ) || ( variable.min_talented_cd_remains >= trinket.t2.cooldown.duration ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
            ["action"] = "trinket2",
            ["slot"] = "trinket2",
          },
          {
            ["enabled"] = true,
            ["action"] = "beacon_to_the_beyond",
            ["use_off_gcd"] = 1,
            ["criteria"] =
            "( ! buff.ascendance.up & ! buff.feral_spirit.up & ! buff.doom_winds.up ) || boss & ( fight_remains % 150 <= 5 )",
            ["name"] = "beacon_to_the_beyond",
          },
          {
            ["enabled"] = true,
            ["action"] = "manic_grieftorch",
            ["use_off_gcd"] = 1,
            ["criteria"] =
            "( ! buff.ascendance.up & ! buff.feral_spirit.up & ! buff.doom_winds.up ) || boss & ( fight_remains % 120 <= 5 )",
            ["name"] = "manic_grieftorch",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! variable.trinket1_is_weird & ! trinket.t1.has_use_buff",
            ["action"] = "trinket1",
            ["slot"] = "trinket1",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! variable.trinket2_is_weird & ! trinket.t2.has_use_buff",
            ["action"] = "trinket2",
            ["slot"] = "trinket2",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & ( fight_remains % action.blood_fury.cooldown <= action.blood_fury.duration ) || ( variable.min_talented_cd_remains >= action.blood_fury.cooldown ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
            ["action"] = "blood_fury",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & ( fight_remains % action.berserking.cooldown <= action.berserking.duration ) || ( variable.min_talented_cd_remains >= action.berserking.cooldown ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
            ["action"] = "berserking",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || ( boss & fight_remains % action.fireblood.cooldown <= action.fireblood.duration ) || ( variable.min_talented_cd_remains >= action.fireblood.cooldown ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
            ["action"] = "fireblood",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.ascendance.up || buff.feral_spirit.up || buff.doom_winds.up || boss & ( fight_remains % action.ancestral_call.cooldown <= action.ancestral_call.duration ) || ( variable.min_talented_cd_remains >= action.ancestral_call.cooldown ) || ( ! talent.ascendance.enabled & ! talent.feral_spirit.enabled & ! talent.doom_winds.enabled ) )",
            ["action"] = "ancestral_call",
          },
          {
            ["enabled"] = true,
            ["action"] = "call_action_list",
            ["strict"] = 1,
            ["criteria"] = "active_enemies = 1 & ! talent.surging_totem.enabled",
            ["list_name"] = "single",
          },
          {
            ["enabled"] = true,
            ["action"] = "call_action_list",
            ["strict"] = 1,
            ["criteria"] = "active_enemies = 1 & talent.surging_totem.enabled",
            ["list_name"] = "single_totemic",
          },
          {
            ["enabled"] = true,
            ["action"] = "call_action_list",
            ["strict"] = 1,
            ["criteria"] = "active_enemies > 1 & ! toggle.funnel & ! talent.surging_totem.enabled",
            ["list_name"] = "aoe",
          },
          {
            ["enabled"] = true,
            ["action"] = "call_action_list",
            ["strict"] = 1,
            ["criteria"] = "active_enemies > 1 & ! toggle.funnel & talent.surging_totem.enabled",
            ["list_name"] = "aoe_totemic",
          },
          {
            ["enabled"] = true,
            ["action"] = "call_action_list",
            ["strict"] = 1,
            ["criteria"] = "active_enemies > 1 & toggle.funnel",
            ["list_name"] = "funnel",
          },
        },
        ["precombat"] = {
          {
            ["action"] = "windfury_weapon",
            ["enabled"] = true,
          },
          {
            ["action"] = "flametongue_weapon",
            ["enabled"] = true,
          },
          {
            ["action"] = "lightning_shield",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["op"] = "set",
            ["action"] = "variable",
            ["value"] =
            "trinket.t1.is.algethar_puzzle_box || trinket.t1.is.manic_grieftorch || trinket.t1.is.elementium_pocket_anvil || trinket.t1.is.beacon_to_the_beyond",
            ["var_name"] = "trinket1_is_weird",
          },
          {
            ["enabled"] = true,
            ["op"] = "set",
            ["action"] = "variable",
            ["value"] =
            "trinket.t2.is.algethar_puzzle_box || trinket.t2.is.manic_grieftorch || trinket.t2.is.elementium_pocket_anvil || trinket.t2.is.beacon_to_the_beyond",
            ["var_name"] = "trinket2_is_weird",
          },
          {
            ["enabled"] = true,
            ["op"] = "set",
            ["action"] = "variable",
            ["value"] =
            "( ( cooldown.feral_spirit.remains / ( 4 * talent.witch_doctors_ancestry.enabled ) ) + 1000 * ! talent.feral_spirit.enabled ) >? ( cooldown.doom_winds.remains + 1000 * ! talent.doom_winds.enabled ) >? ( cooldown.ascendance.remains + 1000 * ! talent.ascendance.enabled )",
            ["var_name"] = "min_talented_cd_remains",
          },
          {
            ["enabled"] = true,
            ["op"] = "set",
            ["action"] = "variable",
            ["value"] =
            "( 1 + debuff.chaos_brand.up * debuff.chaos_brand.value ) * ( 1 + ( debuff.hunters_mark.up * target.health.pct >= 80 ) * debuff.hunters_mark.value )",
            ["var_name"] = "target_nature_mod",
          },
          {
            ["enabled"] = true,
            ["op"] = "set",
            ["action"] = "variable",
            ["value"] =
            "action.lightning_bolt.damage * ( 1 + debuff.lightning_rod.up * variable.target_nature_mod * ( 1 + buff.primordial_wave.up * active_dot.flame_shock * buff.primordial_wave.value ) * debuff.lightning_rod.value )",
            ["var_name"] = "expected_lb_funnel",
          },
          {
            ["enabled"] = true,
            ["op"] = "set",
            ["action"] = "variable",
            ["value"] =
            "action.chain_lightning.damage * ( 1 + debuff.lightning_rod.up * variable.target_nature_mod * ( active_enemies >? ( 3 + 2 * talent.crashing_storms.enabled ) ) * debuff.lightning_rod.value )",
            ["var_name"] = "expected_cl_funnel",
          },
        },
        ["single_totemic"] = {
          {
            ["action"] = "surging_totem",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "cast_time = 0 & talent.ascendance.enabled & cooldown.ascendance.remains < 2 * gcd.max & talent.thorims_invocation.enabled & ! ti_lightning_bolt",
            ["action"] = "tempest",
            ["description"] = "[Hekili] Avoid delaying Ascendance due to Thorim's Invocation",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "cast_time = 0 & talent.ascendance.enabled & cooldown.ascendance.remains < 2 * gcd.max & talent.thorims_invocation.enabled & ! ti_lightning_bolt",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "ti_lightning_bolt & pet.surging_totem.remains > 4 & ( buff.totemic_rebound.stack >= 3 || buff.maelstrom_weapon.up )",
            ["action"] = "ascendance",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! talent.elemental_spirits.enabled & buff.legacy_of_the_frost_witch.up",
            ["action"] = "doom_winds",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.ascendance.up & pet.surging_totem.active & talent.earthsurge.enabled & buff.legacy_of_the_frost_witch.up & buff.totemic_rebound.stack >= 5 & buff.earthen_weapon.stack >= 2",
            ["action"] = "sundering",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.unrelenting_storms.enabled & talent.alpha_wolf.enabled & alpha_wolf_min_remains = 0 & buff.earthen_weapon.stack >= 8",
            ["action"] = "crash_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.thorims_invocation.enabled & buff.maelstrom_weapon.stack > 0 & ti_lightning_bolt & ! talent.elemental_spirits.enabled",
            ["action"] = "windstrike",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.legacy_of_the_frost_witch.up & cooldown.ascendance.remains >= 10 & pet.surging_totem.active & buff.totemic_rebound.stack >= 3 & ! buff.ascendance.up",
            ["action"] = "sundering",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! dot.flame_shock.ticking & talent.molten_assault.enabled",
            ["action"] = "primordial_wave",
          },
          {
            ["action"] = "feral_spirit",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & talent.elemental_spirits.enabled & feral_spirit.active >= 6 & ( charges_fractional >= 1.8 || buff.ascendance.up )",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.voltaic_blaze.up & buff.whirling_earth.up",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.unrelenting_storms.enabled & talent.alpha_wolf.enabled & alpha_wolf_min_remains = 0",
            ["action"] = "crash_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! ticking & talent.lashing_flames.enabled",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.hot_hand.up & ! talent.legacy_of_the_frost_witch.enabled",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.maelstrom_weapon.stack >= 5 & charges = max_charges",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack >= 8 & buff.primordial_wave.up & ( ! buff.splintered_elements.up || fight_remains <= 12 )",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack >= 8 & ( feral_spirit.active >= 2 || ! talent.elemental_spirits.enabled )",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! talent.thorims_invocation.enabled & buff.maelstrom_weapon.stack >= 5",
            ["action"] = "lava_burst",
          },
          {
            ["action"] = "primordial_wave",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack >= 5 & ( charges_fractional >= 1.8 || ( buff.molten_weapon.stack + buff.icy_edge.stack >= 4 ) ) & talent.ascendance.enabled & ( feral_spirit.active >= 4 || ! talent.elemental_spirits.enabled )",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.ascendance.enabled & ( buff.maelstrom_weapon.stack >= 10 || ( buff.maelstrom_weapon.stack >= 5 & buff.whirling_air.up & ! buff.legacy_of_the_frost_witch.up ) )",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.ascendance.enabled & ( buff.maelstrom_weapon.stack >= 10 || ( buff.maelstrom_weapon.stack >= 5 & buff.whirling_air.up & ! buff.legacy_of_the_frost_witch.up ) )",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.hot_hand.up & talent.molten_assault.enabled & pet.searing_totem.active",
            ["action"] = "lava_lash",
          },
          {
            ["action"] = "windstrike",
            ["enabled"] = true,
          },
          {
            ["action"] = "stormstrike",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.molten_assault.enabled",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.unrelenting_storms.enabled",
            ["action"] = "crash_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.maelstrom_weapon.stack >= 5 & talent.ascendance.enabled",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! buff.ice_strike.up",
            ["action"] = "ice_strike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.hailstorm.up & pet.searing_totem.active",
            ["action"] = "frost_shock",
          },
          {
            ["action"] = "lava_lash",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.maelstrom_weapon.stack >= 5 & feral_spirit.active >= 4 & talent.deeply_rooted_elements.enabled & ( charges_fractional >= 1.8 || ( buff.icy_edge.stack + buff.molten_weapon.stack >= 4 ) )",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.elemental_spirits.enabled",
            ["action"] = "doom_winds",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! ticking & ! talent.voltaic_blaze.enabled",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.hailstorm.up",
            ["action"] = "frost_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.converging_storms.enabled",
            ["action"] = "crash_lightning",
          },
          {
            ["action"] = "frost_shock",
            ["enabled"] = true,
          },
          {
            ["action"] = "crash_lightning",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "active_dot.flame_shock",
            ["action"] = "fire_nova",
          },
          {
            ["action"] = "earth_elemental",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! talent.voltaic_blaze.enabled",
            ["action"] = "flame_shock",
          },
        },
        ["aoe"] = {
          {
            ["enabled"] = true,
            ["criteria"] = "talent.elemental_spirits.enabled || talent.alpha_wolf.enabled",
            ["action"] = "feral_spirit",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "cast_time = 0 & talent.ascendance.enabled & cooldown.ascendance.remains < 2 * gcd.max & talent.thorims_invocation.enabled & ! ti_chain_lightning",
            ["action"] = "tempest",
            ["description"] = "[Hekili] Avoid delaying Ascendance due to Thorim's Invocation",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "cast_time = 0 & talent.ascendance.enabled & cooldown.ascendance.remains < 2 * gcd.max & talent.thorims_invocation.enabled & ! ti_chain_lightning",
            ["action"] = "chain_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "dot.flame_shock.ticking & ( cooldown.lava_lash.remains || active_dot.flame_shock >= active_enemies || active_dot.flame_shock = 6 ) & ti_chain_lightning",
            ["action"] = "ascendance",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "! buff.arc_discharge.up & ( ( buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & ! talent.raging_maelstrom.enabled ) || ( buff.maelstrom_weapon.stack >= 8 ) ) || ( buff.maelstrom_weapon.stack >= 5 & ( tempest_mael_count > 30 || buff.awakening_storms.stack = 2 ) )",
            ["action"] = "tempest",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.thorims_invocation.enabled & buff.maelstrom_weapon.stack > 0 & ti_chain_lightning",
            ["action"] = "windstrike",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.crashing_storms.enabled & ( ( talent.unruly_winds.enabled & active_enemies >= 10 ) || active_enemies >= 15 )",
            ["action"] = "crash_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( ! talent.tempest.enabled || ( tempest_mael_count <= 10 & buff.awakening_storms.stack <= 1 ) ) & ( ( active_dot.flame_shock >= active_enemies || active_dot.flame_shock = 6 ) & buff.primordial_wave.up & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & ( ! buff.splintered_elements.up || fight_remains <= 12 || raid_event.adds.remains <= gcd.max ) )",
            ["action"] = "lightning_bolt",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.voltaic_blaze.up & buff.maelstrom_weapon.stack <= 8",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.molten_assault.enabled & ( talent.primordial_wave.enabled || talent.fire_nova.enabled ) & dot.flame_shock.ticking & ( active_dot.flame_shock < active_enemies ) & active_dot.flame_shock < 6",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! buff.primordial_wave.up",
            ["action"] = "primordial_wave",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.arc_discharge.up & buff.maelstrom_weapon.stack >= 5",
            ["action"] = "chain_lightning",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( ! talent.elemental_spirits.enabled || ( talent.elemental_spirits.enabled & ( charges = max_charges || feral_spirit.active >= 2 ) ) ) & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & ( ! talent.crashing_storms.enabled || active_enemies <= 3 )",
            ["action"] = "elemental_blast",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & ! talent.raging_maelstrom.enabled ) || ( buff.maelstrom_weapon.stack >= 7 )",
            ["action"] = "chain_lightning",
            ["cycle_targets"] = 1,
          },
          {
            ["action"] = "feral_spirit",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "ti_chain_lightning & ( buff.legacy_of_the_frost_witch.up || ! talent.legacy_of_the_frost_witch.enabled )",
            ["action"] = "doom_winds",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.doom_winds.up & active_enemies >= 4 ) || ! buff.crash_lightning.up || ( talent.alpha_wolf.enabled & feral_spirit.active & alpha_wolf_min_remains = 0 )",
            ["action"] = "crash_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.doom_winds.up || talent.earthsurge.enabled",
            ["action"] = "sundering",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "active_dot.flame_shock = 6 || ( active_dot.flame_shock >= 4 & active_dot.flame_shock >= cycle_enemies )",
            ["action"] = "fire_nova",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.stormblast.enabled & talent.stormflurry.enabled",
            ["action"] = "stormstrike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.voltaic_blaze.up",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.lashing_flames.enabled",
            ["action"] = "lava_lash",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.molten_assault.enabled & dot.flame_shock.ticking",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.hailstorm.enabled & ! buff.ice_strike.up",
            ["action"] = "ice_strike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.hailstorm.enabled & buff.hailstorm.up",
            ["action"] = "frost_shock",
          },
          {
            ["action"] = "sundering",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.molten_assault.enabled & ! ticking",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "refreshable & ( talent.fire_nova.enabled || talent.primordial_wave.enabled ) & ( active_dot.flame_shock < active_enemies ) & active_dot.flame_shock < 6",
            ["action"] = "flame_shock",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "active_dot.flame_shock >= 3",
            ["action"] = "fire_nova",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.crash_lightning.up & ( talent.deeply_rooted_elements.enabled || buff.converging_storms.stack = buff.converging_storms.max_stack )",
            ["action"] = "stormstrike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.crashing_storms.enabled & buff.cl_crash_lightning.up & active_enemies >= 4",
            ["action"] = "crash_lightning",
          },
          {
            ["action"] = "windstrike",
            ["enabled"] = true,
          },
          {
            ["action"] = "stormstrike",
            ["enabled"] = true,
          },
          {
            ["action"] = "ice_strike",
            ["enabled"] = true,
          },
          {
            ["action"] = "lava_lash",
            ["enabled"] = true,
          },
          {
            ["action"] = "crash_lightning",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "active_dot.flame_shock >= 2",
            ["action"] = "fire_nova",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( ! talent.elemental_spirits.enabled || ( talent.elemental_spirits.enabled & ( charges = max_charges || feral_spirit.active >= 2 ) ) ) & buff.maelstrom_weapon.stack >= 5 & ( ! talent.crashing_storms.enabled || active_enemies <= 3 )",
            ["action"] = "elemental_blast",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.maelstrom_weapon.stack >= 5",
            ["action"] = "chain_lightning",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! ticking",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! talent.hailstorm.enabled",
            ["action"] = "frost_shock",
          },
        },
        ["aoe_totemic"] = {
          {
            ["action"] = "surging_totem",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "cast_time = 0 & talent.ascendance.enabled & cooldown.ascendance.remains < 2 * gcd.max & talent.thorims_invocation.enabled & ! ti_chain_lightning",
            ["action"] = "chain_lightning",
            ["description"] = "[Hekili] Avoid delaying Ascendance due to Thorim's Invocation",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "ti_chain_lightning",
            ["action"] = "ascendance",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.ascendance.up & pet.surging_totem.active & talent.earthsurge.enabled & ( buff.legacy_of_the_frost_witch.up || ! talent.legacy_of_the_frost_witch.enabled )",
            ["action"] = "sundering",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.crashing_storms.enabled & ( active_enemies >= 15 - 5 * talent.unruly_winds.enabled )",
            ["action"] = "crash_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( ( active_dot.flame_shock >= active_enemies || active_dot.flame_shock = 6 ) & buff.primordial_wave.up & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & ( ! buff.splintered_elements.up || fight_remains <= 12 || raid_event.adds.remains <= gcd.max ) )",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "! talent.elemental_spirits.enabled & ( buff.legacy_of_the_frost_witch.up || ! talent.legacy_of_the_frost_witch.enabled )",
            ["action"] = "doom_winds",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.molten_assault.enabled & ( talent.primordial_wave.enabled || talent.fire_nova.enabled ) & dot.flame_shock.ticking & active_dot.flame_shock < active_enemies & active_dot.flame_shock < 6",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! buff.primordial_wave.up",
            ["action"] = "primordial_wave",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( ! talent.elemental_spirits.enabled || ( talent.elemental_spirits.enabled & ( charges = max_charges || feral_spirit.active >= 2 ) ) ) & buff.maelstrom_weapon.stack = buff.maelstrom_weapon.max_stack & ( ! talent.crashing_storms.enabled || active_enemies <= 3 )",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.maelstrom_weapon.stack >= 10",
            ["action"] = "chain_lightning",
          },
          {
            ["action"] = "feral_spirit",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.legacy_of_the_frost_witch.up || ! talent.legacy_of_the_frost_witch.enabled",
            ["action"] = "doom_winds",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.doom_winds.up || ! buff.crash_lightning.up || ( talent.alpha_wolf.enabled & feral_spirit.active & alpha_wolf_min_remains = 0 )",
            ["action"] = "crash_lightning",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.doom_winds.up || talent.earthsurge.enabled & ( buff.legacy_of_the_frost_witch.up || ! talent.legacy_of_the_frost_witch.enabled ) & pet.surging_totem.active",
            ["action"] = "sundering",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "active_dot.flame_shock = 6 || ( active_dot.flame_shock >= 4 & active_dot.flame_shock >= cycle_enemies )",
            ["action"] = "fire_nova",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.voltaic_blaze.up",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.lashing_flames.enabled",
            ["action"] = "lava_lash",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.molten_assault.enabled & dot.flame_shock.ticking",
            ["action"] = "lava_lash",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.hailstorm.enabled & ! buff.ice_strike.up",
            ["action"] = "ice_strike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.hailstorm.enabled & buff.hailstorm.up",
            ["action"] = "frost_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.legacy_of_the_frost_witch.up || ! talent.legacy_of_the_frost_witch.enabled ) & pet.surging_totem.active",
            ["action"] = "sundering",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.molten_assault.enabled & ! ticking",
            ["action"] = "flame_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "refreshable & ( talent.fire_nova.enabled || talent.primordial_wave.enabled ) & ( active_dot.flame_shock < active_enemies ) & active_dot.flame_shock < 6",
            ["action"] = "flame_shock",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "active_dot.flame_shock >= 3",
            ["action"] = "fire_nova",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.crash_lightning.up & ( talent.deeply_rooted_elements.enabled || buff.converging_storms.stack = buff.converging_storms.max_stack )",
            ["action"] = "stormstrike",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.crashing_storms.enabled & buff.cl_crash_lightning.up & active_enemies >= 4",
            ["action"] = "crash_lightning",
          },
          {
            ["action"] = "windstrike",
            ["enabled"] = true,
          },
          {
            ["action"] = "stormstrike",
            ["enabled"] = true,
          },
          {
            ["action"] = "ice_strike",
            ["enabled"] = true,
          },
          {
            ["action"] = "lava_lash",
            ["enabled"] = true,
          },
          {
            ["action"] = "crash_lightning",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "active_dot.flame_shock >= 2",
            ["action"] = "fire_nova",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( ! talent.elemental_spirits.enabled || ( talent.elemental_spirits.enabled & ( charges = max_charges || feral_spirit.active >= 2 ) ) ) & buff.maelstrom_weapon.stack >= 5 & ( ! talent.crashing_storms.enabled || active_enemies <= 3 )",
            ["action"] = "elemental_blast",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.maelstrom_weapon.stack >= 5",
            ["action"] = "chain_lightning",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! ticking",
            ["action"] = "flame_shock",
          },
        },
      },
      ["version"] = 20241109.1,
      ["warnings"] =
      "The import for 'single' required some automated changes.\nLine 7: Converted 'talent.ascendance' to 'talent.ascendance.enabled' (1x).\nLine 7: Converted 'talent.thorims_invocation' to 'talent.thorims_invocation.enabled' (1x).\nLine 8: Converted 'talent.ascendance' to 'talent.ascendance.enabled' (1x).\nLine 8: Converted 'talent.thorims_invocation' to 'talent.thorims_invocation.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 1: Converted operations in '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%300<=30)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%300<=30)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nLine 6: Converted operations in '(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||(talent.ascendance.enabled&(cooldown.ascendance.remains<2*action.stormstrike.gcd))||(fight_remains%%180<=30)' to '(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||(talent.ascendance.enabled&(cooldown.ascendance.remains<2*action.stormstrike.gcd))||(fight_remains%180<=30)'.\nLine 7: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted 'trinket.1.buff.any.duration' to 'trinket.t1.buff.any.duration' (1x).\nLine 7: Converted 'trinket.1.buff.any.duration' to 'trinket.t1.buff_duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted operations in '!variable.trinket1_is_weird&trinket.t1.has_use_buff&(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%trinket.t1.cooldown.duration<=trinket.t1.buff_duration)||(variable.min_talented_cd_remains>=trinket.t1.cooldown.duration)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '!variable.trinket1_is_weird&trinket.t1.has_use_buff&(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%trinket.t1.cooldown.duration<=trinket.t1.buff_duration)||(variable.min_talented_cd_remains>=trinket.t1.cooldown.duration)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nLine 8: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 8: Converted 'trinket.2.buff.any.duration' to 'trinket.t2.buff.any.duration' (1x).\nLine 8: Converted 'trinket.2.buff.any.duration' to 'trinket.t2.buff_duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 8: Converted operations in '!variable.trinket2_is_weird&trinket.t2.has_use_buff&(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%trinket.t2.cooldown.duration<=trinket.t2.buff_duration)||(variable.min_talented_cd_remains>=trinket.t2.cooldown.duration)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '!variable.trinket2_is_weird&trinket.t2.has_use_buff&(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%trinket.t2.cooldown.duration<=trinket.t2.buff_duration)||(variable.min_talented_cd_remains>=trinket.t2.cooldown.duration)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nLine 9: Converted operations in '(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||boss&(fight_remains%%150<=5)' to '(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||boss&(fight_remains%150<=5)'.\nLine 10: Converted operations in '(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||boss&(fight_remains%%120<=5)' to '(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||boss&(fight_remains%120<=5)'.\nLine 11: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 12: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 13: Converted operations in '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.blood_fury.cooldown<=action.blood_fury.duration)||(variable.min_talented_cd_remains>=action.blood_fury.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%action.blood_fury.cooldown<=action.blood_fury.duration)||(variable.min_talented_cd_remains>=action.blood_fury.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nLine 14: Converted operations in '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.berserking.cooldown<=action.berserking.duration)||(variable.min_talented_cd_remains>=action.berserking.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%action.berserking.cooldown<=action.berserking.duration)||(variable.min_talented_cd_remains>=action.berserking.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nLine 15: Converted operations in '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||(boss&fight_remains%%action.fireblood.cooldown<=action.fireblood.duration)||(variable.min_talented_cd_remains>=action.fireblood.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||(boss&fight_remains%action.fireblood.cooldown<=action.fireblood.duration)||(variable.min_talented_cd_remains>=action.fireblood.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nLine 16: Converted operations in '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.ancestral_call.cooldown<=action.ancestral_call.duration)||(variable.min_talented_cd_remains>=action.ancestral_call.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))' to '(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%action.ancestral_call.cooldown<=action.ancestral_call.duration)||(variable.min_talented_cd_remains>=action.ancestral_call.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))'.\nThe following auras were used in the action list but were not found in the addon database:\n - any\n\nThe import for 'precombat' required some automated changes.\nLine 4: Converted 'trinket.1.is.algethar_puzzle_box' to 'trinket.t1.is.algethar_puzzle_box' (1x).\nLine 4: Converted 'trinket.1.is.manic_grieftorch' to 'trinket.t1.is.manic_grieftorch' (1x).\nLine 4: Converted 'trinket.1.is.elementium_pocket_anvil' to 'trinket.t1.is.elementium_pocket_anvil' (1x).\nLine 4: Converted 'trinket.1.is.beacon_to_the_beyond' to 'trinket.t1.is.beacon_to_the_beyond' (1x).\nLine 5: Converted 'trinket.2.is.algethar_puzzle_box' to 'trinket.t2.is.algethar_puzzle_box' (1x).\nLine 5: Converted 'trinket.2.is.manic_grieftorch' to 'trinket.t2.is.manic_grieftorch' (1x).\nLine 5: Converted 'trinket.2.is.elementium_pocket_anvil' to 'trinket.t2.is.elementium_pocket_anvil' (1x).\nLine 5: Converted 'trinket.2.is.beacon_to_the_beyond' to 'trinket.t2.is.beacon_to_the_beyond' (1x).\nLine 6: Converted operations in '((cooldown.feral_spirit.remains%(4*talent.witch_doctors_ancestry.enabled))+1000*!talent.feral_spirit.enabled)>?(cooldown.doom_winds.remains+1000*!talent.doom_winds.enabled)>?(cooldown.ascendance.remains+1000*!talent.ascendance.enabled)' to '((cooldown.feral_spirit.remains/(4*talent.witch_doctors_ancestry.enabled))+1000*!talent.feral_spirit.enabled)>?(cooldown.doom_winds.remains+1000*!talent.doom_winds.enabled)>?(cooldown.ascendance.remains+1000*!talent.ascendance.enabled)'.\n\nThe import for 'single_totemic' required some automated changes.\nLine 2: Converted 'talent.ascendance' to 'talent.ascendance.enabled' (1x).\nLine 2: Converted 'talent.thorims_invocation' to 'talent.thorims_invocation.enabled' (1x).\nLine 3: Converted 'talent.ascendance' to 'talent.ascendance.enabled' (1x).\nLine 3: Converted 'talent.thorims_invocation' to 'talent.thorims_invocation.enabled' (1x).\n\nThe import for 'aoe_totemic' required some automated changes.\nLine 2: Converted 'talent.ascendance' to 'talent.ascendance.enabled' (1x).\nLine 2: Converted 'talent.thorims_invocation' to 'talent.thorims_invocation.enabled' (1x).\n\nThe import for 'aoe' required some automated changes.\nLine 2: Converted 'talent.ascendance' to 'talent.ascendance.enabled' (1x).\nLine 2: Converted 'talent.thorims_invocation' to 'talent.thorims_invocation.enabled' (1x).\nLine 3: Converted 'talent.ascendance' to 'talent.ascendance.enabled' (1x).\nLine 3: Converted 'talent.thorims_invocation' to 'talent.thorims_invocation.enabled' (1x).\n\nImported 7 action lists.\n",
      ["profile"] =
      "actions.precombat+=/windfury_weapon\nactions.precombat+=/flametongue_weapon\nactions.precombat+=/lightning_shield\nactions.precombat+=/variable,name=trinket1_is_weird,value=trinket.1.is.algethar_puzzle_box||trinket.1.is.manic_grieftorch||trinket.1.is.elementium_pocket_anvil||trinket.1.is.beacon_to_the_beyond\nactions.precombat+=/variable,name=trinket2_is_weird,value=trinket.2.is.algethar_puzzle_box||trinket.2.is.manic_grieftorch||trinket.2.is.elementium_pocket_anvil||trinket.2.is.beacon_to_the_beyond\nactions.precombat+=/variable,name=min_talented_cd_remains,value=((cooldown.feral_spirit.remains%(4*talent.witch_doctors_ancestry.enabled))+1000*!talent.feral_spirit.enabled)>?(cooldown.doom_winds.remains+1000*!talent.doom_winds.enabled)>?(cooldown.ascendance.remains+1000*!talent.ascendance.enabled)\nactions.precombat+=/variable,name=target_nature_mod,value=(1+debuff.chaos_brand.up*debuff.chaos_brand.value)*(1+(debuff.hunters_mark.up*target.health.pct>=80)*debuff.hunters_mark.value)\nactions.precombat+=/variable,name=expected_lb_funnel,value=action.lightning_bolt.damage*(1+debuff.lightning_rod.up*variable.target_nature_mod*(1+buff.primordial_wave.up*active_dot.flame_shock*buff.primordial_wave.value)*debuff.lightning_rod.value)\nactions.precombat+=/variable,name=expected_cl_funnel,value=action.chain_lightning.damage*(1+debuff.lightning_rod.up*variable.target_nature_mod*(active_enemies>?(3+2*talent.crashing_storms.enabled))*debuff.lightning_rod.value)\n\n## actions+=/bloodlust,line_cd=600\nactions+=/potion,if=(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%300<=30)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/purge,line_cd=settings.purge_icd,if=buff.dispellable_magic.up\nactions+=/greater_purge,if=buff.dispellable_magic.up\nactions+=/use_item,name=elementium_pocket_anvil,use_off_gcd=1\nactions+=/use_item,name=algethar_puzzle_box,use_off_gcd=1,if=(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||(talent.ascendance.enabled&(cooldown.ascendance.remains<2*action.stormstrike.gcd))||(fight_remains%%180<=30)\nactions+=/use_item,slot=trinket1,if=!variable.trinket1_is_weird&trinket.1.has_use_buff&(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%trinket.1.cooldown.duration<=trinket.1.buff.any.duration)||(variable.min_talented_cd_remains>=trinket.1.cooldown.duration)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\nactions+=/use_item,slot=trinket2,if=!variable.trinket2_is_weird&trinket.2.has_use_buff&(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%trinket.2.cooldown.duration<=trinket.2.buff.any.duration)||(variable.min_talented_cd_remains>=trinket.2.cooldown.duration)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\nactions+=/use_item,name=beacon_to_the_beyond,use_off_gcd=1,if=(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||boss&(fight_remains%%150<=5)\nactions+=/use_item,name=manic_grieftorch,use_off_gcd=1,if=(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)||boss&(fight_remains%%120<=5)\nactions+=/use_item,slot=trinket1,if=!variable.trinket1_is_weird&!trinket.1.has_use_buff\nactions+=/use_item,slot=trinket2,if=!variable.trinket2_is_weird&!trinket.2.has_use_buff\nactions+=/blood_fury,if=(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.blood_fury.cooldown<=action.blood_fury.duration)||(variable.min_talented_cd_remains>=action.blood_fury.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\nactions+=/berserking,if=(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.berserking.cooldown<=action.berserking.duration)||(variable.min_talented_cd_remains>=action.berserking.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\nactions+=/fireblood,if=(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||(boss&fight_remains%%action.fireblood.cooldown<=action.fireblood.duration)||(variable.min_talented_cd_remains>=action.fireblood.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\nactions+=/ancestral_call,if=(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||boss&(fight_remains%%action.ancestral_call.cooldown<=action.ancestral_call.duration)||(variable.min_talented_cd_remains>=action.ancestral_call.cooldown)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\n## actions+=/invoke_external_buff,name=power_infusion,if=(buff.ascendance.up||buff.feral_spirit.up||buff.doom_winds.up||(fight_remains%%120<=20)||(variable.min_talented_cd_remains>=120)||(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))\nactions+=/call_action_list,name=single,strict=1,if=active_enemies=1&!talent.surging_totem.enabled\nactions+=/call_action_list,name=single_totemic,strict=1,if=active_enemies=1&talent.surging_totem.enabled\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>1&!toggle.funnel&!talent.surging_totem.enabled\nactions+=/call_action_list,name=aoe_totemic,strict=1,if=active_enemies>1&!toggle.funnel&talent.surging_totem.enabled\nactions+=/call_action_list,name=funnel,strict=1,if=active_enemies>1&toggle.funnel\n\nactions.single+=/feral_spirit,if=talent.elemental_spirits.enabled\nactions.single+=/windstrike,if=talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>0&ti_lightning_bolt&!talent.elemental_spirits.enabled\nactions.single+=/primordial_wave,if=!dot.flame_shock.ticking&talent.molten_assault.enabled\nactions.single+=/lava_lash,if=talent.lashing_flames.enabled&debuff.lashing_flames.down\nactions.single+=/stormstrike,if=buff.maelstrom_weapon.stack<2&cooldown.ascendance.remains=0\nactions.single+=/feral_spirit\n# [Hekili] Avoid delaying Ascendance due to Thorim's Invocation\nactions.single+=/tempest,if=cast_time=0&talent.ascendance&cooldown.ascendance.remains<2*gcd&talent.thorims_invocation&!ti_lightning_bolt\nactions.single+=/lightning_bolt,if=cast_time=0&talent.ascendance&cooldown.ascendance.remains<2*gcd&talent.thorims_invocation&!ti_lightning_bolt\nactions.single+=/ascendance,if=dot.flame_shock.ticking&ti_lightning_bolt&active_enemies=1&buff.maelstrom_weapon.stack>=2\nactions.single+=/tempest,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack||(buff.tempest.stack=buff.tempest.max_stack&(tempest_mael_count>30||buff.awakening_storms.stack=2)&buff.maelstrom_weapon.stack>=5)\nactions.single+=/elemental_blast,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&talent.elemental_spirits.enabled&feral_spirit.active>=6&(charges_fractional>=1.8||buff.ascendance.up)\nactions.single+=/windstrike,if=talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>0&ti_lightning_bolt&charges=max_charges\nactions.single+=/doom_winds,if=talent.elemental_spirits.enabled&talent.ascendance.enabled&buff.maelstrom_weapon.stack>=2\nactions.single+=/windstrike,if=talent.thorims_invocation.enabled&buff.maelstrom_weapon.up&ti_lightning_bolt\nactions.single+=/flame_shock,if=!ticking&talent.ashen_catalyst.enabled\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&buff.primordial_wave.up\nactions.single+=/tempest,if=(!talent.overflowing_maelstrom.enabled&buff.maelstrom_weapon.stack>=5)||(buff.maelstrom_weapon.stack>=10-2*talent.elemental_spirits.enabled)\nactions.single+=/primordial_wave,if=!talent.deeply_rooted_elements.enabled\nactions.single+=/elemental_blast,if=buff.maelstrom_weapon.stack>=8&feral_spirit.active>=4&(!buff.ascendance.up||charges_fractional>=1.8)\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=8+2*talent.legacy_of_the_frost_witch.enabled\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5&!talent.legacy_of_the_frost_witch.enabled&(talent.deeply_rooted_elements.enabled||!talent.overflowing_maelstrom.enabled||!talent.witch_doctors_ancestry.enabled)\nactions.single+=/flame_shock,if=buff.voltaic_blaze.up&talent.elemental_spirits.enabled&!talent.witch_doctors_ancestry.enabled\nactions.single+=/lightning_bolt,if=buff.arc_discharge.up&talent.deeply_rooted_elements.enabled\nactions.single+=/lava_lash,if=buff.hot_hand.up||(buff.ashen_catalyst.stack=buff.ashen_catalyst.max_stack)\nactions.single+=/stormstrike,if=buff.doom_winds.up||(talent.stormblast.enabled&buff.stormsurge.up&charges=max_charges)\nactions.single+=/lava_lash,if=talent.lashing_flames.enabled&!buff.doom_winds.up\nactions.single+=/flame_shock,if=buff.voltaic_blaze.up&talent.elemental_spirits.enabled&!buff.doom_winds.up\nactions.single+=/crash_lightning,if=talent.unrelenting_storms.enabled&talent.elemental_spirits.enabled&!talent.deeply_rooted_elements.enabled\nactions.single+=/ice_strike,if=talent.elemental_assault.enabled&talent.swirling_maelstrom.enabled&talent.witch_doctors_ancestry.enabled\nactions.single+=/stormstrike\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5&talent.ascendance.enabled&!talent.legacy_of_the_frost_witch.enabled\nactions.single+=/crash_lightning,if=talent.unrelenting_storms.enabled\nactions.single+=/flame_shock,if=buff.voltaic_blaze.up\nactions.single+=/sundering,if=!talent.elemental_spirits.enabled\nactions.single+=/frost_shock,if=buff.hailstorm.up&buff.ice_strike.up&talent.swirling_maelstrom.enabled&talent.ascendance.enabled\nactions.single+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5&feral_spirit.active>=4&talent.deeply_rooted_elements.enabled&(charges_fractional>=1.8||(buff.molten_weapon.stack+buff.icy_edge.stack>=4))&!talent.flowing_spirits.enabled\nactions.single+=/crash_lightning,if=talent.alpha_wolf.enabled&feral_spirit.active&alpha_wolf_min_remains=0\nactions.single+=/flame_shock,if=!ticking&!talent.tempest.enabled\nactions.single+=/doom_winds,if=talent.elemental_spirits.enabled\nactions.single+=/lava_lash,if=talent.elemental_assault.enabled&talent.tempest.enabled&talent.molten_assault.enabled&talent.deeply_rooted_elements.enabled&dot.flame_shock.ticking\nactions.single+=/ice_strike,if=talent.elemental_assault.enabled&talent.swirling_maelstrom.enabled\nactions.single+=/lightning_bolt,if=buff.arc_discharge.up\nactions.single+=/crash_lightning,if=talent.unrelenting_storms.enabled\nactions.single+=/lava_lash,if=talent.elemental_assault.enabled&talent.tempest.enabled&talent.molten_assault.enabled&dot.flame_shock.ticking\nactions.single+=/frost_shock,if=buff.hailstorm.up&buff.ice_strike.up&talent.swirling_maelstrom.enabled&talent.tempest.enabled\nactions.single+=/flame_shock,if=!ticking\nactions.single+=/lava_lash,if=talent.lashing_flames.enabled\nactions.single+=/ice_strike,if=!buff.ice_strike.up\nactions.single+=/frost_shock,if=buff.hailstorm.up\nactions.single+=/crash_lightning,if=talent.converging_storms.enabled\nactions.single+=/lava_lash\nactions.single+=/ice_strike\nactions.single+=/windstrike\nactions.single+=/stormstrike\nactions.single+=/sundering\nactions.single+=/frost_shock\nactions.single+=/crash_lightning\nactions.single+=/fire_nova,if=active_dot.flame_shock\nactions.single+=/earth_elemental\nactions.single+=/flame_shock,if=settings.filler_shock\n\nactions.single_totemic+=/surging_totem\n# [Hekili] Avoid delaying Ascendance due to Thorim's Invocation\nactions.single_totemic+=/tempest,if=cast_time=0&talent.ascendance&cooldown.ascendance.remains<2*gcd&talent.thorims_invocation&!ti_lightning_bolt\nactions.single_totemic+=/lightning_bolt,if=cast_time=0&talent.ascendance&cooldown.ascendance.remains<2*gcd&talent.thorims_invocation&!ti_lightning_bolt\nactions.single_totemic+=/ascendance,if=ti_lightning_bolt&pet.surging_totem.remains>4&(buff.totemic_rebound.stack>=3||buff.maelstrom_weapon.up)\nactions.single_totemic+=/doom_winds,if=!talent.elemental_spirits.enabled&buff.legacy_of_the_frost_witch.up\nactions.single_totemic+=/sundering,if=buff.ascendance.up&pet.surging_totem.active&talent.earthsurge.enabled&buff.legacy_of_the_frost_witch.up&buff.totemic_rebound.stack>=5&buff.earthen_weapon.stack>=2\nactions.single_totemic+=/crash_lightning,if=talent.unrelenting_storms.enabled&talent.alpha_wolf.enabled&alpha_wolf_min_remains=0&buff.earthen_weapon.stack>=8\nactions.single_totemic+=/windstrike,if=talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>0&ti_lightning_bolt&!talent.elemental_spirits.enabled\nactions.single_totemic+=/sundering,if=buff.legacy_of_the_frost_witch.up&cooldown.ascendance.remains>=10&pet.surging_totem.active&buff.totemic_rebound.stack>=3&!buff.ascendance.up\nactions.single_totemic+=/primordial_wave,if=!dot.flame_shock.ticking&talent.molten_assault.enabled\nactions.single_totemic+=/feral_spirit\nactions.single_totemic+=/elemental_blast,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&talent.elemental_spirits.enabled&feral_spirit.active>=6&(charges_fractional>=1.8||buff.ascendance.up)\nactions.single_totemic+=/flame_shock,if=buff.voltaic_blaze.up&buff.whirling_earth.up\nactions.single_totemic+=/crash_lightning,if=talent.unrelenting_storms.enabled&talent.alpha_wolf.enabled&alpha_wolf_min_remains=0\nactions.single_totemic+=/flame_shock,if=!ticking&talent.lashing_flames.enabled\nactions.single_totemic+=/lava_lash,if=buff.hot_hand.up&!talent.legacy_of_the_frost_witch.enabled\nactions.single_totemic+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5&charges=max_charges\nactions.single_totemic+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=8&buff.primordial_wave.up&(!buff.splintered_elements.up||fight_remains<=12)\nactions.single_totemic+=/elemental_blast,if=buff.maelstrom_weapon.stack>=8&(feral_spirit.active>=2||!talent.elemental_spirits.enabled)\nactions.single_totemic+=/lava_burst,if=!talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>=5\nactions.single_totemic+=/primordial_wave\nactions.single_totemic+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5&(charges_fractional>=1.8||(buff.molten_weapon.stack+buff.icy_edge.stack>=4))&talent.ascendance.enabled&(feral_spirit.active>=4||!talent.elemental_spirits.enabled)\nactions.single_totemic+=/elemental_blast,if=talent.ascendance.enabled&(buff.maelstrom_weapon.stack>=10||(buff.maelstrom_weapon.stack>=5&buff.whirling_air.up&!buff.legacy_of_the_frost_witch.up))\nactions.single_totemic+=/lightning_bolt,if=talent.ascendance.enabled&(buff.maelstrom_weapon.stack>=10||(buff.maelstrom_weapon.stack>=5&buff.whirling_air.up&!buff.legacy_of_the_frost_witch.up))\nactions.single_totemic+=/lava_lash,if=buff.hot_hand.up&talent.molten_assault.enabled&pet.searing_totem.active\nactions.single_totemic+=/windstrike\nactions.single_totemic+=/stormstrike\nactions.single_totemic+=/lava_lash,if=talent.molten_assault.enabled\nactions.single_totemic+=/crash_lightning,if=talent.unrelenting_storms.enabled\nactions.single_totemic+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5&talent.ascendance.enabled\nactions.single_totemic+=/ice_strike,if=!buff.ice_strike.up\nactions.single_totemic+=/frost_shock,if=buff.hailstorm.up&pet.searing_totem.active\nactions.single_totemic+=/lava_lash\nactions.single_totemic+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5&feral_spirit.active>=4&talent.deeply_rooted_elements.enabled&(charges_fractional>=1.8||(buff.icy_edge.stack+buff.molten_weapon.stack>=4))\nactions.single_totemic+=/doom_winds,if=talent.elemental_spirits.enabled\nactions.single_totemic+=/flame_shock,if=!ticking&!talent.voltaic_blaze.enabled\nactions.single_totemic+=/frost_shock,if=buff.hailstorm.up\nactions.single_totemic+=/crash_lightning,if=talent.converging_storms.enabled\nactions.single_totemic+=/frost_shock\nactions.single_totemic+=/crash_lightning\nactions.single_totemic+=/fire_nova,if=active_dot.flame_shock\nactions.single_totemic+=/earth_elemental\nactions.single_totemic+=/flame_shock,if=!talent.voltaic_blaze.enabled\n\nactions.aoe+=/feral_spirit,if=talent.elemental_spirits.enabled||talent.alpha_wolf.enabled\n# [Hekili] Avoid delaying Ascendance due to Thorim's Invocation\nactions.aoe+=/tempest,if=cast_time=0&talent.ascendance&cooldown.ascendance.remains<2*gcd&talent.thorims_invocation&!ti_chain_lightning\nactions.aoe+=/chain_lightning,if=cast_time=0&talent.ascendance&cooldown.ascendance.remains<2*gcd&talent.thorims_invocation&!ti_chain_lightning\nactions.aoe+=/ascendance,if=dot.flame_shock.ticking&(cooldown.lava_lash.remains||active_dot.flame_shock>=active_enemies||active_dot.flame_shock=6)&ti_chain_lightning\nactions.aoe+=/tempest,cycle_targets=1,if=!buff.arc_discharge.up&((buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&!talent.raging_maelstrom.enabled)||(buff.maelstrom_weapon.stack>=8))||(buff.maelstrom_weapon.stack>=5&(tempest_mael_count>30||buff.awakening_storms.stack=2))\nactions.aoe+=/windstrike,cycle_targets=1,if=talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>0&ti_chain_lightning\nactions.aoe+=/crash_lightning,if=talent.crashing_storms.enabled&((talent.unruly_winds.enabled&active_enemies>=10)||active_enemies>=15)\nactions.aoe+=/lightning_bolt,cycle_targets=1,if=(!talent.tempest.enabled||(tempest_mael_count<=10&buff.awakening_storms.stack<=1))&((active_dot.flame_shock>=active_enemies||active_dot.flame_shock=6)&buff.primordial_wave.up&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(!buff.splintered_elements.up||fight_remains<=12||raid_event.adds.remains<=gcd))\nactions.aoe+=/flame_shock,if=buff.voltaic_blaze.up&buff.maelstrom_weapon.stack<=8\nactions.aoe+=/lava_lash,if=talent.molten_assault.enabled&(talent.primordial_wave.enabled||talent.fire_nova.enabled)&dot.flame_shock.ticking&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6\nactions.aoe+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up\nactions.aoe+=/chain_lightning,cycle_targets=1,if=buff.arc_discharge.up&buff.maelstrom_weapon.stack>=5\nactions.aoe+=/elemental_blast,cycle_targets=1,if=(!talent.elemental_spirits.enabled||(talent.elemental_spirits.enabled&(charges=max_charges||feral_spirit.active>=2)))&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(!talent.crashing_storms.enabled||active_enemies<=3)\nactions.aoe+=/chain_lightning,cycle_targets=1,if=(buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&!talent.raging_maelstrom.enabled)||(buff.maelstrom_weapon.stack>=7)\nactions.aoe+=/feral_spirit\nactions.aoe+=/doom_winds,if=ti_chain_lightning&(buff.legacy_of_the_frost_witch.up||!talent.legacy_of_the_frost_witch.enabled)\nactions.aoe+=/crash_lightning,if=(buff.doom_winds.up&active_enemies>=4)||!buff.crash_lightning.up||(talent.alpha_wolf.enabled&feral_spirit.active&alpha_wolf_min_remains=0)\nactions.aoe+=/sundering,if=buff.doom_winds.up||talent.earthsurge.enabled\nactions.aoe+=/fire_nova,if=active_dot.flame_shock=6||(active_dot.flame_shock>=4&active_dot.flame_shock>=cycle_enemies)\nactions.aoe+=/stormstrike,if=talent.stormblast.enabled&talent.stormflurry.enabled\nactions.aoe+=/flame_shock,if=buff.voltaic_blaze.up\nactions.aoe+=/lava_lash,cycle_targets=1,if=talent.lashing_flames.enabled\nactions.aoe+=/lava_lash,if=talent.molten_assault.enabled&dot.flame_shock.ticking\nactions.aoe+=/ice_strike,if=talent.hailstorm.enabled&!buff.ice_strike.up\nactions.aoe+=/frost_shock,if=talent.hailstorm.enabled&buff.hailstorm.up\nactions.aoe+=/sundering\nactions.aoe+=/flame_shock,if=talent.molten_assault.enabled&!ticking\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&(talent.fire_nova.enabled||talent.primordial_wave.enabled)&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>=3\nactions.aoe+=/stormstrike,if=buff.crash_lightning.up&(talent.deeply_rooted_elements.enabled||buff.converging_storms.stack=buff.converging_storms.max_stack)\nactions.aoe+=/crash_lightning,if=talent.crashing_storms.enabled&buff.cl_crash_lightning.up&active_enemies>=4\nactions.aoe+=/windstrike\nactions.aoe+=/stormstrike\nactions.aoe+=/ice_strike\nactions.aoe+=/lava_lash\nactions.aoe+=/crash_lightning\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>=2\nactions.aoe+=/elemental_blast,cycle_targets=1,if=(!talent.elemental_spirits.enabled||(talent.elemental_spirits.enabled&(charges=max_charges||feral_spirit.active>=2)))&buff.maelstrom_weapon.stack>=5&(!talent.crashing_storms.enabled||active_enemies<=3)\nactions.aoe+=/chain_lightning,cycle_targets=1,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/flame_shock,if=!ticking\nactions.aoe+=/frost_shock,if=!talent.hailstorm.enabled\n\nactions.aoe_totemic+=/surging_totem\n# [Hekili] Avoid delaying Ascendance due to Thorim's Invocation\nactions.aoe_totemic+=/chain_lightning,if=cast_time=0&talent.ascendance&cooldown.ascendance.remains<2*gcd&talent.thorims_invocation&!ti_chain_lightning\nactions.aoe_totemic+=/ascendance,if=ti_chain_lightning\nactions.aoe_totemic+=/sundering,if=buff.ascendance.up&pet.surging_totem.active&talent.earthsurge.enabled&(buff.legacy_of_the_frost_witch.up||!talent.legacy_of_the_frost_witch.enabled)\nactions.aoe_totemic+=/crash_lightning,if=talent.crashing_storms.enabled&(active_enemies>=15-5*talent.unruly_winds.enabled)\nactions.aoe_totemic+=/lightning_bolt,if=((active_dot.flame_shock>=active_enemies||active_dot.flame_shock=6)&buff.primordial_wave.up&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(!buff.splintered_elements.up||fight_remains<=12||raid_event.adds.remains<=gcd))\nactions.aoe_totemic+=/doom_winds,if=!talent.elemental_spirits.enabled&(buff.legacy_of_the_frost_witch.up||!talent.legacy_of_the_frost_witch.enabled)\nactions.aoe_totemic+=/lava_lash,if=talent.molten_assault.enabled&(talent.primordial_wave.enabled||talent.fire_nova.enabled)&dot.flame_shock.ticking&active_dot.flame_shock<active_enemies&active_dot.flame_shock<6\nactions.aoe_totemic+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up\nactions.aoe_totemic+=/elemental_blast,if=(!talent.elemental_spirits.enabled||(talent.elemental_spirits.enabled&(charges=max_charges||feral_spirit.active>=2)))&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(!talent.crashing_storms.enabled||active_enemies<=3)\nactions.aoe_totemic+=/chain_lightning,if=buff.maelstrom_weapon.stack>=10\nactions.aoe_totemic+=/feral_spirit\nactions.aoe_totemic+=/doom_winds,if=buff.legacy_of_the_frost_witch.up||!talent.legacy_of_the_frost_witch.enabled\nactions.aoe_totemic+=/crash_lightning,if=buff.doom_winds.up||!buff.crash_lightning.up||(talent.alpha_wolf.enabled&feral_spirit.active&alpha_wolf_min_remains=0)\nactions.aoe_totemic+=/sundering,if=buff.doom_winds.up||talent.earthsurge.enabled&(buff.legacy_of_the_frost_witch.up||!talent.legacy_of_the_frost_witch.enabled)&pet.surging_totem.active\nactions.aoe_totemic+=/fire_nova,if=active_dot.flame_shock=6||(active_dot.flame_shock>=4&active_dot.flame_shock>=cycle_enemies)\nactions.aoe_totemic+=/flame_shock,if=buff.voltaic_blaze.up\nactions.aoe_totemic+=/lava_lash,cycle_targets=1,if=talent.lashing_flames.enabled\nactions.aoe_totemic+=/lava_lash,if=talent.molten_assault.enabled&dot.flame_shock.ticking\nactions.aoe_totemic+=/ice_strike,if=talent.hailstorm.enabled&!buff.ice_strike.up\nactions.aoe_totemic+=/frost_shock,if=talent.hailstorm.enabled&buff.hailstorm.up\nactions.aoe_totemic+=/sundering,if=(buff.legacy_of_the_frost_witch.up||!talent.legacy_of_the_frost_witch.enabled)&pet.surging_totem.active\nactions.aoe_totemic+=/flame_shock,if=talent.molten_assault.enabled&!ticking\nactions.aoe_totemic+=/flame_shock,cycle_targets=1,if=refreshable&(talent.fire_nova.enabled||talent.primordial_wave.enabled)&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6\nactions.aoe_totemic+=/fire_nova,if=active_dot.flame_shock>=3\nactions.aoe_totemic+=/stormstrike,if=buff.crash_lightning.up&(talent.deeply_rooted_elements.enabled||buff.converging_storms.stack=buff.converging_storms.max_stack)\nactions.aoe_totemic+=/crash_lightning,if=talent.crashing_storms.enabled&buff.cl_crash_lightning.up&active_enemies>=4\nactions.aoe_totemic+=/windstrike\nactions.aoe_totemic+=/stormstrike\nactions.aoe_totemic+=/ice_strike\nactions.aoe_totemic+=/lava_lash\nactions.aoe_totemic+=/crash_lightning\nactions.aoe_totemic+=/fire_nova,if=active_dot.flame_shock>=2\nactions.aoe_totemic+=/elemental_blast,cycle_targets=1,if=(!talent.elemental_spirits.enabled||(talent.elemental_spirits.enabled&(charges=max_charges||feral_spirit.active>=2)))&buff.maelstrom_weapon.stack>=5&(!talent.crashing_storms.enabled||active_enemies<=3)\nactions.aoe_totemic+=/chain_lightning,cycle_targets=1,if=buff.maelstrom_weapon.stack>=5\nactions.aoe_totemic+=/flame_shock,if=!ticking\n\nactions.funnel+=/feral_spirit,if=talent.elemental_spirits.enabled\nactions.funnel+=/surging_totem\nactions.funnel+=/ascendance\nactions.funnel+=/windstrike,if=(talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>0)||buff.converging_storms.stack=buff.converging_storms.max_stack\nactions.funnel+=/tempest,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack||(buff.maelstrom_weapon.stack>=5&(tempest_mael_count>30||buff.awakening_storms.stack=2))\nactions.funnel+=/lightning_bolt,if=(active_dot.flame_shock>=active_enemies||active_dot.flame_shock=6)&buff.primordial_wave.up&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(!buff.splintered_elements.up||fight_remains<=12||raid_event.adds.remains<=gcd)\nactions.funnel+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5&talent.elemental_spirits.enabled&feral_spirit.active>=4\nactions.funnel+=/lightning_bolt,if=talent.supercharge.enabled&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(variable.expected_lb_funnel>variable.expected_cl_funnel)\nactions.funnel+=/chain_lightning,if=(talent.supercharge.enabled&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack)||buff.arc_discharge.up&buff.maelstrom_weapon.stack>=5\nactions.funnel+=/lava_lash,if=(talent.molten_assault.enabled&dot.flame_shock.ticking&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6)||(talent.ashen_catalyst.enabled&buff.ashen_catalyst.stack=buff.ashen_catalyst.max_stack)\nactions.funnel+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up\nactions.funnel+=/elemental_blast,if=(!talent.elemental_spirits.enabled||(talent.elemental_spirits.enabled&(charges=max_charges||buff.feral_spirit.up)))&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack\nactions.funnel+=/feral_spirit\nactions.funnel+=/doom_winds\nactions.funnel+=/stormstrike,if=buff.converging_storms.stack=buff.converging_storms.max_stack\nactions.funnel+=/lava_burst,if=(buff.molten_weapon.stack>buff.crackling_surge.stack)&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack\nactions.funnel+=/lightning_bolt,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(variable.expected_lb_funnel>variable.expected_cl_funnel)\nactions.funnel+=/chain_lightning,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack\nactions.funnel+=/crash_lightning,if=buff.doom_winds.up||!buff.crash_lightning.up||(talent.alpha_wolf.enabled&feral_spirit.active&alpha_wolf_min_remains=0)||(talent.converging_storms.enabled&buff.converging_storms.stack<buff.converging_storms.max_stack)\nactions.funnel+=/sundering,if=buff.doom_winds.up||talent.earthsurge.enabled\nactions.funnel+=/fire_nova,if=active_dot.flame_shock=6||(active_dot.flame_shock>=4&active_dot.flame_shock>=active_enemies)\nactions.funnel+=/ice_strike,if=talent.hailstorm.enabled&!buff.ice_strike.up\nactions.funnel+=/frost_shock,if=talent.hailstorm.enabled&buff.hailstorm.up\nactions.funnel+=/sundering\nactions.funnel+=/flame_shock,if=talent.molten_assault.enabled&!ticking\nactions.funnel+=/flame_shock,cycle_targets=1,if=refreshable&(talent.fire_nova.enabled||talent.primordial_wave.enabled)&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6\nactions.funnel+=/fire_nova,if=active_dot.flame_shock>=3\nactions.funnel+=/stormstrike,if=buff.crash_lightning.up&talent.deeply_rooted_elements.enabled\nactions.funnel+=/crash_lightning,if=talent.crashing_storms.enabled&buff.cl_crash_lightning.up&active_enemies>=4\nactions.funnel+=/windstrike\nactions.funnel+=/stormstrike\nactions.funnel+=/ice_strike\nactions.funnel+=/lava_lash\nactions.funnel+=/crash_lightning\nactions.funnel+=/fire_nova,if=active_dot.flame_shock>=2\nactions.funnel+=/elemental_blast,if=(!talent.elemental_spirits.enabled||(talent.elemental_spirits.enabled&(charges=max_charges||buff.feral_spirit.up)))&buff.maelstrom_weapon.stack>=5\nactions.funnel+=/lava_burst,if=(buff.molten_weapon.stack>buff.crackling_surge.stack)&buff.maelstrom_weapon.stack>=5\nactions.funnel+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5&(variable.expected_lb_funnel>variable.expected_cl_funnel)\nactions.funnel+=/chain_lightning,if=buff.maelstrom_weapon.stack>=5\nactions.funnel+=/flame_shock,if=!ticking\nactions.funnel+=/frost_shock,if=!talent.hailstorm.enabled",
      ["author"] = "SimC",
    },
    ["Elemental"] = {
      ["source"] = "https://github.com/simulationcraft/simc/",
      ["builtIn"] = true,
      ["date"] = 20241209,
      ["spec"] = 262,
      ["desc"] =
      "2024-12-09: Reimport Lava Burst\n\n2024-10-30: Sim update\n\n2024-10-23: 11.0.5\n\n2024-08-15, 09-15: Sim update\n\n2024-07-23: The War Within",
      ["profile"] =
      "# Ensure weapon enchant is applied if you've selected Improved Flametongue Weapon.\nactions.precombat+=/flametongue_weapon,if=talent.improved_flametongue_weapon.enabled\nactions.precombat+=/skyfury\nactions.precombat+=/lightning_shield\nactions.precombat+=/thunderstrike_ward\nactions.precombat+=/earth_shield,if=!buff.earth_shield.up&talent.elemental_orbit\nactions.precombat+=/stormkeeper\nactions.precombat+=/variable,name=mael_cap,value=100+50*talent.swelling_maelstrom.rank+25*talent.primordial_capacity.rank,op=set\nactions.precombat+=/variable,name=spymaster_in_1st,value=trinket.1.is.spymasters_web\nactions.precombat+=/variable,name=spymaster_in_2nd,value=trinket.2.is.spymasters_web\n\n# Interrupt of casts.\nactions+=/wind_shear\n# Enable more movement.\nactions+=/spiritwalkers_grace,moving=1\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/use_item,slot=trinket1,if=!variable.spymaster_in_1st||(fight_remains>180-60*talent.first_ascendant&(buff.spymasters_report.stack>25||buff.spymasters_report.stack<5)||buff.spymasters_report.stack>35||fight_remains<80)&cooldown.ascendance.ready&(buff.stormkeeper.up&cooldown.stormkeeper.remains>40||!talent.fury_of_the_storms)&(buff.primordial_wave.up||!talent.primordial_wave)||fight_remains<21&boss\nactions+=/use_item,slot=trinket2,if=!variable.spymaster_in_2nd||(fight_remains>180-60*talent.first_ascendant&(buff.spymasters_report.stack>25||buff.spymasters_report.stack<5)||buff.spymasters_report.stack>35||fight_remains<80)&cooldown.ascendance.ready&(buff.stormkeeper.up&cooldown.stormkeeper.remains>40||!talent.fury_of_the_storms)&(buff.primordial_wave.up||!talent.primordial_wave)||fight_remains<21&boss\nactions+=/use_item,slot=main_hand\nactions+=/lightning_shield,if=buff.lightning_shield.down\nactions+=/natures_swiftness\n### Use Power Infusion on Cooldown.\n## actions+=/invoke_external_buff,name=power_infusion\nactions+=/potion,if=buff.bloodlust.up||buff.spymasters_web.up||buff.ascendance.remains>12||fight_remains<31&boss\nactions+=/run_action_list,name=aoe,strict=1,if=spell_targets.chain_lightning>1\nactions+=/run_action_list,name=single_target\n\nactions.aoe+=/fire_elemental\nactions.aoe+=/storm_elemental\nactions.aoe+=/stormkeeper\n# {Fire} Reset LMT CD as early as possible [Hekili] based on true cooldown remaining\nactions.aoe+=/totemic_recall,if=cooldown.liquid_magma_totem.true_remains>15&(active_dot.flame_shock<(spell_targets.chain_lightning>?6)-2||talent.fire_elemental.enabled)\nactions.aoe+=/liquid_magma_totem,if=totem.liquid_magma_totem.down&cooldown.ascendance.remains>15&!buff.ascendance.up\n# Spread Flame Shock via Primordial Wave using Surge of Power if possible.\nactions.aoe+=/primordial_wave,cycle_targets=1,if=buff.surge_of_power.up||!talent.surge_of_power.enabled||maelstrom<60-5*talent.eye_of_the_storm.enabled\nactions.aoe+=/ancestral_swiftness\n# JUST DO IT! https://i.kym-cdn.com/entries/icons/mobile/000/018/147/Shia_LaBeouf__Just_Do_It__Motivational_Speech_(Original_Video_by_LaBeouf__R%C3%B6nkk%C3%B6___Turner)_0-4_screenshot.jpg\nactions.aoe+=/ascendance\n# Spread Flame Shock using Surge of Power if LMT is not picked.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&buff.surge_of_power.up&dot.flame_shock.remains<target.time_to_die-16&active_dot.flame_shock<(spell_targets.chain_lightning>?6)&!talent.liquid_magma_totem.enabled\n# Spread and refresh Flame Shock using Surge of Power (if talented) up to 6.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&talent.fire_elemental.enabled&(buff.surge_of_power.up||!talent.surge_of_power.enabled)&dot.flame_shock.remains<target.time_to_die-5&(active_dot.flame_shock<6||dot.flame_shock.remains>0)\n+# Buff Tempest with SoP or LB if two target\nactions.aoe+=/tempest,cycle_targets=1,if=!buff.arc_discharge.up&(buff.surge_of_power.up||!talent.surge_of_power.enabled)\nactions.aoe+=/lightning_bolt,if=buff.stormkeeper.up&buff.surge_of_power.up&spell_targets.chain_lightning=2\n# Consume Primordial Wave buff immediately if you have Stormkeeper buff, fighting 6+ enemies and need maelstrom to spend.\nactions.aoe+=/lava_burst,cycle_targets=1,if=dot.flame_shock.remains>2&buff.primordial_wave.up&(buff.stormkeeper.up&spell_targets.chain_lightning>=6||buff.tempest.up)&maelstrom<60-5*talent.eye_of_the_storm.enabled&talent.surge_of_power.enabled\n# Cast Lava burst to consume Primordial Wave proc. Wait for Lava Surge proc if possible.\nactions.aoe+=/lava_burst,cycle_targets=1,if=dot.flame_shock.remains>2&buff.primordial_wave.up\n# *{Fire} Use Lava Surge proc to buff <anything> with Master of the Elements.\nactions.aoe+=/lava_burst,cycle_targets=1,if=dot.flame_shock.remains&cooldown_react&buff.lava_surge.up&!buff.master_of_the_elements.up&talent.master_of_the_elements.enabled&talent.fire_elemental.enabled\n# Two Target\nactions.aoe+=/elemental_blast,cycle_targets=1,if=spell_targets.chain_lightning=2&(maelstrom>variable.mael_cap-30||cooldown.primordial_wave.remains<gcd&talent.surge_of_power.enabled||(buff.stormkeeper.up&spell_targets.chain_lightning>=6||buff.tempest.up)&talent.surge_of_power.enabled)\n# Activate Surge of Power if next global is Primordial wave. Respect Echoes of Great Sundering.\nactions.aoe+=/earthquake,if=cooldown.primordial_wave.remains<gcd&talent.surge_of_power.enabled&(buff.echoes_of_great_sundering_es.up||buff.echoes_of_great_sundering_eb.up||!talent.echoes_of_great_sundering.enabled)\n# Spend if all Lightning Rods ran out or you are close to overcaping. Respect Echoes of Great Sundering.\nactions.aoe+=/earthquake,if=(lightning_rod=0&talent.lightning_rod.enabled||maelstrom>variable.mael_cap-30)&(buff.echoes_of_great_sundering_es.up||buff.echoes_of_great_sundering_eb.up||!talent.echoes_of_great_sundering.enabled)\n# Spend to buff your follow-up Stormkeeper with Surge of Power on 6+ targets. Respect Echoes of Great Sundering.\nactions.aoe+=/earthquake,if=(buff.stormkeeper.up&spell_targets.chain_lightning>=6||buff.tempest.up)&talent.surge_of_power.enabled&(buff.echoes_of_great_sundering_es.up||buff.echoes_of_great_sundering_eb.up||!talent.echoes_of_great_sundering.enabled)\nactions.aoe+=/elemental_blast,cycle_targets=1,if=talent.echoes_of_great_sundering.enabled&!buff.echoes_of_great_sundering_eb.up&(lightning_rod=0||maelstrom>variable.mael_cap-30||(buff.stormkeeper.up&spell_targets.chain_lightning>=6||buff.tempest.up)&talent.surge_of_power.enabled)\n# Use the talents you selected. Spread Lightning Rod to as many targets as possible.\nactions.aoe+=/earth_shock,cycle_targets=1,if=talent.echoes_of_great_sundering.enabled&!buff.echoes_of_great_sundering_es.up&(lightning_rod=0||maelstrom>variable.mael_cap-30||(buff.stormkeeper.up&spell_targets.chain_lightning>=6||buff.tempest.up)&talent.surge_of_power.enabled)\n# Use Icefury for Fusion of Elements proc.\nactions.aoe+=/icefury,if=talent.fusion_of_elements.enabled&!(buff.fusion_of_elements_nature.up||buff.fusion_of_elements_fire.up)&(cooldown.primordial_wave.remains<5||((spell_targets.chain_lightning=2||(!spell_targets.chain_lightning>=5&talent.echoes_of_great_sundering.enabled&!buff.echoes_of_great_sundering_eb.up))&talent.elemental_blast.enabled))\n# *{Fire} Proc Master of the Elements outside Ascendance.\nactions.aoe+=/lava_burst,cycle_targets=1,if=dot.flame_shock.remains>2&talent.master_of_the_elements.enabled&!buff.master_of_the_elements.up&!buff.ascendance.up&talent.fire_elemental.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\nactions.single_target+=/fire_elemental\nactions.single_target+=/storm_elemental\n# Just use Stormkeeper.\nactions.single_target+=/stormkeeper\n# Use Primordial Wave as much as possible.\nactions.single_target+=/primordial_wave,if=!buff.surge_of_power.up\nactions.single_target+=/ancestral_swiftness\nactions.single_target+=/ascendance,if=(time<10||buff.spymasters_web.up||!(variable.spymaster_in_1st||variable.spymaster_in_2nd))&(buff.stormkeeper.up&cooldown.stormkeeper.remains>40||!talent.fury_of_the_storms)&(buff.primordial_wave.up||!talent.primordial_wave)\n# Surge of Power is strong and should be used.??\nactions.single_target+=/tempest,if=buff.surge_of_power.up\nactions.single_target+=/lightning_bolt,if=buff.surge_of_power.up\n# Dont waste Storm Frenzy (minimal gain).\nactions.single_target+=/tempest,if=buff.storm_frenzy.stack=2&!talent.surge_of_power.enabled\nactions.single_target+=/lightning_bolt,if=buff.storm_frenzy.stack=2&!talent.surge_of_power.enabled\n# Use LMT to apply Flame Shock.\nactions.single_target+=/liquid_magma_totem,if=totem.liquid_magma_totem.down&dot.flame_shock.refreshable&!buff.master_of_the_elements.up&cooldown.primordial_wave.remains>dot.flame_shock.remains+3\n# Manually refresh Flame shock if better options are not talented.\nactions.single_target+=/flame_shock,if=dot.flame_shock.refreshable&!buff.surge_of_power.up&!buff.master_of_the_elements.up&!talent.primordial_wave&!talent.liquid_magma_totem\n# Maintain Flame shock if talented into both Erupting Lava and Master of the elements.\nactions.single_target+=/flame_shock,if=dot.flame_shock.refreshable&!buff.surge_of_power.up&!buff.master_of_the_elements.up&talent.master_of_the_elements&talent.erupting_lava&(cooldown.primordial_wave.remains>dot.flame_shock.remains||!talent.primordial_wave)&(cooldown.liquid_magma_totem.remains>dot.flame_shock.remains||!talent.liquid_magma_totem)\n# Spend if close to overcaping, MotE buff is up or Ascendance is about to expire. Respect Echoes of Great Sundering.\nactions.single_target+=/earthquake,if=(buff.echoes_of_great_sundering_es.up||buff.echoes_of_great_sundering_eb.up)&(maelstrom>variable.mael_cap-15||buff.master_of_the_elements.up||buff.ascendance.up&buff.ascendance.remains<3||fight_remains<5)\nactions.single_target+=/elemental_blast,if=maelstrom>variable.mael_cap-15||buff.master_of_the_elements.up||buff.ascendance.up&buff.ascendance.remains<3||fight_remains<5\nactions.single_target+=/earth_shock,if=maelstrom>variable.mael_cap-15||buff.master_of_the_elements.up||buff.ascendance.up&buff.ascendance.remains<3||fight_remains<5\n# Use Icefury to proc Fusion of Elements.\nactions.single_target+=/icefury,if=!(buff.fusion_of_elements_nature.up||buff.fusion_of_elements_fire.up)\n# Use Lava Burst to proc Master of the Elements.\n+actions.single_target+=/lava_burst,cycle_targets=1,if=dot.flame_shock.remains>execute_time&(!buff.master_of_the_elements.up&(!talent.master_of_the_elements||buff.lava_surge.up||cooldown.lava_burst.charges_fractional>1.5||maelstrom>82-10*talent.eye_of_the_storm||maelstrom>52-5*talent.eye_of_the_storm&(buff.echoes_of_great_sundering_eb.up||!talent.elemental_blast)))\n# Spend to activate Surge of Power buff for Tempest or Stormkeeper.\nactions.single_target+=/earthquake,if=(buff.echoes_of_great_sundering_es.up||buff.echoes_of_great_sundering_eb.up)&(buff.tempest.up||buff.stormkeeper.up)&talent.surge_of_power&!talent.master_of_the_elements\nactions.single_target+=/elemental_blast,if=(buff.tempest.up||buff.stormkeeper.up)&talent.surge_of_power&!talent.master_of_the_elements\nactions.single_target+=/earth_shock,if=(buff.tempest.up||buff.stormkeeper.up)&talent.surge_of_power&!talent.master_of_the_elements\nactions.single_target+=/tempest\n# Use Icefury-empowered Frost Shocks outside of Ascendance (neutral to minimal gain).\nactions.single_target+=/frost_shock,if=buff.icefury_dmg.up&!buff.ascendance.up&!buff.stormkeeper.up\n# Filler spell. Always available. Always the bottom line.\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,cycle_targets=1=refreshable\nactions.single_target+=/flame_shock,moving=1\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1",
      ["version"] = 20241209,
      ["warnings"] =
      "The import for 'single_target' required some automated changes.\nLine 6: Converted 'talent.fury_of_the_storms' to 'talent.fury_of_the_storms.enabled' (1x).\nLine 6: Converted 'talent.primordial_wave' to 'talent.primordial_wave.enabled' (1x).\nLine 12: Converted 'talent.primordial_wave' to 'talent.primordial_wave.enabled' (1x).\nLine 12: Converted 'talent.liquid_magma_totem' to 'talent.liquid_magma_totem.enabled' (1x).\nLine 13: Converted 'talent.master_of_the_elements' to 'talent.master_of_the_elements.enabled' (1x).\nLine 13: Converted 'talent.erupting_lava' to 'talent.erupting_lava.enabled' (1x).\nLine 13: Converted 'talent.primordial_wave' to 'talent.primordial_wave.enabled' (1x).\nLine 13: Converted 'talent.liquid_magma_totem' to 'talent.liquid_magma_totem.enabled' (1x).\nLine 18: Converted 'talent.master_of_the_elements' to 'talent.master_of_the_elements.enabled' (1x).\nLine 18: Converted 'talent.eye_of_the_storm' to 'talent.eye_of_the_storm.enabled' (1x).\nLine 18: Converted 'talent.eye_of_the_storm' to 'talent.eye_of_the_storm.enabled' (1x).\nLine 18: Converted 'talent.elemental_blast' to 'talent.elemental_blast.enabled' (1x).\nLine 19: Converted 'talent.surge_of_power' to 'talent.surge_of_power.enabled' (1x).\nLine 19: Converted 'talent.master_of_the_elements' to 'talent.master_of_the_elements.enabled' (1x).\nLine 20: Converted 'talent.surge_of_power' to 'talent.surge_of_power.enabled' (1x).\nLine 20: Converted 'talent.master_of_the_elements' to 'talent.master_of_the_elements.enabled' (1x).\nLine 21: Converted 'talent.surge_of_power' to 'talent.surge_of_power.enabled' (1x).\nLine 21: Converted 'talent.master_of_the_elements' to 'talent.master_of_the_elements.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 7: Converted 'talent.first_ascendant' to 'talent.first_ascendant.enabled' (1x).\nLine 7: Converted 'talent.fury_of_the_storms' to 'talent.fury_of_the_storms.enabled' (1x).\nLine 7: Converted 'talent.primordial_wave' to 'talent.primordial_wave.enabled' (1x).\nLine 8: Converted 'talent.first_ascendant' to 'talent.first_ascendant.enabled' (1x).\nLine 8: Converted 'talent.fury_of_the_storms' to 'talent.fury_of_the_storms.enabled' (1x).\nLine 8: Converted 'talent.primordial_wave' to 'talent.primordial_wave.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 5: Converted 'talent.elemental_orbit' to 'talent.elemental_orbit.enabled' (1x).\nLine 8: Converted 'trinket.1.is.spymasters_web' to 'trinket.t1.is.spymasters_web' (1x).\nLine 9: Converted 'trinket.2.is.spymasters_web' to 'trinket.t2.is.spymasters_web' (1x).\n\nImported 4 action lists.\n",
      ["lists"] = {
        ["single_target"] = {
          {
            ["action"] = "fire_elemental",
            ["enabled"] = true,
          },
          {
            ["action"] = "storm_elemental",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["description"] = "Just use Stormkeeper.",
            ["action"] = "stormkeeper",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! buff.surge_of_power.up",
            ["action"] = "primordial_wave",
            ["description"] = "Use Primordial Wave as much as possible.",
          },
          {
            ["action"] = "ancestral_swiftness",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( time < 10 || buff.spymasters_web.up || ! ( variable.spymaster_in_1st || variable.spymaster_in_2nd ) ) & ( buff.stormkeeper.up & cooldown.stormkeeper.remains > 40 || ! talent.fury_of_the_storms.enabled ) & ( buff.primordial_wave.up || ! talent.primordial_wave.enabled )",
            ["action"] = "ascendance",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.surge_of_power.up",
            ["action"] = "tempest",
            ["description"] = "Surge of Power is strong and should be used.??",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.surge_of_power.up",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.storm_frenzy.stack = 2 & ! talent.surge_of_power.enabled",
            ["action"] = "tempest",
            ["description"] = "Dont waste Storm Frenzy (minimal gain).",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.storm_frenzy.stack = 2 & ! talent.surge_of_power.enabled",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "totem.liquid_magma_totem.down & dot.flame_shock.refreshable & ! buff.master_of_the_elements.up & cooldown.primordial_wave.remains > dot.flame_shock.remains + 3",
            ["action"] = "liquid_magma_totem",
            ["description"] = "Use LMT to apply Flame Shock.",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "dot.flame_shock.refreshable & ! buff.surge_of_power.up & ! buff.master_of_the_elements.up & ! talent.primordial_wave.enabled & ! talent.liquid_magma_totem.enabled",
            ["action"] = "flame_shock",
            ["description"] = "Manually refresh Flame shock if better options are not talented.",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "dot.flame_shock.refreshable & ! buff.surge_of_power.up & ! buff.master_of_the_elements.up & talent.master_of_the_elements.enabled & talent.erupting_lava.enabled & ( cooldown.primordial_wave.remains > dot.flame_shock.remains || ! talent.primordial_wave.enabled ) & ( cooldown.liquid_magma_totem.remains > dot.flame_shock.remains || ! talent.liquid_magma_totem.enabled )",
            ["action"] = "flame_shock",
            ["description"] = "Maintain Flame shock if talented into both Erupting Lava and Master of the elements.",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.echoes_of_great_sundering_es.up || buff.echoes_of_great_sundering_eb.up ) & ( maelstrom > variable.mael_cap - 15 || buff.master_of_the_elements.up || buff.ascendance.up & buff.ascendance.remains < 3 || fight_remains < 5 )",
            ["action"] = "earthquake",
            ["description"] =
            "Spend if close to overcaping, MotE buff is up or Ascendance is about to expire. Respect Echoes of Great Sundering.",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "maelstrom > variable.mael_cap - 15 || buff.master_of_the_elements.up || buff.ascendance.up & buff.ascendance.remains < 3 || fight_remains < 5",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "maelstrom > variable.mael_cap - 15 || buff.master_of_the_elements.up || buff.ascendance.up & buff.ascendance.remains < 3 || fight_remains < 5",
            ["action"] = "earth_shock",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! ( buff.fusion_of_elements_nature.up || buff.fusion_of_elements_fire.up )",
            ["action"] = "icefury",
            ["description"] = "Use Icefury to proc Fusion of Elements.",
          },
          {
            ["enabled"] = true,
            ["action"] = "lava_burst",
            ["cycle_targets"] = 1,
            ["description"] = "Use Lava Burst to proc Master of the Elements.",
            ["criteria"] =
            "dot.flame_shock.remains > execute_time & ( ! buff.master_of_the_elements.up & ( ! talent.master_of_the_elements.enabled || buff.lava_surge.up || cooldown.lava_burst.charges_fractional > 1.5 || maelstrom > 82 - 10 * talent.eye_of_the_storm.enabled || maelstrom > 52 - 5 * talent.eye_of_the_storm.enabled & ( buff.echoes_of_great_sundering_eb.up || ! talent.elemental_blast.enabled ) ) )",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.echoes_of_great_sundering_es.up || buff.echoes_of_great_sundering_eb.up ) & ( buff.tempest.up || buff.stormkeeper.up ) & talent.surge_of_power.enabled & ! talent.master_of_the_elements.enabled",
            ["action"] = "earthquake",
            ["description"] = "Spend to activate Surge of Power buff for Tempest or Stormkeeper.",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.tempest.up || buff.stormkeeper.up ) & talent.surge_of_power.enabled & ! talent.master_of_the_elements.enabled",
            ["action"] = "elemental_blast",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.tempest.up || buff.stormkeeper.up ) & talent.surge_of_power.enabled & ! talent.master_of_the_elements.enabled",
            ["action"] = "earth_shock",
          },
          {
            ["action"] = "tempest",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.icefury_dmg.up & ! buff.ascendance.up & ! buff.stormkeeper.up",
            ["action"] = "frost_shock",
            ["description"] = "Use Icefury-empowered Frost Shocks outside of Ascendance (neutral to minimal gain).",
          },
          {
            ["enabled"] = true,
            ["description"] = "Filler spell. Always available. Always the bottom line.",
            ["action"] = "lightning_bolt",
          },
          {
            ["moving"] = 1,
            ["enable_moving"] = true,
            ["action"] = "flame_shock",
            ["enabled"] = true,
          },
          {
            ["moving"] = 1,
            ["enable_moving"] = true,
            ["action"] = "flame_shock",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["enable_moving"] = true,
            ["action"] = "frost_shock",
            ["moving"] = 1,
            ["description"] = "Frost Shock is our movement filler.",
          },
        },
        ["aoe"] = {
          {
            ["action"] = "fire_elemental",
            ["enabled"] = true,
          },
          {
            ["action"] = "storm_elemental",
            ["enabled"] = true,
          },
          {
            ["action"] = "stormkeeper",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "cooldown.liquid_magma_totem.true_remains > 15 & ( active_dot.flame_shock < ( spell_targets.chain_lightning >? 6 ) - 2 || talent.fire_elemental.enabled )",
            ["action"] = "totemic_recall",
            ["description"] = "{Fire} Reset LMT CD as early as possible [Hekili] based on true cooldown remaining",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "totem.liquid_magma_totem.down & cooldown.ascendance.remains > 15 & ! buff.ascendance.up",
            ["action"] = "liquid_magma_totem",
          },
          {
            ["enabled"] = true,
            ["action"] = "primordial_wave",
            ["cycle_targets"] = 1,
            ["description"] = "Spread Flame Shock via Primordial Wave using Surge of Power if possible.",
            ["criteria"] =
            "buff.surge_of_power.up || ! talent.surge_of_power.enabled || maelstrom < 60 - 5 * talent.eye_of_the_storm.enabled",
          },
          {
            ["action"] = "ancestral_swiftness",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["description"] =
            "JUST DO IT! https://i.kym-cdn.com/entries/icons/mobile/000/018/147/Shia_LaBeouf__Just_Do_It__Motivational_Speech_(Original_Video_by_LaBeouf__R%C3%B6nkk%C3%B6___Turner)_0-4_screenshot.jpg",
            ["action"] = "ascendance",
          },
          {
            ["enabled"] = true,
            ["action"] = "flame_shock",
            ["cycle_targets"] = 1,
            ["description"] = "Spread Flame Shock using Surge of Power if LMT is not picked.",
            ["criteria"] =
            "refreshable & buff.surge_of_power.up & dot.flame_shock.remains < target.time_to_die - 16 & active_dot.flame_shock < ( spell_targets.chain_lightning >? 6 ) & ! talent.liquid_magma_totem.enabled",
          },
          {
            ["enabled"] = true,
            ["action"] = "flame_shock",
            ["cycle_targets"] = 1,
            ["description"] = "Spread and refresh Flame Shock using Surge of Power (if talented) up to 6.",
            ["criteria"] =
            "refreshable & talent.fire_elemental.enabled & ( buff.surge_of_power.up || ! talent.surge_of_power.enabled ) & dot.flame_shock.remains < target.time_to_die - 5 & ( active_dot.flame_shock < 6 || dot.flame_shock.remains > 0 )",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! buff.arc_discharge.up & ( buff.surge_of_power.up || ! talent.surge_of_power.enabled )",
            ["action"] = "tempest",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.stormkeeper.up & buff.surge_of_power.up & spell_targets.chain_lightning = 2",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["action"] = "lava_burst",
            ["cycle_targets"] = 1,
            ["description"] =
            "Consume Primordial Wave buff immediately if you have Stormkeeper buff, fighting 6+ enemies and need maelstrom to spend.",
            ["criteria"] =
            "dot.flame_shock.remains > 2 & buff.primordial_wave.up & ( buff.stormkeeper.up & spell_targets.chain_lightning >= 6 || buff.tempest.up ) & maelstrom < 60 - 5 * talent.eye_of_the_storm.enabled & talent.surge_of_power.enabled",
          },
          {
            ["enabled"] = true,
            ["action"] = "lava_burst",
            ["cycle_targets"] = 1,
            ["description"] = "Cast Lava burst to consume Primordial Wave proc. Wait for Lava Surge proc if possible.",
            ["criteria"] = "dot.flame_shock.remains > 2 & buff.primordial_wave.up",
          },
          {
            ["enabled"] = true,
            ["action"] = "lava_burst",
            ["cycle_targets"] = 1,
            ["description"] = "*{Fire} Use Lava Surge proc to buff <anything> with Master of the Elements.",
            ["criteria"] =
            "dot.flame_shock.remains & cooldown_react & buff.lava_surge.up & ! buff.master_of_the_elements.up & talent.master_of_the_elements.enabled & talent.fire_elemental.enabled",
          },
          {
            ["enabled"] = true,
            ["action"] = "elemental_blast",
            ["cycle_targets"] = 1,
            ["description"] = "Two Target",
            ["criteria"] =
            "spell_targets.chain_lightning = 2 & ( maelstrom > variable.mael_cap - 30 || cooldown.primordial_wave.remains < gcd.max & talent.surge_of_power.enabled || ( buff.stormkeeper.up & spell_targets.chain_lightning >= 6 || buff.tempest.up ) & talent.surge_of_power.enabled )",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "cooldown.primordial_wave.remains < gcd.max & talent.surge_of_power.enabled & ( buff.echoes_of_great_sundering_es.up || buff.echoes_of_great_sundering_eb.up || ! talent.echoes_of_great_sundering.enabled )",
            ["action"] = "earthquake",
            ["description"] =
            "Activate Surge of Power if next global is Primordial wave. Respect Echoes of Great Sundering.",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( lightning_rod = 0 & talent.lightning_rod.enabled || maelstrom > variable.mael_cap - 30 ) & ( buff.echoes_of_great_sundering_es.up || buff.echoes_of_great_sundering_eb.up || ! talent.echoes_of_great_sundering.enabled )",
            ["action"] = "earthquake",
            ["description"] =
            "Spend if all Lightning Rods ran out or you are close to overcaping. Respect Echoes of Great Sundering.",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.stormkeeper.up & spell_targets.chain_lightning >= 6 || buff.tempest.up ) & talent.surge_of_power.enabled & ( buff.echoes_of_great_sundering_es.up || buff.echoes_of_great_sundering_eb.up || ! talent.echoes_of_great_sundering.enabled )",
            ["action"] = "earthquake",
            ["description"] =
            "Spend to buff your follow-up Stormkeeper with Surge of Power on 6+ targets. Respect Echoes of Great Sundering.",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.echoes_of_great_sundering.enabled & ! buff.echoes_of_great_sundering_eb.up & ( lightning_rod = 0 || maelstrom > variable.mael_cap - 30 || ( buff.stormkeeper.up & spell_targets.chain_lightning >= 6 || buff.tempest.up ) & talent.surge_of_power.enabled )",
            ["action"] = "elemental_blast",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["action"] = "earth_shock",
            ["cycle_targets"] = 1,
            ["description"] = "Use the talents you selected. Spread Lightning Rod to as many targets as possible.",
            ["criteria"] =
            "talent.echoes_of_great_sundering.enabled & ! buff.echoes_of_great_sundering_es.up & ( lightning_rod = 0 || maelstrom > variable.mael_cap - 30 || ( buff.stormkeeper.up & spell_targets.chain_lightning >= 6 || buff.tempest.up ) & talent.surge_of_power.enabled )",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.fusion_of_elements.enabled & ! ( buff.fusion_of_elements_nature.up || buff.fusion_of_elements_fire.up ) & ( cooldown.primordial_wave.remains < 5 || ( ( spell_targets.chain_lightning = 2 || ( ! spell_targets.chain_lightning >= 5 & talent.echoes_of_great_sundering.enabled & ! buff.echoes_of_great_sundering_eb.up ) ) & talent.elemental_blast.enabled ) )",
            ["action"] = "icefury",
            ["description"] = "Use Icefury for Fusion of Elements proc.",
          },
          {
            ["enabled"] = true,
            ["action"] = "lava_burst",
            ["cycle_targets"] = 1,
            ["description"] = "*{Fire} Proc Master of the Elements outside Ascendance.",
            ["criteria"] =
            "dot.flame_shock.remains > 2 & talent.master_of_the_elements.enabled & ! buff.master_of_the_elements.up & ! buff.ascendance.up & talent.fire_elemental.enabled",
          },
          {
            ["action"] = "chain_lightning",
            ["enabled"] = true,
          },
          {
            ["moving"] = 1,
            ["enable_moving"] = true,
            ["action"] = "flame_shock",
            ["cycle_targets"] = 1,
            ["enabled"] = true,
            ["criteria"] = "refreshable",
          },
          {
            ["moving"] = 1,
            ["enable_moving"] = true,
            ["action"] = "frost_shock",
            ["enabled"] = true,
          },
        },
        ["default"] = {
          {
            ["enabled"] = true,
            ["description"] = "Interrupt of casts.",
            ["action"] = "wind_shear",
          },
          {
            ["enabled"] = true,
            ["enable_moving"] = true,
            ["action"] = "spiritwalkers_grace",
            ["moving"] = 1,
            ["description"] = "Enable more movement.",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
            ["action"] = "blood_fury",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
            ["action"] = "berserking",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
            ["action"] = "fireblood",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
            ["action"] = "ancestral_call",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "! variable.spymaster_in_1st || ( fight_remains > 180 - 60 * talent.first_ascendant.enabled & ( buff.spymasters_report.stack > 25 || buff.spymasters_report.stack < 5 ) || buff.spymasters_report.stack > 35 || fight_remains < 80 ) & cooldown.ascendance.ready & ( buff.stormkeeper.up & cooldown.stormkeeper.remains > 40 || ! talent.fury_of_the_storms.enabled ) & ( buff.primordial_wave.up || ! talent.primordial_wave.enabled ) || fight_remains < 21 & boss",
            ["action"] = "trinket1",
            ["slot"] = "trinket1",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "! variable.spymaster_in_2nd || ( fight_remains > 180 - 60 * talent.first_ascendant.enabled & ( buff.spymasters_report.stack > 25 || buff.spymasters_report.stack < 5 ) || buff.spymasters_report.stack > 35 || fight_remains < 80 ) & cooldown.ascendance.ready & ( buff.stormkeeper.up & cooldown.stormkeeper.remains > 40 || ! talent.fury_of_the_storms.enabled ) & ( buff.primordial_wave.up || ! talent.primordial_wave.enabled ) || fight_remains < 21 & boss",
            ["action"] = "trinket2",
            ["slot"] = "trinket2",
          },
          {
            ["enabled"] = true,
            ["action"] = "main_hand",
            ["slot"] = "main_hand",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.lightning_shield.down",
            ["action"] = "lightning_shield",
          },
          {
            ["action"] = "natures_swiftness",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.bloodlust.up || buff.spymasters_web.up || buff.ascendance.remains > 12 || fight_remains < 31 & boss",
            ["action"] = "potion",
          },
          {
            ["enabled"] = true,
            ["action"] = "run_action_list",
            ["strict"] = 1,
            ["criteria"] = "spell_targets.chain_lightning > 1",
            ["list_name"] = "aoe",
          },
          {
            ["enabled"] = true,
            ["action"] = "run_action_list",
            ["list_name"] = "single_target",
          },
        },
        ["precombat"] = {
          {
            ["enabled"] = true,
            ["criteria"] = "talent.improved_flametongue_weapon.enabled",
            ["action"] = "flametongue_weapon",
            ["description"] = "Ensure weapon enchant is applied if you've selected Improved Flametongue Weapon.",
          },
          {
            ["action"] = "skyfury",
            ["enabled"] = true,
          },
          {
            ["action"] = "lightning_shield",
            ["enabled"] = true,
          },
          {
            ["action"] = "thunderstrike_ward",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! buff.earth_shield.up & talent.elemental_orbit.enabled",
            ["action"] = "earth_shield",
          },
          {
            ["action"] = "stormkeeper",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["op"] = "set",
            ["action"] = "variable",
            ["value"] = "100 + 50 * talent.swelling_maelstrom.rank + 25 * talent.primordial_capacity.rank",
            ["var_name"] = "mael_cap",
          },
          {
            ["enabled"] = true,
            ["op"] = "set",
            ["action"] = "variable",
            ["value"] = "trinket.t1.is.spymasters_web",
            ["var_name"] = "spymaster_in_1st",
          },
          {
            ["enabled"] = true,
            ["op"] = "set",
            ["action"] = "variable",
            ["value"] = "trinket.t2.is.spymasters_web",
            ["var_name"] = "spymaster_in_2nd",
          },
        },
      },
      ["author"] = "SimulationCraft",
    },
    ["Restoration Shaman"] = {
      ["builtIn"] = true,
      ["date"] = 20241020,
      ["spec"] = 264,
      ["desc"] = "2024-07-30: The War Within",
      ["profile"] =
      "actions.precombat+=/earthliving_weapon\nactions.precombat+=/tidecallers_guard\nactions.precombat+=/water_shield,if=buff.water_shield.up+buff.earth_shield.up+buff.lightning_shield.up<1+talent.elemental_orbit.rank||(!buff.water_shield.up&settings.healing_mode)\nactions.precombat+=/lightning_shield,if=(buff.water_shield.up+buff.earth_shield.up+buff.lightning_shield.up<1+talent.elemental_orbit.rank)&settings.second_shield=lightning_shield\nactions.precombat+=/earth_shield,if=(buff.water_shield.up+buff.earth_shield.up+buff.lightning_shield.up<1+talent.elemental_orbit.rank)&settings.second_shield=earth_shield\nactions.precombat+=/earth_elemental\nactions.precombat+=/potion\n\nactions+=/spiritwalkers_grace,moving=1,if=movement.distance>6\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/call_action_list,name=healing,strict=1,if=settings.healing_mode\nactions+=/potion\nactions+=/use_items\nactions+=/blood_fury\nactions+=/berserking\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/surging_totem,if=talent.acid_rain\nactions+=/healing_rain,if=!moving&talent.acid_rain\nactions+=/flame_shock,cycle_targets=1,if=active_enemies<3&refreshable\n# actions+=/primordial_wave\nactions+=/lava_burst,if=(active_enemies=1||active_enemies=2&buff.lava_surge.up)&dot.flame_shock.remains>cast_time&cooldown_react\nactions+=/earth_elemental\nactions+=/lightning_bolt,if=spell_targets.chain_lightning<2||!talent.chain_lightning\nactions+=/chain_lightning,if=spell_targets.chain_lightning>1\nactions+=/flame_shock,moving=1\nactions+=/frost_shock,moving=1\n\nactions.healing+=/downpour,if=buff.unleash_life.up||buff.downpour.up&buff.downpour.remains<2\nactions.healing+=/mana_tide_totem,if=mana.pct<85\nactions.healing+=/totemic_recall,if=prev_gcd.earthen_wall_totem\nactions.healing+=/earthen_wall_totem\nactions.healing+=/chain_heal,if=buff.high_tide.up\nactions.healing+=/call_action_list,strict=1,name=unleash,if=buff.unleash_life.up\nactions.healing+=/surging_totem\nactions.healing+=/healing_rain\nactions.healing+=/earth_shield,if=active_dot.earth_shield<1+talent.elemental_orbit.rank&buff.earth_shield.up\nactions.healing+=/earth_shield,if=(!buff.earth_shield.up&settings.second_shield=earth_shield&talent.elemental_orbit.enabled)\nactions.healing+=/healing_stream_totem,if=totem.surging_totem.up&!totem.healing_stream_totem.up\nactions.healing+=/riptide,if=cooldown.riptide.charges=cooldown.riptide.charges_max\nactions.healing+=/unleash_life,if=talent.call_of_the_ancestors.enabled||cooldown.wellspring.remains<2||(cooldown.surging_totem.remains<3||buff.downpour.up&buff.downpour.remains>3)\nactions.healing+=/wellspring\n\nactions.unleash+=/downpour\nactions.unleash+=/wellspring\nactions.unleash+=/riptide",
      ["version"] = 20241020,
      ["warnings"] =
      "The import for 'default' required some automated changes.\nLine 11: Converted 'talent.acid_rain' to 'talent.acid_rain.enabled' (1x).\nLine 12: Converted 'talent.acid_rain' to 'talent.acid_rain.enabled' (1x).\nLine 16: Converted 'talent.chain_lightning' to 'talent.chain_lightning.enabled' (1x).\n\nImported 4 action lists.\n",
      ["author"] = "Hekili",
      ["lists"] = {
        ["unleash"] = {
          {
            ["action"] = "downpour",
            ["enabled"] = true,
          },
          {
            ["action"] = "wellspring",
            ["enabled"] = true,
          },
          {
            ["action"] = "riptide",
            ["enabled"] = true,
          },
        },
        ["healing"] = {
          {
            ["enabled"] = true,
            ["criteria"] = "buff.unleash_life.up || buff.downpour.up & buff.downpour.remains < 2",
            ["action"] = "downpour",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "mana.pct < 85",
            ["action"] = "mana_tide_totem",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "prev_gcd.earthen_wall_totem",
            ["action"] = "totemic_recall",
          },
          {
            ["action"] = "earthen_wall_totem",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "buff.high_tide.up",
            ["action"] = "chain_heal",
          },
          {
            ["enabled"] = true,
            ["action"] = "call_action_list",
            ["strict"] = 1,
            ["criteria"] = "buff.unleash_life.up",
            ["list_name"] = "unleash",
          },
          {
            ["action"] = "surging_totem",
            ["enabled"] = true,
          },
          {
            ["action"] = "healing_rain",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "active_dot.earth_shield < 1 + talent.elemental_orbit.rank & buff.earth_shield.up",
            ["action"] = "earth_shield",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( ! buff.earth_shield.up & settings.second_shield = earth_shield & talent.elemental_orbit.enabled )",
            ["action"] = "earth_shield",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "totem.surging_totem.up & ! totem.healing_stream_totem.up",
            ["action"] = "healing_stream_totem",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "cooldown.riptide.charges = cooldown.riptide.charges_max",
            ["action"] = "riptide",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "talent.call_of_the_ancestors.enabled || cooldown.wellspring.remains < 2 || ( cooldown.surging_totem.remains < 3 || buff.downpour.up & buff.downpour.remains > 3 )",
            ["action"] = "unleash_life",
          },
          {
            ["action"] = "wellspring",
            ["enabled"] = true,
          },
        },
        ["default"] = {
          {
            ["enabled"] = true,
            ["enable_moving"] = true,
            ["action"] = "spiritwalkers_grace",
            ["moving"] = 1,
            ["criteria"] = "movement.distance > 6",
          },
          {
            ["enabled"] = true,
            ["description"] = "Interrupt of casts.",
            ["action"] = "wind_shear",
          },
          {
            ["enabled"] = true,
            ["action"] = "call_action_list",
            ["strict"] = 1,
            ["criteria"] = "settings.healing_mode",
            ["list_name"] = "healing",
          },
          {
            ["action"] = "potion",
            ["enabled"] = true,
          },
          {
            ["action"] = "use_items",
            ["enabled"] = true,
          },
          {
            ["action"] = "blood_fury",
            ["enabled"] = true,
          },
          {
            ["action"] = "berserking",
            ["enabled"] = true,
          },
          {
            ["action"] = "fireblood",
            ["enabled"] = true,
          },
          {
            ["action"] = "ancestral_call",
            ["enabled"] = true,
          },
          {
            ["action"] = "bag_of_tricks",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "talent.acid_rain.enabled",
            ["action"] = "surging_totem",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "! moving & talent.acid_rain.enabled",
            ["action"] = "healing_rain",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "active_enemies < 3 & refreshable",
            ["action"] = "flame_shock",
            ["cycle_targets"] = 1,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( active_enemies = 1 || active_enemies = 2 & buff.lava_surge.up ) & dot.flame_shock.remains > cast_time & cooldown_react",
            ["action"] = "lava_burst",
            ["description"] = "actions.default+=/primordial_wave",
          },
          {
            ["action"] = "earth_elemental",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] = "spell_targets.chain_lightning < 2 || ! talent.chain_lightning.enabled",
            ["action"] = "lightning_bolt",
          },
          {
            ["enabled"] = true,
            ["criteria"] = "spell_targets.chain_lightning > 1",
            ["action"] = "chain_lightning",
          },
          {
            ["moving"] = 1,
            ["enable_moving"] = true,
            ["action"] = "flame_shock",
            ["enabled"] = true,
          },
          {
            ["moving"] = 1,
            ["enable_moving"] = true,
            ["action"] = "frost_shock",
            ["enabled"] = true,
          },
        },
        ["precombat"] = {
          {
            ["action"] = "earthliving_weapon",
            ["enabled"] = true,
          },
          {
            ["action"] = "tidecallers_guard",
            ["enabled"] = true,
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "buff.water_shield.up + buff.earth_shield.up + buff.lightning_shield.up < 1 + talent.elemental_orbit.rank || ( ! buff.water_shield.up & settings.healing_mode )",
            ["action"] = "water_shield",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.water_shield.up + buff.earth_shield.up + buff.lightning_shield.up < 1 + talent.elemental_orbit.rank ) & settings.second_shield = lightning_shield",
            ["action"] = "lightning_shield",
          },
          {
            ["enabled"] = true,
            ["criteria"] =
            "( buff.water_shield.up + buff.earth_shield.up + buff.lightning_shield.up < 1 + talent.elemental_orbit.rank ) & settings.second_shield = earth_shield",
            ["action"] = "earth_shield",
          },
          {
            ["action"] = "earth_elemental",
            ["enabled"] = true,
          },
          {
            ["action"] = "potion",
            ["enabled"] = true,
          },
        },
      },
    },
  },
}
