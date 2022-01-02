Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkAnimSlave = {
  Properties = {
    object_Model = "",
    bDisallowGrenades = true,
    Animation = {anim_SlaveAnim = ""},
    Physics = {
      bPhysicalize = 1,
      bPushableByPlayers = 1,
      bPushableByAI = 1,
      Density = -1,
      Mass = -1
    }
  },
  Editor = {
    IconOnTop = true,
    Icon = "switch.bmp",
    ShowBounds = 0,
    IsScalable = false
  }
}
GetArkEntityUtils(ArkAnimSlave)
ArkMakeSaveable(ArkAnimSlave)
SetupCollisionFiltering(ArkAnimSlave)
ArkAnimSlaveInstanceVars = {
  m_bInit = false,
  m_bVerbose = false,
  m_lastUpdatedTime = 0,
  m_referenceTable = false
}
function CreateArkAnimSlave(A0_3330)
  mergef(A0_3330, ArkAnimSlaveInstanceVars, 1)
  A0_3330.m_referenceTable = ArkAnimSlaveInstanceVars
end
function ArkAnimSlave.Init(A0_3331)
  if not A0_3331.m_bInit then
    A0_3331.m_bInit = true
    A0_3331:StartAnimation(0, A0_3331.Properties.Animation.anim_SlaveAnim, 0, 0, 0)
  end
end
function ArkAnimSlave.SetFromProperties(A0_3332)
  A0_3332:SetupModelAndPhysics()
end
function ArkAnimSlave.OnPostLoad(A0_3333)
  A0_3333:SetAnimationTime(0, 0, A0_3333.m_lastUpdatedTime)
end
function ArkAnimSlave.OnPropertyChange(A0_3334)
  A0_3334:Log("OnPropertyChange")
  A0_3334:SetFromProperties()
  A0_3334:Init()
end
function ArkAnimSlave.OnReset(A0_3335)
  A0_3335.m_bInit = false
  A0_3335:SetFromProperties()
  A0_3335:Init()
  A0_3335:Log("OnReset")
end
function ArkAnimSlave.OnSpawn(A0_3336)
  CreateArkAnimSlave(A0_3336)
  A0_3336:SetFromProperties()
  A0_3336:Init()
  A0_3336:Log("OnSpawn")
end
function ArkAnimSlave.Event_SetAnimationTime(A0_3337, A1_3338, A2_3339)
  Ark.HandleGooOverlappingEntity(A0_3337.id, true)
  A0_3337:SetAnimationTime(0, 0, A2_3339)
  A0_3337.m_lastUpdatedTime = A2_3339
end
ArkAnimSlave.FlowEvents = {
  Inputs = {
    SetAnimationTime = {
      ArkAnimSlave.Event_SetAnimationTime,
      "float"
    }
  },
  Outputs = {}
}
