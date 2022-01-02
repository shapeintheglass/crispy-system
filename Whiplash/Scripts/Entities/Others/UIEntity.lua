Script.ReloadScript("scripts/Utils/EntityUtils.lua")
UIEntity = {
  Properties = {
    soclasses_SmartObjectClass = "",
    object_Model = "engine/engineassets/objects/default.cgf"
  },
  Client = {},
  Server = {},
  _Flags = {},
  Editor = {
    Icon = "physicsobject.bmp",
    IconOnTop = 1
  }
}
function UIEntity.OnSpawn(A0_7372)
  A0_7372:SetFromProperties()
end
function UIEntity.OnPreFreeze(A0_7373, A1_7374, A2_7375)
end
function UIEntity.CanShatter(A0_7376)
  local L1_7377
  L1_7377 = false
  return L1_7377
end
function UIEntity.SetFromProperties(A0_7378)
  local L1_7379
  L1_7379 = A0_7378.Properties
  if L1_7379.object_Model == "" then
    return
  end
  A0_7378.freezable = tonumber(L1_7379.bFreezable) ~= 0
end
function UIEntity.IsRigidBody(A0_7380)
  local L1_7381
  L1_7381 = false
  return L1_7381
end
function UIEntity.PhysicalizeThis(A0_7382)
  local L1_7383
end
function UIEntity.OnPropertyChange(A0_7384)
  A0_7384:SetFromProperties()
end
function UIEntity.OnReset(A0_7385)
  local L1_7386
end
function UIEntity.Client.OnPhysicsBreak(A0_7387, A1_7388, A2_7389, A3_7390)
end
function UIEntity.IsUsable(A0_7391, A1_7392)
  local L2_7393
  L2_7393 = 0
  return L2_7393
end
