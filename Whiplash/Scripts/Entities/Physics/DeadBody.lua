DeadBody = {
  type = "DeadBody",
  temp_ModelName = "",
  DeadBodyParams = {
    max_time_step = 0.025,
    sleep_speed = 0.025,
    damping = 0.3,
    freefall_damping = 0.1,
    lying_mode_ncolls = 4,
    lying_sleep_speed = 0.065,
    lying_damping = 1.5
  },
  PhysParams = {
    mass = 80,
    height = 1.8,
    eyeheight = 1.7,
    sphereheight = 1.2,
    radius = 0.45,
    stiffness_scale = 0,
    lod = 1,
    retain_joint_vel = 0
  },
  Properties = {
    soclasses_SmartObjectClass = "",
    bResting = 1,
    object_Model = "Objects/characters/Aliens/AlienGuts/AlienGuts_Phantom.cdf",
    lying_damping = 1.5,
    bCollidesWithPlayers = 0,
    bPushableByPlayers = 0,
    bPushableByAI = 0,
    Mass = 80,
    bNoFriendlyFire = 0,
    bIsMimicable = true,
    Buoyancy = {
      water_density = 1000,
      water_damping = 0,
      water_resistance = 1000
    },
    TacticalInfo = {bScannable = 0, LookupName = ""},
    Sound = {audioTrigger_Open = "", audioTrigger_Close = ""}
  },
  PropertiesInstance = {
    Stiffness = 0,
    bExtraStiff = 0,
    PoseAnim = "",
    nRestingOverride = -1,
    bBypassInventory = 0,
    character_Character = ""
  },
  Editor = {
    Icon = "DeadBody.bmp",
    IconOnTop = 1
  },
  containerListeners = {}
}
DeadBodyInstanceVars = {
  m_bSearched = false,
  m_bEmpty = false,
  m_usableMessage = ""
}
ArkMakeContainer(DeadBody)
function CreateDeadBody(A0_7602)
  mergef(A0_7602, DeadBodyInstanceVars, 1)
end
function DeadBody.GetUsable(A0_7603)
  local L2_7604
  L2_7604 = {}
  ;({}).ActionType = "ScriptDefined"
  L2_7604.Loot, ({}).DisplayText = {}, "@use_object"
  if ArkRoster.GetCharacterHasTrackingChip(A0_7603.PropertiesInstance.character_Character) then
    ArkRoster.DiscoverCharacter(A0_7603.PropertiesInstance.character_Character)
  end
  return L2_7604
end
function DeadBody.UpdateDisplayName(A0_7605)
  local L1_7606
  L1_7606 = A0_7605.PropertiesInstance
  L1_7606 = L1_7606.character_Character
  if L1_7606 ~= "" then
    L1_7606 = ArkRoster
    L1_7606 = L1_7606.GetCharacterName
    L1_7606 = L1_7606(A0_7605.PropertiesInstance.character_Character)
    A0_7605.m_usableMessage = L1_7606
  else
    L1_7606 = LogWarning
    L1_7606("No character name set, cannot set container name to character.")
    A0_7605.m_usableMessage = "Corpse"
  end
  L1_7606 = nil
  if A0_7605.m_bEmpty == true then
    L1_7606 = A0_7605.m_usableMessage .. " (Empty)"
  elseif A0_7605.m_bSearched == true then
    L1_7606 = A0_7605.m_usableMessage .. " (Searched)"
  else
    L1_7606 = A0_7605.m_usableMessage
  end
  A0_7605:SetDisplayName(L1_7606)
end
function DeadBody.OnLoad(A0_7607, A1_7608)
  local L2_7609
  L2_7609 = A1_7608.temp_ModelName
  A0_7607.temp_ModelName = L2_7609
  L2_7609 = A1_7608.PhysParams
  A0_7607.PhysParams = L2_7609
  L2_7609 = A1_7608.DeadBodyParams
  A0_7607.DeadBodyParams = L2_7609
  L2_7609 = A1_7608.m_bSearched
  A0_7607.m_bSearched = L2_7609
  L2_7609 = A1_7608.m_bEmpty
  A0_7607.m_bEmpty = L2_7609
