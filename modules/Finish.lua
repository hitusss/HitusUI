local name = "Finish"

Addon.module[name] = {
  order = 999999999,
  name = name,
  isEnabled = function()
    return true
  end,
  import = function(self) end,
  load = function(self) end,
  render = function(self, container)
    local finishButton = AceGUI:Create("Button")
    finishButton:SetText("Finish setup")
    finishButton:SetCallback("OnClick", function()
      Addon:InstallComplete()
    end)
    container:AddChild(finishButton)
  end,
}
