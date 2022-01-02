Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkGrower = {
  Properties = {
    object_Model = "objects/environment/props/gameplay/food/jamontomato_a/jamontomato_a_super.cgf",
    archetype_PickupToSpawn = "ArkPickups.MissionItems.MM_Superfruit",
    fMinScale = 0.05,
    fMaxScale = 1,
    fScaleTime = 5,
    Physics = {
      bPhysicalize = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
    }
  },
  Editor = {
    IconOnTop = true,
    Icon = "GravitySphere.bmp",
    ShowBounds = 0,
    IsScalable = false
  }
}
GetArkEntityUtils(ArkGrower)
ArkMakeSaveable(ArkGrower)
ArkGrowerInstanceVars = {
  m_bInit = false,
  m_bVerbose = false,
  m_currentTime = 0,
  m_endTime = 0,
  m_bIsStillGrowing = true,
  m_referenceTable = false
}
function CreateArkGrower(A0_3944)
  mergef(A0_3944, ArkGrowerInstanceVars, 1)
  A0_3944.m_referenceTable = ArkGrowerInstanceVars
end
function ArkGrower.Init(A0_3945)
  if not A0_3945.m_bInit and not System.IsEditing() then
    A0_3945.m_bInit = true
    A0_3945:SetScale(A0_3945.Properties.fMinScale)
    A0_3945.m_bIsStillGrowing = true
    A0_3945:Activate(1)
    A0_3945.m_currentTime = System.GetCurrTime()
    A0_3945.m_endTime = A0_3945.m_currentTime + A0_3945.Properties.fScaleTime
  end
end
function ArkGrower.OnSpawn(A0_3946)
  CreateArkGrower(A0_3946)
  A0_3946:SetFromProperties()
  if not System.IsEditor() then
    A0_3946:Init(true)
  end
end
function ArkGrower.OnReset(A0_3947)
  A0_3947:SetFromProperties()
  A0_3947.m_bInit = false
  A0_3947.m_bIsStillGrowing = false
  A0_3947:Activate(0)
end
function ArkGrower.OnUpdate(A0_3948, A1_3949)
  local L2_3950, L3_3951, L4_3952, L5_3953
  L2_3950 = A0_3948.Properties
  L3_3951 = L2_3950.fScaleTime
  L4_3952 = A0_3948.m_endTime
  L5_3953 = A0_3948.m_currentTime
  L4_3952 = L4_3952 - L5_3953
  L3_3951 = L3_3951 - L4_3952
  L4_3952 = L2_3950.fScaleTime
  L4_3952 = L3_3951 / L4_3952
  L5_3953 = Lerp
  L5_3953 = L5_3953(L2_3950.fMinScale, L2_3950.fMaxScale, L4_3952)
  A0_3948:SetScale(L5_3953)
  if L5_3953 >= L2_3950.fMaxScale then
    A0_3948:CompleteGrowth()
  else
    A0_3948.m_currentTime = A0_3948.m_currentTime + A1_3949
  end
end
function ArkGrower.OnPostLoad(A0_3954)
  local L1_3955
  L1_3955 = A0_3954.m_bIsStillGrowing
  if L1_3955 then
    L1_3955 = A0_3954.m_endTime
    L1_3955 = L1_3955 - A0_3954.m_currentTime
    A0_3954.m_currentTime = System.GetCurrTime()
    A0_3954.m_endTime = A0_3954.m_currentTime + L1_3955
    A0_3954:Activate(1)
  end
end
function ArkGrower.CompleteGrowth(A0_3956)
  A0_3956:Activate(0)
  A0_3956.m_bIsStillGrowing = false
  BroadcastEvent(A0_3956, "GrowthComplete")
end
function ArkGrower.SpawnPickupAtHelper(A0_3957, A1_3958, A2_3959, A3_3960)
  local L4_3961
  L4_3961 = A0_3957.Log
  L4_3961(A0_3957, "ArkFruitTree:SpawnPickupAtHelper()")
  L4_3961 = {}
  L4_3961.archetype = A1_3958
  L4_3961.name = A0_3957:GetName()
  System.SpawnEntity(L4_3961):SetWorldPos(A2_3959)
  System.SpawnEntity(L4_3961):SetDirectionVector(A3_3960)
  if System.SpawnEntity(L4_3961).arkitem then
    System.SpawnEntity(L4_3961).arkitem:SetPhysicalizeAsStatic(true, true)
  end
  A0_3957:ActivateOutput("SpawnedEntityId", System.SpawnEntity(L4_3961):GetRawId())
end
function ArkGrower.Event_MakePickable(A0_3962)
  A0_3962:SetScale(A0_3962.Properties.fMaxScale)
  A0_3962:Activate(0)
  A0_3962.m_bIsStillGrowing = false
  A0_3962:SpawnPickupAtHelper(A0_3962.Properties.archetype_PickupToSpawn, A0_3962:GetWorldPos(), A0_3962:GetDirectionVector())
  A0_3962:DeleteThis()
end
function ArkGrower.Event_SetSecondsRemaining(A0_3963, A1_3964, A2_3965)
  if A0_3963.m_bIsStillGrowing then
    if A2_3965 > 0 then
      A0_3963.m_currentTime = System.GetCurrTime()
      A0_3963.m_endTime = A0_3963.m_currentTime + A2_3965
      A0_3963:Activate(1)
    else
      A0_3963:CompleteGrowth()
    end
  end
end
ArkGrower.FlowEvents = {
  Inputs = {
    MakePickable = {
      ArkGrower.Event_MakePickable,
      "bool"
    },
    SetSecondsRemaining = {
      ArkGrower.Event_SetSecondsRemaining,
      "float"
    }
  },
  Outputs = {SpawnedEntityId = "int", GrowthComplete = "bool"}
}
