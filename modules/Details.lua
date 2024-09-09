local name = "Details"

Addon.module[name] = {
  order = 100,
  name = name,
  isEnabled = function(self)
    return C_AddOns.GetAddOnEnableState(name, Addon.MyName) == 2
  end,
  import = function(self)
    _detalhes_global["__profiles"]["HitusUI"] = Addon.data[name]
    Addon.db.global.loaded[name] = name
    self:load()
  end,
  load = function(self)
    Addon.shouldReload = true
    Details:ApplyProfile("HitusUI")
    Addon:Notice(format("%s setup complete!", name))
  end,
  render = function(self, container)
    local importButton = AceGUI:Create("Button")
    importButton:SetText(format("Import %s", name))
    importButton:SetCallback("OnClick", function()
      self:import()
    end)
    container:AddChild(importButton)
    if Addon.db.global.loaded[name] then
      local loadButton = AceGUI:Create("Button")
      loadButton:SetText(format("Setup %s", name))
      loadButton:SetCallback("OnClick", function()
        self:load()
      end)
      container:AddChild(loadButton)
    end
  end,
}
