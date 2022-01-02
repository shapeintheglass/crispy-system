HealthPack = {
  Properties = {
    soclasses_SmartObjectClass = "HealthPack",
    fileModel = "Objects/Weapons/equipment/medical_Kit/medical_kit_bag_tp.cgf",
    fUseDistance = 2.5,
    fRespawnTime = 5,
    fHealth = 20
  },
  PhysParams = {mass = 0, density = 0},
  Server = {},
  Client = {},
  Editor = {Icon = "Item.bmp", IconOnTop = 1}
}
Net.Expose({
  Class = HealthPack,
  ClientMethods = {
    ClHide = {
      RELIABLE_UNORDERED,
      POST_ATTACH,
      INT8
    }
  },
  ServerMethods = {
    SvRequestHidePack = {
      RELIABLE_UNORDERED,
      POST_ATTACH,
      INT8
    },
    SvRequestHeal = {
      RELIABLE_UNORDERED,
      POST_ATTACH,
      ENTITYID,
      FLOAT
    }
  },
  ServerProperties = {}
})
function HealthPack.Client.ClHide(A0_5583, A1_5584)
  A0_5583:Hide(A1_5584)
end
function HealthPack.Server.SvRequestHidePack(A0_5585, A1_5586)
  A0_5585:Hide(A1_5586)
  A0_5585.allClients:ClHide(A1_5586)
end
function HealthPack.Server.SvRequestHeal(A0_5587, A1_5588, A2_5589)
  System.GetEntity(A1_5588).actor:SetHealth(System.GetEntity(A1_5588).actor:GetHealth() + A0_5587.Properties.fHealth)
end
function HealthPack.OnReset(A0_5590)
  A0_5590:Reset()
end
function HealthPack.OnSpawn(A0_5591)
  CryAction.CreateGameObjectForEntity(A0_5591.id)
  CryAction.BindGameObjectToNetwork(A0_5591.id)
  CryAction.ForceGameObjectUpdate(A0_5591.id, true)
  A0_5591.isServer = CryAction.IsServer()
  A0_5591.isClient = CryAction.IsClient()
  A0_5591:Reset(1)
end
function HealthPack.OnDestroy(A0_5592)
  local L1_5593
end
function HealthPack.DoPhysicalize(A0_5594)
  if A0_5594.currModel ~= A0_5594.Properties.fileModel then
    CryAction.ActivateExtensionForGameObject(A0_5594.id, "ScriptControlledPhysics", false)
    A0_5594:LoadObject(0, A0_5594.Properties.fileModel)
    A0_5594:Physicalize(0, PE_RIGID, A0_5594.PhysParams)
    CryAction.ActivateExtensionForGameObject(A0_5594.id, "ScriptControlledPhysics", true)
  end
  A0_5594:SetPhysicParams(PHYSICPARAM_FLAGS, {flags_mask = pef_cannot_squash_players, flags = pef_cannot_squash_players})
  A0_5594.currModel = A0_5594.Properties.fileModel
end
function HealthPack.Reset(A0_5595, A1_5596)
  A0_5595:DoPhysicalize()
end
function HealthPack.UnHide(A0_5597)
  A0_5597.server:SvRequestHidePack(0)
end
function HealthPack.IsUsable(A0_5598, A1_5599)
  local L2_5600, L3_5601, L4_5602, L5_5603, L6_5604
  if not A1_5599 then
    L2_5600 = 0
    return L2_5600
  end
  L2_5600 = g_Vectors
  L2_5600 = L2_5600.temp_v1
  L4_5602 = A0_5598
  L3_5601 = A0_5598.GetWorldBBox
  L4_5602 = L3_5601(L4_5602)
  L5_5603 = FastSumVectors
  L6_5604 = L3_5601
  L5_5603(L6_5604, L3_5601, L4_5602)
  L5_5603 = ScaleVectorInPlace
  L6_5604 = L3_5601
  L5_5603(L6_5604, 0.5)
  L6_5604 = A1_5599
  L5_5603 = A1_5599.GetWorldPos
  L5_5603(L6_5604, L2_5600)
  L5_5603 = SubVectors
  L6_5604 = L2_5600
  L5_5603(L6_5604, L2_5600, L3_5601)
  L5_5603 = A0_5598.Properties
  L5_5603 = L5_5603.fUseDistance
  L6_5604 = LengthSqVector
  L6_5604 = L6_5604(L2_5600)
  if L6_5604 < L5_5603 * L5_5603 then
    L6_5604 = 1
    return L6_5604
  else
    L6_5604 = 0
    return L6_5604
  end
end
function HealthPack.GetUsableMessage(A0_5605, A1_5606)
  local L2_5607
  L2_5607 = "@use_HealthPack"
  return L2_5607
end
function HealthPack.OnUsed(A0_5608, A1_5609)
  Script.SetTimerForFunction(A0_5608.Properties.fRespawnTime * 1000, "HealthPack.UnHide", A0_5608)
  A0_5608.server:SvRequestHidePack(1)
  A0_5608.server:SvRequestHeal(A1_5609.id, 1)
end
