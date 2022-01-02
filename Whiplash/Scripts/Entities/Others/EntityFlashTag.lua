Script.ReloadScript("scripts/Utils/EntityUtils.lua")
EntityFlashTag = {
  Properties = {
    soclasses_SmartObjectClass = "",
    bAutoGenAIHidePts = 0,
    object_Model = "engine/engineassets/objects/default.cgf",
    fScale = 2
  },
  Client = {},
  Server = {},
  _Flags = {},
  Editor = {
    Icon = "physicsobject.bmp",
    IconOnTop = 1
  }
}
function EntityFlashTag.OnSpawn(A0_6748)
  A0_6748:SetFromProperties()
end
function EntityFlashTag.SetFromProperties(A0_6749)
  local L1_6750
  L1_6750 = A0_6749.Properties
  if L1_6750.object_Model == "" then
    return
  end
  A0_6749:LoadObject(0, L1_6750.object_Model)
  A0_6749:SetScale(L1_6750.fScale)
end
function EntityFlashTag.OnPropertyChange(A0_6751)
  A0_6751:SetFromProperties()
end
