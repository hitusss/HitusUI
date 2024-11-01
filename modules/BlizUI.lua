local name = "BlizUI"

-- stylua: ignore
local profileString = "1 39 0 0 0 3 3 UIParent 788.7 -577.5 -1 ##$$%/&('%)$+#,$ 0 1 0 0 0 UIParent 788.7 -1106.0 -1 ##$$%/&('%(#,$ 0 2 0 0 0 UIParent 788.7 -1059.0 -1 ##$$%/&('%(#,$ 0 3 0 0 0 UIParent 582.7 -1059.0 -1 ##$&%/&('%(#,$ 0 4 0 0 0 UIParent 1370.7 -1059.0 -1 ##$&%/&('%(#,$ 0 5 1 1 4 UIParent 0.0 0.0 -1 ##$$%/&('%(#,$ 0 6 1 1 4 UIParent 0.0 -50.0 -1 ##$$%/&('%(#,$ 0 7 1 1 4 UIParent 0.0 -100.0 -1 ##$$%/&('%(#,$ 0 10 0 0 0 UIParent 788.7 -1025.0 -1 ##$$&('% 0 11 0 0 0 UIParent 788.7 -1025.0 -1 ##$$&('%,# 0 12 0 8 6 MainMenuBarVehicleLeaveButton -4.0 0.0 -1 ##$$&('% 1 -1 0 2 8 PlayerFrame -24.0 -66.0 -1 ##$$%# 2 -1 1 2 2 UIParent 0.0 0.0 -1 ##$#%* 3 0 0 0 0 UIParent 609.1 -736.9 -1 $$3% 3 1 0 1 1 UIParent 327.8 -742.4 -1 %#3% 3 2 0 0 0 UIParent 366.1 -733.1 -1 %#&$3' 3 3 1 0 2 CompactRaidFrameManager 0.0 -7.0 -1 '#(#)#-#.#/#1$3# 3 4 1 0 2 CompactRaidFrameManager 0.0 -5.0 -1 ,#-#.#/#0#1#2( 3 5 0 2 2 UIParent -349.6 -402.9 -1 &$*#3, 3 6 1 5 5 UIParent 0.0 0.0 -1 -#.#/#4$ 3 7 1 4 4 UIParent 0.0 0.0 -1 3# 4 -1 0 4 4 UIParent 0.0 436.7 -1 # 5 -1 0 3 3 UIParent 1288.7 -338.0 -1 # 6 0 1 2 2 UIParent -255.0 -10.0 -1 ##$#%#&.(()( 6 1 1 2 2 UIParent -270.0 -155.0 -1 ##$#%#'+(()( 7 -1 0 4 4 UIParent 0.0 458.7 -1 # 8 -1 0 6 6 UIParent 35.0 50.0 -1 #'$A%$&7 9 -1 0 0 0 UIParent 1318.7 -1023.0 -1 # 10 -1 1 0 0 UIParent 16.0 -116.0 -1 # 11 -1 0 8 6 MicroMenuContainer -4.0 0.0 -1 # 12 -1 1 2 2 UIParent -110.0 -275.0 -1 #K$#%# 13 -1 1 8 8 MicroButtonAndBagsBar 0.0 0.0 -1 ##$#%%&) 14 -1 0 8 2 MicroMenuContainer 0.4 3.6 -1 ##$#%$ 15 0 1 7 7 StatusTrackingBarManager 0.0 0.0 -1 # 15 1 1 7 7 StatusTrackingBarManager 0.0 17.0 -1 # 16 -1 1 5 5 UIParent 0.0 0.0 -1 #( 17 -1 0 4 4 UIParent 0.0 508.7 -1 ## 18 -1 1 5 5 UIParent 0.0 0.0 -1 #- 19 -1 0 4 4 UIParent 0.0 400.0 -1 ##"

local function getLayoutCount()
  local layoutCount = 0
  local layouts = EditModeManagerFrame:GetLayouts()
  for _, layout in pairs(layouts) do
    if layout.layoutType == 1 then
      layoutCount = layoutCount + 1
    end
  end
  return layoutCount
end

local function getLayoutIndex()
  local layoutIndex = 0
  local layouts = EditModeManagerFrame:GetLayouts()
  for i, layout in pairs(layouts) do
    if layout.layoutName == "HitusUI" then
      layoutIndex = i
      break
    end
  end
  return layoutIndex
end

Addon.module[name] = {
  order = 5,
  name = name,
  isEnabled = function()
    return true
  end,
  import = function(self)
    local layoutIndex = getLayoutIndex()
    if layoutIndex > 0 then
      EditModeManagerFrame:DeleteLayout(layoutIndex)
    end
    local layoutCount = getLayoutCount()
    if layoutCount >= 5 then
      return Addon:Notice("You already have 5 layouts. You need to delete some.")
    end

    EditModeManagerFrame:Show()
    local newLayoutInfo = C_EditMode.ConvertStringToLayoutInfo(profileString)
    EditModeManagerFrame:ImportLayout(newLayoutInfo, 1, "HitusUI")

    EditModeManagerFrame.CloseButton:Click()
    if StaticPopup1Button2Text:GetText() == "Ignore" then
      StaticPopup1Button2:Click()
    end

    Addon.db.global.loaded[name] = name
    self:load()
  end,
  load = function(self)
    Addon.shouldReload = true
    local layoutIndex = getLayoutIndex()
    if layoutIndex > 0 then
      EditModeManagerFrame:SelectLayout(layoutIndex)
    else
      self:import()
    end
    Addon:Notice(format("%s setup complete!", name))
  end,
  render = function(self, container)
    local importButton = AceGUI:Create("Button")
    importButton:SetText(format("Import %s", name))
    importButton:SetCallback("OnClick", function()
      self:import()
    end)
    container:AddChild(importButton)
    if getLayoutIndex() > 0 then
      local loadButton = AceGUI:Create("Button")
      loadButton:SetText(format("Setup %s", name))
      loadButton:SetCallback("OnClick", function()
        self:load()
      end)
      container:AddChild(loadButton)
    end
  end,
}
