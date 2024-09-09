---@param container AceGUIWidget
---@param tabName string
function SelectTab(container, tabName)
  container:ReleaseChildren()
  local currentButton

  for idx, name in pairs(Addon.tabs) do
    if name == tabName then
      Addon.module[name].button:SetDisabled(true)
      currentButton = idx
    else
      Addon.module[name].button:SetDisabled(false)
    end
  end

  local heading = AceGUI:Create("Heading")
  heading:SetText(tabName)
  heading:SetPoint("TOPLEFT", container.frame, "TOPLEFT", 8, 0)
  heading:SetPoint("TOPRIGHT", container.frame, "TOPRIGHT", -8, 0)
  container:AddChild(heading)

  local content = AceGUI:Create("SimpleGroup")
  content:SetPoint("TOPLEFT", container.frame, "TOPLEFT", 16, -32)
  content:SetPoint("BOTTOMRIGHT", container.frame, "BOTTOMRIGHT", -16, 64)
  container:AddChild(content)

  Addon.module[tabName]:render(content)

  local navigation = AceGUI:Create("SimpleGroup")
  navigation:PauseLayout()
  navigation:SetHeight(48)
  navigation:SetPoint("BOTTOMLEFT", container.frame, "BOTTOMLEFT", 8, 0)
  navigation:SetPoint("BOTTOMRIGHT", container.frame, "BOTTOMRIGHT", -8, 0)
  container:AddChild(navigation)

  local previous = AceGUI:Create("Button")
  previous:SetText("Previous")
  previous:SetWidth(192)
  previous:SetDisabled(currentButton == 1)
  previous:SetCallback("OnClick", function()
    SelectTab(container, Addon.tabs[currentButton - 1])
  end)
  navigation:AddChild(previous)
  previous:ClearAllPoints()
  previous:SetPoint("LEFT", navigation.frame, "LEFT", 0, 0)

  local next = AceGUI:Create("Button")
  next:SetText("Next")
  next:SetWidth(192)
  next:SetDisabled(currentButton == #Addon.tabs)
  next:SetCallback("OnClick", function()
    SelectTab(container, Addon.tabs[currentButton + 1])
  end)
  navigation:AddChild(next)
  next:ClearAllPoints()
  next:SetPoint("RIGHT", navigation.frame, "RIGHT", 0, 0)
end

function Addon:OpenGUI()
  local frame = AceGUI:Create("Frame")
  frame:SetLayout("Fill")
  frame:SetTitle(Addon.Name)
  frame:SetStatusText(format("%s v%s", Addon.Name, Addon.Version))
  frame:SetCallback("OnClose", function(widget)
    if Addon.shouldReload then
      Addon:InstallComplete()
    else
      AceGUI:Release(widget)
    end
  end)

  local wrapper = AceGUI:Create("SimpleGroup")
  wrapper:PauseLayout()
  frame:AddChild(wrapper)

  local navigation = AceGUI:Create("ScrollFrame")
  navigation:SetLayout("List")
  navigation:SetPoint("TOPLEFT", wrapper.frame, "TOPLEFT", wrapper.frame:GetWidth() * 0.75, 0)
  navigation:SetPoint("BOTTOMRIGHT", wrapper.frame, "BOTTOMRIGHT", 0, 0)
  wrapper:AddChild(navigation)

  local main = AceGUI:Create("SimpleGroup")
  main:PauseLayout()
  main:SetPoint("TOPLEFT", wrapper.frame, "TOPLEFT", 0, 0)
  main:SetPoint("BOTTOMRIGHT", wrapper.frame, "BOTTOMRIGHT", -wrapper.frame:GetWidth() * 0.20, 0)
  wrapper:AddChild(main)

  local main = AceGUI:Create("SimpleGroup")
  main:PauseLayout()
  main:SetPoint("TOPLEFT", wrapper.frame, "TOPLEFT", 0, 0)
  main:SetPoint("BOTTOMRIGHT", wrapper.frame, "BOTTOMRIGHT", -wrapper.frame:GetWidth() * 0.28, 0)
  wrapper:AddChild(main)

  for _, tabName in ipairs(Addon.tabs) do
    local button = AceGUI:Create("Button")
    button:SetText(tabName)
    button:SetFullWidth(true)
    button:SetCallback("OnClick", function()
      SelectTab(main, tabName)
    end)
    navigation:AddChild(button)
    Addon.module[tabName].button = button
  end

  SelectTab(main, Addon.tabs[1])
end
