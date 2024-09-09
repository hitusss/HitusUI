local name = "Misc"

local function ClenupBars()
  for i = 1, 120 do
    PickupAction(i)
    ClearCursor()
  end
  Addon:Notice("Bars cleanup complete!")
end

local function ResetCVars()
  --TODO: implement reset CVars
  -- /console cvar_default
  Addon:Notice("CVar reset complete!")
end

Addon.module[name] = {
  order = 1,
  name = name,
  isEnabled = function()
    return true
  end,
  import = function(self) end,
  load = function(self) end,
  render = function(self, container)
    local cleanupBarsButton = AceGUI:Create("Button")
    cleanupBarsButton:SetText("Cleuup Bars")
    cleanupBarsButton:SetCallback("OnClick", function()
      Addon:Warning("Are you sure you want to clenup your all action bars? This step is irreversible.", ClenupBars)
    end)
    container:AddChild(cleanupBarsButton)

    local resetCVarsButton = AceGUI:Create("Button")
    resetCVarsButton:SetText("Reset CVars")
    resetCVarsButton:SetCallback("OnClick", function()
      Addon:Warning("Are you sure you want to reset your all CVars? This step is irreversible.", ResetCVars)
    end)
    container:AddChild(resetCVarsButton)
  end,
}
