local name = "OPie"

--TODO: make impoert working
Addon.module[name] = {
  order = 100,
  name = name,
  isEnabled = function(self)
    return C_AddOns.GetAddOnEnableState(name, Addon.MyName) == 2
  end,
  import = function(self)
    OPie_SavedData = Addon.data[name]
    Addon.db.global.loaded[name] = name
    self:load()
  end,
  load = function(self)
    Addon.shouldReload = true
    Addon:Notice(format("%s setup complete!", name))
  end,
  render = function(self, container)
    local importButton = AceGUI:Create("Button")
    importButton:SetText(format("Import %s", name))
    importButton:SetCallback("OnClick", function()
      self:import()
    end)
    container:AddChild(importButton)
  end,
}
