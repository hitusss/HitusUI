---@class AceAddon
---@field Notice fun(self, string: string)
---@field Warning fun(self, string: string, function: function)
---@field SetProfileKeys fun(self, db: any, profile: string)
---@field InstallComplete fun(self)
---@field LoadProfiles fun(self)

local function DoubleConfirmation(ImportFunction)
  StaticPopupDialogs["DoubleConfirmation"] = {
    text = "Are you sure? This step is irreversible.",
    button1 = "Yes",
    button2 = "No",
    OnAccept = function()
      ImportFunction()
    end,
    StartDelay = function()
      return 2
    end,
  }
  StaticPopup_Show("DoubleConfirmation")
end

function Addon:Notice(string)
  StaticPopupDialogs["Notice"] = {
    text = string,
    button1 = "Confirm",
    OnAccept = function() end,
  }
  StaticPopup_Show("Notice")
end

function Addon:Warning(string, PassedFunction)
  StaticPopupDialogs["Warning"] = {
    text = string,
    button1 = "Yes",
    button2 = "No",
    OnAccept = function()
      DoubleConfirmation(PassedFunction)
    end,
  }
  StaticPopup_Show("Warning")
end

function Addon:SetProfileKeys(db, profile)
  db.profileKeys = db.profileKeys or {}
  db.profileKeys[Addon.MyNameRealm] = profile
end

function Addon:InstallComplete()
  Addon.db.char.installed = true
  Addon.db.global.version = Addon.Version

  ReloadUI()
end

function Addon:LoadProfiles()
  for k in pairs(Addon.db.global.loaded) do
    Addon.module[k]:load()
  end
  Addon:InstallComplete()
end
