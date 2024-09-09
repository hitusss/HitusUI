local name = "WeakAuras"

Addon.module[name] = {
  order = 400,
  name = name,
  isEnabled = function(self)
    return C_AddOns.GetAddOnEnableState(name, Addon.MyName) == 2
  end,
  import = function(self) end,
  load = function(self) end,
  render = function(self, container)
    local importButton = AceGUI:Create("Button")
    importButton:SetText(format("Import %s", name))
    importButton:SetCallback("OnClick", function()
      for k, v in pairs(Addon.data[name].displays) do
        WeakAurasSaved.displays[k] = v
      end
      Addon.shouldReload = true
      Addon:Notice(format("%s setup complete!", name))
    end)
    container:AddChild(importButton)

    local clenupButton = AceGUI:Create("Button")
    clenupButton:SetText(format("Clenup %s", name))
    clenupButton:SetCallback("OnClick", function()
      Addon:Warning("Are you sure you want to clenup your WA?", function()
        WeakAurasSaved.displays = {}
        Addon.shouldReload = true
        Addon:Notice(format("%s clenup complete!", name))
      end)
    end)
    container:AddChild(clenupButton)
  end,
}
