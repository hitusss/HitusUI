local name = "CVars"

local function setupCVars()
  SetCVar("playIntroMovie", 0)

  SetCVar("showTutorials", 0)
  SetCVar("showNPETutorials", 0)
  SetCVar("threatWarning", 3)

  SetCVar("guildMemberNotify", 0)
  SetCVar("showToastOnline", 0)
  SetCVar("showToastOffline", 0)

  SetCVar("ResampleAlwaysSharpen", 1)

  SetCVar("cameraDistanceMaxZoomFactor", 2.6)
  SetCVar("CameraReduceUnexpectedMovement", 1)
  SetCVar("CameraKeepCharacterCentered", 0)
  SetCVar("ShakeStrengthCamera", 0.25)
  SetCVar("ShakeStrengthUI", 0.25)

  SetCVar("enableMouseoverCast", 1)

  SetCVar("findYourselfAnywhere", 1)
  SetCVar("findYourselfModeCircle", 1)
  SetCVar("findYourselfModeOutline", 1)
  SetCVar("occludedSilhouettePlayer", 1)

  SetCVar("autoLootDefault", 1)

  SetCVar("enableMultiActionBars", 15)
  SetCVar("AutoPushSpellToActionBar", 0)
  SetCVar("lockActionBars", 1)
  SetCVar("countdownForCooldowns", 1)

  SetCVar("statusText", 0)
  SetCVar("statusTextDisplay", "NONE")
  SetCVar("showTargetOfTarget", 1)

  SetCVar("cursorSizePreferred", 1)

  SetCVar("chatStyle", "classic")
  SetCVar("whisperMode", "popout_and_inline")
end

Addon.module[name] = {
  order = 5,
  name = name,
  isEnabled = function()
    return true
  end,
  import = function(self)
    Addon.db.global.loaded[name] = name
    self:load()
  end,
  load = function(self)
    Addon.shouldReload = true
    setupCVars()
    Addon:Notice(format("%s setup complete!", name))
  end,
  render = function(self, container)
    local setupButton = AceGUI:Create("Button")
    setupButton:SetText(format("Setup %s", name))
    setupButton:SetCallback("OnClick", function()
      self:import()
    end)
    container:AddChild(setupButton)
  end,
}
