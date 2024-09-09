local name = "Home"

Addon.module[name] = {
  order = 0,
  name = name,
  isEnabled = function()
    return true
  end,
  import = function(self) end,
  load = function(self) end,
  render = function(self, container)
    local text1 = AceGUI:Create("Label")
    text1:SetFullWidth(true)
    text1:SetJustifyH("CENTER")
    text1:SetFontObject(GameFontNormalLarge)
    text1:SetText("Welcome to " .. Addon.name .. "!")
    container:AddChild(text1)

    local text2 = AceGUI:Create("Label")
    text2:SetFullWidth(true)
    text2:SetJustifyH("CENTER")
    text2:SetFontObject(GameFontNormal)
    text2:SetText("This addon is designed to simplify the process of importing and loading addon profiles.")
    container:AddChild(text2)

    if Addon.db.global.version then
      local loadProfilesButton = AceGUI:Create("Button")
      loadProfilesButton:SetText("Load Profiles")
      loadProfilesButton:SetCallback("OnClick", function()
        Addon:LoadProfiles()
      end)
      container:AddChild(loadProfilesButton)
    end
  end,
}