end
function DeadBody.OnSave(A0_7610, A1_7611)
  local L2_7612
  L2_7612 = A0_7610.temp_ModelName
  A1_7611.temp_ModelName = L2_7612
  L2_7612 = A0_7610.PhysParams
  A1_7611.PhysParams = L2_7612
  L2_7612 = A0_7610.DeadBodyParams
  A1_7611.DeadBodyParams = L2_7612
  L2_7612 = A0_7610.m_bSearched
  A1_7611.m_bSearched = L2_7612
  L2_7612 = A0_7610.m_bEmpty
  A1_7611.m_bEmpty = L2_7612
end
function DeadBody.OnReset(A0_7613)
  A0_7613.bScannable = A0_7613.Properties.TacticalInfo.bScannable
  A0_7613.m_bSearched = false
  A0_7613.m_bEmpty = false
  if A0_7613.bScannable == 1 then
    Game.AddTacticalEntity(A0_7613.id, eTacticalEntity_Story)
  else
    Game.RemoveTacticalEntity(A0_7613.id, eTacticalEntity_Story)
  end
  A0_7613:LoadCharacter(0, A0_7613.Properties.object_Model)
  A0_7613:PhysicalizeThis()
  A0_7613:UpdateDisplayName()
end
function DeadBody.Server_OnInit(A0_7614)
  if not CryAction.IsServer() then
    DeadBody.OnPropertyChange(A0_7614)
  end
  CryAction.CreateGameObjectForEntity(A0_7614.id)
  A0_7614:InitInventory()
end
function DeadBody.OnLoot(A0_7615, A1_7616)
  if A0_7615.PropertiesInstance.bBypassInventory ~= 1 then
    A0_7615:OpenInventory()
    UIAction.StartAction("Ark_HUD_ExternalInventory", {
      A0_7615.Properties.Sound.audioTrigger_Open,
      A0_7615.Properties.Sound.audioTrigger_Close
    })
  end
  BroadcastEvent(A0_7615, "OnOpen")
end
function DeadBody.Client_OnInit(A0_7617)
  DeadBody.OnPropertyChange(A0_7617)
  A0_7617:SetUpdatePolicy(ENTITY_UPDATE_PHYSICS_VISIBLE)
end
function DeadBody.Server_OnDamageDead(A0_7618, A1_7619)
  if A1_7619.ipart then
    A0_7618:AddImpulse(A1_7619.ipart, A1_7619.pos, A1_7619.dir, A1_7619.impact_force_mul)
  else
    A0_7618:AddImpulse(-1, A1_7619.pos, A1_7619.dir, A1_7619.impact_force_mul)
  end
end
function DeadBody.OnSpawn(A0_7620)
  CreateDeadBody(A0_7620)
end
function DeadBody.OnHit(A0_7621)
  BroadcastEvent(A0_7621, "Hit")
end
function DeadBody.OnPropertyChange(A0_7622)
  A0_7622.PhysParams.mass = A0_7622.Properties.Mass
  if A0_7622.Properties.object_Model ~= A0_7622.temp_ModelName then
    A0_7622.temp_ModelName = A0_7622.Properties.object_Model
    A0_7622:LoadCharacter(0, A0_7622.Properties.object_Model)
  end
  A0_7622:PhysicalizeThis()
  A0_7622:UpdateDisplayName()
