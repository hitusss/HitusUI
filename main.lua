---@class Module
---@field order number
---@field name string
---@field isEnabled fun(self): boolean
---@field import fun(self)
---@field load fun(self)
---@field render fun(self, container: AceGUIWidget)
---@field button AceGUIWidget | nil

---@class AceAddon
---@field Name string
---@field DbName string
---@field Version string
---@field MyName string
---@field MyRealm string
---@field MyNameRealm string
---@field module {[string]: Module}
---@field data {[string]: any}
---@field tabs string[]
---@field shouldReload boolean
---@field db AceDBObject-3.0

Addon = LibStub("AceAddon-3.0"):NewAddon("HitusUI", "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceComm-3.0")
AceGUI = LibStub("AceGUI-3.0")

Addon.Name = "HitusUI"
Addon.DbName = "HitusUIDB"
Addon.Version = C_AddOns.GetAddOnMetadata(Addon.Name, "Version")

Addon.MyName = UnitName("player")
Addon.MyRealm = GetRealmName()
Addon.MyNameRealm = format("%s - %s", Addon.MyName, Addon.MyRealm)

Addon.module = {}
Addon.data = {}

Addon.tabs = {}

Addon.shouldReload = false

function Addon:OnInitialize()
  self.db = LibStub("AceDB-3.0"):New(self.DbName)

  if self.db.global.version ~= self.Version then
    self.db:ResetDB()
  end

  if not self.db.global.loaded then
    self.db.global.loaded = {}
  end

  for k, v in pairs(self.module) do
    if v:isEnabled() then
      table.insert(self.tabs, k)
    end
  end
  for i = 1, #self.tabs do
    for j = i + 1, #self.tabs do
      if self.module[self.tabs[i]].order >= self.module[self.tabs[j]].order then
        if self.module[self.tabs[i]].order == self.module[self.tabs[j]].order then
          if self.tabs[i] > self.tabs[j] then
            self.tabs[i], self.tabs[j] = self.tabs[j], self.tabs[i]
          end
        else
          self.tabs[i], self.tabs[j] = self.tabs[j], self.tabs[i]
        end
      end
    end
  end
end

function Addon:OnEnable()
  if not self.db.global.version then
    self:OpenGUI()
  end

  if self.db.global.version and not self.db.char.installed then
    StaticPopupDialogs["LoadProfiles"] = {
      text = "Do you want to load HitusUI profiles?",
      button1 = "Yes",
      button2 = "No",
      OnAccept = function()
        self:LoadProfiles()
      end,
      OnCancel = function()
        self.db.char.installed = true
      end,
    }
    StaticPopup_Show("LoadProfiles")
  end
end

Addon:RegisterChatCommand("hitusui", "CommandHandler")
Addon:RegisterChatCommand("hu", "CommandHandler")
function Addon:CommandHandler()
  self:OpenGUI()
end
