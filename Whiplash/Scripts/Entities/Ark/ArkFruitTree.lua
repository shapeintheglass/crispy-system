Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkFruitTree = {
  Properties = {
    object_Model = "",
    Spawns = {
      SpawnOption_1 = {
        archetype_PickupToSpawn = "",
        nNumberOfHelpers = 1,
        sHelperNamePrefix = ""
      },
      SpawnOption_2 = {
        archetype_PickupToSpawn = "",
        nNumberOfHelpers = 1,
        sHelperNamePrefix = ""
      }
    },
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
    }
  },
  Editor = {
    Icon = "prefab.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {
    bVerbose = 0,
    bSpawnItemsOnGameStart = 1,
    SpawnCountOverrides = {SpawnOption_1 = -1, SpawnOption_2 = -1}
  }
}
ArkFruitTreeInstanceVars = {
  m_bInit = false,
  m_referenceTable = false,
  m_bVerbose = false
}
GetArkEntityUtils(ArkFruitTree)
ArkMakeSaveable(ArkFruitTree)
SetupCollisionFiltering(ArkFruitTree)
function CreateFruitTree(A0_3857)
  mergef(A0_3857, ArkFruitTreeInstanceVars, 1)
  A0_3857.m_referenceTable = ArkFruitTreeInstanceVars
end
function ArkFruitTree.SetFromProperties(A0_3858)
  A0_3858:Log("SetFromProperties")
  A0_3858.m_bVerbose = A0_3858.PropertiesInstance.bVerbose == 1
  A0_3858:SetupModelAndPhysics()
end
function ArkFruitTree.Init(A0_3859, A1_3860)
  A0_3859:Log("Init")
  if not A0_3859.m_bInit then
    A0_3859.m_bInit = true
    A0_3859:SetFromProperties()
    if A1_3860 and A0_3859.PropertiesInstance.bSpawnItemsOnGameStart == 1 then
      A0_3859:SpawnPickups()
    end
  end
end
function ArkFruitTree.SpawnPickups(A0_3861)
  local L1_3862, L2_3863, L3_3864, L4_3865, L5_3866, L6_3867, L7_3868, L8_3869, L9_3870, L10_3871, L11_3872, L12_3873, L13_3874, L14_3875
  for L4_3865, L5_3866 in L1_3862(L2_3863) do
    L6_3867 = {}
    L7_3868 = {}
    L8_3869 = {}
    L9_3870 = ""
    L10_3871 = L5_3866.nNumberOfHelpers
    if L11_3872 ~= -1 then
      L10_3871 = L11_3872[L4_3865]
    end
    if L11_3872 ~= "" and L10_3871 ~= 0 then
      for L14_3875 = 1, L10_3871 do
        L9_3870 = L5_3866.sHelperNamePrefix .. tostring(L14_3875)
        L6_3867 = A0_3861:GetBonePos(L9_3870)
        L7_3868 = A0_3861:GetBoneDir(L9_3870)
        L8_3869 = A0_3861:GetBoneUp(L9_3870)
        if L6_3867 ~= nil and L7_3868 ~= nil then
          A0_3861:SpawnPickupAtHelper(L5_3866.archetype_PickupToSpawn, L6_3867, L7_3868, L8_3869)
        end
      end
    end
  end
end
function ArkFruitTree.SpawnPickupAtHelper(A0_3876, A1_3877, A2_3878, A3_3879, A4_3880)
  local L5_3881
  L5_3881 = A0_3876.Log
  L5_3881(A0_3876, "ArkFruitTree:SpawnPickupAtHelper()")
  L5_3881 = {}
  L5_3881.archetype = A1_3877
  L5_3881.name = A0_3876:GetName()
  System.SpawnEntity(L5_3881):SetWorldPos(A2_3878)
  System.SpawnEntity(L5_3881):SetDirectionVector(A3_3879, A4_3880)
  if System.SpawnEntity(L5_3881).arkitem then
    System.SpawnEntity(L5_3881).arkitem:SetPhysicalizeAsStatic(true, true)
  end
  A0_3876:ActivateOutput("SpawnedEntityId", System.SpawnEntity(L5_3881):GetRawId())
end
function ArkFruitTree.OnSpawn(A0_3882)
  CreateFruitTree(A0_3882)
end
function ArkFruitTree.OnReset(A0_3883)
  A0_3883.m_bInit = false
  A0_3883:SetFromProperties()
end
function ArkFruitTree.OnPostLoad(A0_3884)
  A0_3884:SetFromProperties()
end
function ArkFruitTree.Event_Spawn(A0_3885)
  A0_3885:SpawnPickups()
end
ArkFruitTree.FlowEvents = {
  Inputs = {
    Spawn = {
      ArkFruitTree.Event_Spawn,
      "void"
    }
  },
  Outputs = {SpawnedEntityId = "int"}
}