end
function DeadBody.PhysicalizeThis(A0_7623)
  local L1_7624, L2_7625, L3_7626, L4_7627
  L1_7624 = A0_7623.Properties
  L2_7625 = A0_7623.PhysParams
  L2_7625.retain_joint_vel = 0
  L2_7625 = A0_7623.PropertiesInstance
  L2_7625 = L2_7625.PoseAnim
  if L2_7625 ~= "" then
    L3_7626 = A0_7623
    L2_7625 = A0_7623.StartAnimation
    L4_7627 = 0
    L2_7625(L3_7626, L4_7627, A0_7623.PropertiesInstance.PoseAnim, 0, 0, 1, 1, 1, 0, 1)
    L2_7625 = A0_7623.PhysParams
    L2_7625.retain_joint_vel = 1
  end
  L2_7625 = L1_7624.bPushableByPlayers
  L3_7626 = L1_7624.bCollidesWithPlayers
  L4_7627 = status
  if L4_7627 == 1 then
    L2_7625 = 0
    L3_7626 = 0
  end
  L4_7627 = A0_7623.PhysParams
  L4_7627.mass = L1_7624.Mass
  L4_7627 = A0_7623.PhysParams
  L4_7627.stiffness_scale = A0_7623.PropertiesInstance.Stiffness * (1 - A0_7623.PropertiesInstance.bExtraStiff * 2)
  L4_7627 = A0_7623.Physicalize
  L4_7627(A0_7623, 0, PE_ARTICULATED, A0_7623.PhysParams)
  L4_7627 = A0_7623.SetPhysicParams
  L4_7627(A0_7623, PHYSICPARAM_SIMULATION, A0_7623.Properties)
  L4_7627 = A0_7623.SetPhysicParams
  L4_7627(A0_7623, PHYSICPARAM_BUOYANCY, A0_7623.Properties.Buoyancy)
  L4_7627 = L1_7624.lying_damping
  if L4_7627 then
    L4_7627 = A0_7623.DeadBodyParams
    L4_7627.lying_damping = L1_7624.lying_damping
  end
  L4_7627 = A0_7623.SetPhysicParams
  L4_7627(A0_7623, PHYSICPARAM_SIMULATION, A0_7623.DeadBodyParams)
  L4_7627 = A0_7623.SetPhysicParams
  L4_7627(A0_7623, PHYSICPARAM_ARTICULATED, A0_7623.DeadBodyParams)
  L4_7627 = {}
  L4_7627.flags_mask = geom_colltype_player
  L4_7627.flags = geom_colltype_player * L3_7626
  if status == 1 then
    L4_7627.flags_mask = geom_colltype_explosion + geom_colltype_ray + geom_colltype_foliage_proxy + geom_colltype_player
  end
  A0_7623:SetPhysicParams(PHYSICPARAM_PART_FLAGS, L4_7627)
  L4_7627.flags_mask = pef_pushable_by_players
  L4_7627.flags = pef_pushable_by_players * L2_7625
  A0_7623:SetPhysicParams(PHYSICPARAM_FLAGS, L4_7627)
  if A0_7623.PropertiesInstance.nRestingOverride == -1 then
    if L1_7624.bResting == 1 then
      A0_7623:AwakePhysics(0)
    else
      A0_7623:AwakePhysics(1)
    end
  elseif A0_7623.PropertiesInstance.nRestingOverride == 1 then
    A0_7623:AwakePhysics(0)
  elseif A0_7623.PropertiesInstance.nRestingOverride == 0 then
    A0_7623:AwakePhysics(1)
  end
  A0_7623:EnableProceduralFacialAnimation(false)
  A0_7623:PlayFacialAnimation("death_pose_0" .. random(1, 5), true)
end
function DeadBody.Event_Hide(A0_7628)
  A0_7628:Hide(1)
end
function DeadBody.Event_UnHide(A0_7629)
  A0_7629:Hide(0)
end
function DeadBody.Event_Awake(A0_7630)
  A0_7630:AwakePhysics(1)
end
function DeadBody.Event_Hit(A0_7631, A1_7632)
  BroadcastEvent(A0_7631, "Hit")
end
DeadBody.Server = {
  OnInit = DeadBody.Server_OnInit,
  OnStartGame = DeadBody.Server_OnStartGame,
  OnDamage = DeadBody.Server_OnDamageDead,
  OnHit = DeadBody.OnHit,
  OnUpdate = DeadBody.OnUpdate
}
DeadBody.Client = {
  OnInit = DeadBody.Client_OnInit,
  OnDamage = DeadBody.Client_OnDamage,
  OnUpdate = DeadBody.OnUpdate
}
function DeadBody.HasBeenScanned(A0_7633)
  A0_7633:ActivateOutput("Scanned", true)
end
DeadBody.FlowEvents = {
  Inputs = {
    Awake = {
      DeadBody.Event_Awake,
      "bool"
    },
    Hide = {
      DeadBody.Event_Hide,
      "bool"
    },
    UnHide = {
      DeadBody.Event_UnHide,
      "bool"
    }
  },
  Outputs = {
    OnOpen = "bool",
    Awake = "bool",
    Hit = "bool",
    Scanned = "bool"
  }
}
