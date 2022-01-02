Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkGunSafe = {
  Properties = {
    object_Model = "",
    nSpawnCountMin = 0,
    nSpawnCountMax = 0,
    loottables_ExtraPickup = "",
    sExtraPickupHelper = "",
    PickupSpawnerInfo = {
      HelperGroup_1 = {
        archetype_PickupToSpawn = "",
        nNumberOfHelpers = 1,
        sHelperNamePrefix = ""
      },
      HelperGroup_2 = {
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
  }
}
ArkGunSafeInstanceVars = {
  m_bInit = false,
  m_referenceTable = false,
  m_bVerbose = false
}
GetArkEntityUtils(ArkGunSafe)
ArkMakeSaveable(ArkGunSafe)
SetupCollisionFiltering(ArkGunSafe)
function CreateGunSafe(A0_3966)
  mergef(A0_3966, ArkGunSafeInstanceVars, 1)
  A0_3966.m_referenceTable = ArkGunSafeInstanceVars
end
function ArkGunSafe.SetFromProperties(A0_3967)
  A0_3967:Log("SetFromProperties")
  A0_3967:SetupModelAndPhysics()
end
function ArkGunSafe.Init(A0_3968, A1_3969)
  A0_3968:Log("Init")
  if not A0_3968.m_bInit then
    A0_3968.m_bInit = true
    A0_3968:SetFromProperties()
    if A1_3969 then
      A0_3968:ValidateSpawnCountRange()
      A0_3968:SpawnPickups()
    end
  end
end
function ArkGunSafe.ValidateSpawnCountRange(A0_3970)
  local L1_3971, L2_3972, L3_3973
  L1_3971 = A0_3970.Properties
  L1_3971 = L1_3971.nSpawnCountMin
  L2_3972 = A0_3970.Properties
  L2_3972 = L2_3972.nSpawnCountMax
  L3_3973 = A0_3970.Properties
  L3_3973 = L3_3973.PickupSpawnerInfo
  L3_3973 = L3_3973.HelperGroup_1
  L3_3973 = L3_3973.nNumberOfHelpers
  L3_3973 = L3_3973 + A0_3970.Properties.PickupSpawnerInfo.HelperGroup_2.nNumberOfHelpers
  L1_3971 = math.min(L1_3971, L3_3973)
  L2_3972 = math.min(L2_3972, L3_3973)
  if L1_3971 > L2_3972 then
    LogError(A0_3970:GetName() .. ": minimum spawn count is set to greater than maximum spawn count. Setting max = min.")
    L2_3972 = L1_3971
  end
  A0_3970.Properties.nSpawnCountMin, A0_3970.Properties.nSpawnCountMax = L1_3971, L2_3972
end
function ArkGunSafe.SpawnPickups(A0_3974)
  local L1_3975
  L1_3975 = A0_3974.GetAllHelpersNames
  L1_3975 = L1_3975(A0_3974)
  A0_3974:SpawnItemsAtRandomHelpers(L1_3975)
  if A0_3974.Properties.loottables_ExtraPickup ~= "" then
    Ark.SpawnRandomItem(A0_3974.Properties.loottables_ExtraPickup, A0_3974:GetBonePos(A0_3974.Properties.sExtraPickupHelper), A0_3974.id)
  end
end
function ArkGunSafe.GetAllHelpersNames(A0_3976)
  local L1_3977, L2_3978, L3_3979, L4_3980, L5_3981, L6_3982, L7_3983, L8_3984, L9_3985, L10_3986, L11_3987
  L1_3977 = {}
  for L5_3981, L6_3982 in L2_3978(L3_3979) do
    L7_3983 = L6_3982.nNumberOfHelpers
    if L8_3984 ~= "" and L7_3983 ~= 0 then
      for L11_3987 = 1, L7_3983 do
        table.insert(L1_3977, {
          helperName = L6_3982.sHelperNamePrefix .. tostring(L11_3987),
          archetype = L6_3982.archetype_PickupToSpawn
        })
      end
    end
  end
  return L1_3977
end
function ArkGunSafe.SpawnItemsAtRandomHelpers(A0_3988, A1_3989)
  local L2_3990, L3_3991, L4_3992, L5_3993, L6_3994, L7_3995, L8_3996, L9_3997
  L2_3990 = {}
  L3_3991 = {}
  L4_3992 = {}
  L6_3994 = A0_3988
  L5_3993 = A0_3988.GetRawId
  L5_3993 = L5_3993(L6_3994)
  L6_3994 = Ark
  L6_3994 = L6_3994.GenerateRandomValueInRange
  L7_3995 = L5_3993
  L8_3996 = A0_3988.Properties
  L8_3996 = L8_3996.nSpawnCountMin
  L9_3997 = A0_3988.Properties
  L9_3997 = L9_3997.nSpawnCountMax
  L6_3994 = L6_3994(L7_3995, L8_3996, L9_3997)
  while L6_3994 > 0 do
    L7_3995 = Ark
    L7_3995 = L7_3995.GenerateRandomValueInRange
    L8_3996 = L5_3993
    L9_3997 = 1
    L7_3995 = L7_3995(L8_3996, L9_3997, #A1_3989)
    if L7_3995 ~= nil and L7_3995 > 0 then
      L8_3996 = A1_3989[L7_3995]
      L9_3997 = L8_3996.helperName
      L2_3990 = A0_3988:GetBonePos(L9_3997)
      L3_3991 = A0_3988:GetBoneDir(L9_3997)
      L4_3992 = A0_3988:GetBoneUp(L9_3997)
      if L2_3990 ~= nil and L3_3991 ~= nil and L4_3992 ~= nil then
        A0_3988:SpawnPickupAtHelper(L8_3996.archetype, L2_3990, L3_3991, L4_3992, L5_3993)
      end
      table.remove(A1_3989, L7_3995)
      L5_3993 = L5_3993 + 1
    else
      L8_3996 = LogError
      L9_3997 = "failed to select a helper from the list because helper table was empty or nil."
      L8_3996(L9_3997)
    end
    L6_3994 = L6_3994 - 1
  end
end
function ArkGunSafe.SpawnPickupAtHelper(A0_3998, A1_3999, A2_4000, A3_4001, A4_4002, A5_4003)
  local L6_4004
  L6_4004 = {}
  L6_4004.archetype = A1_3999
  L6_4004.name = A0_3998:GetName()
  System.SpawnEntity(L6_4004):SetWorldPos(A2_4000)
  System.SpawnEntity(L6_4004):SetDirectionVector(A3_4001, A4_4002)
  if System.SpawnEntity(L6_4004).arkitem then
    System.SpawnEntity(L6_4004).arkitem:SetPhysicalizeAsStatic(true, true)
    System.SpawnEntity(L6_4004).arkitem:RandomizeQualityTier(A5_4003)
  end
end
function ArkGunSafe.OnSpawn(A0_4005)
  CreateGunSafe(A0_4005)
end
function ArkGunSafe.OnReset(A0_4006)
  A0_4006.m_bInit = false
  A0_4006:SetFromProperties()
end
function ArkGunSafe.OnPostLoad(A0_4007)
  A0_4007:SetFromProperties()
end
