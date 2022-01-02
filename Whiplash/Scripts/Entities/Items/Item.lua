Item = {
  Properties = {
    bPickable = 1,
    eiPhysicsType = 0,
    bMounted = 0,
    bUsable = 0,
    bSpecialSelect = 0,
    HitPoints = 0,
    soclasses_SmartObjectClass = "",
    initialSetup = ""
  },
  Client = {},
  Server = {},
  Editor = {Icon = "Item.bmp", IconOnTop = 1}
}
function Item.OnPropertyChange(A0_5610)
  A0_5610.item:Reset()
  if A0_5610.OnReset then
    A0_5610:OnReset()
  end
end
function Item.OnSave(A0_5611, A1_5612)
  local L2_5613
  L2_5613 = A0_5611.flowUser
  if L2_5613 then
    L2_5613 = A0_5611.flowUser
    L2_5613 = L2_5613.id
    A1_5612.flowUserID = L2_5613
  end
end
function Item.OnLoad(A0_5614, A1_5615)
  if A1_5615.flowUserID then
    A0_5614.flowUser = System.GetEntity(A1_5615.flowUserID)
  end
end
function Item.IsUsable(A0_5616, A1_5617)
  if A0_5616.item:CanPickUp(A1_5617.id) then
    return 725725
  elseif A0_5616.item:CanUse(A1_5617.id) then
    return 1
  else
    return 0
  end
end
function Item.GetUsableMessage(A0_5618)
  if A0_5618.item:IsMounted() then
    return "@use_mounted"
  else
    return A0_5618.item:GetUsableText()
  end
end
function Item.OnUsed(A0_5619, A1_5620)
  if A1_5620 then
    A0_5619:ActivateOutput("Used", A1_5620.id)
  end
  g_localActor:AddItem(A0_5619.id)
  A0_5619.m_bWasPickedUp = true
  return A0_5619.item:OnUsed(A1_5620.id)
end
function Item.OnFreeze(A0_5621, A1_5622, A2_5623, A3_5624)
  if not g_gameRules.game:IsMultiplayer() or g_gameRules.game:GetTeam(A1_5622) ~= g_gameRules.game:GetTeam(A0_5621.id) then
    return true
  end
  return false
end
function Item.Server.OnHit(A0_5625, A1_5626)
  if A0_5625.Properties.HitPoints and 0 < A0_5625.Properties.HitPoints then
    if A1_5626.type == "repair" then
      A0_5625.item:OnHit(A1_5626)
    elseif (not (tonumber(A0_5625.Properties.bExplosionOnly or 0) ~= 0) or A1_5626.explosion) and (not g_gameRules.game:IsMultiplayer() or g_gameRules.game:GetTeam(A1_5626.shooterId) ~= g_gameRules.game:GetTeam(A0_5625.id)) then
      A0_5625.item:OnHit(A1_5626)
      if not A0_5625.item:IsDestroyed() then
        if 0 < A1_5626.damage and g_gameRules.Server.OnTurretHit then
          g_gameRules.Server.OnTurretHit(g_gameRules, A0_5625, A1_5626)
        end
        if A0_5625.item:IsDestroyed() and A0_5625.FlowEvents and A0_5625.FlowEvents.Outputs.Destroyed then
          A0_5625:ActivateOutput("Destroyed", 1)
        end
      end
    end
  end
end
function Item.Server.OnShattered(A0_5627, A1_5628)
  g_gameRules.Server.OnTurretHit(g_gameRules, A0_5627, A1_5628)
end
function Item.Event_Hide(A0_5629)
  A0_5629:Hide(1)
  A0_5629:ActivateOutput("Hide", true)
end
function Item.Event_UnHide(A0_5630)
  A0_5630:Hide(0)
  A0_5630:ActivateOutput("UnHide", true)
end
function Item.Event_UserId(A0_5631, A1_5632, A2_5633)
  A0_5631.flowUser = A2_5633
end
function Item.Event_Use(A0_5634)
  A0_5634:OnUsed(A0_5634.flowUser)
end
Item.FlowEvents = {
  Inputs = {
    Hide = {
      Item.Event_Hide,
      "bool"
    },
    UnHide = {
      Item.Event_UnHide,
      "bool"
    },
    Use = {
      Item.Event_Use,
      "bool"
    },
    UserId = {
      Item.Event_UserId,
      "entity"
    }
  },
  Outputs = {
    Hide = "bool",
    UnHide = "bool",
    Used = "entity"
  }
}
function MakeRespawnable(A0_5635)
  local L1_5636, L2_5637
  L1_5636 = A0_5635.Properties
  if L1_5636 then
    L1_5636 = A0_5635.Properties
    L2_5637 = {}
    L2_5637.nTimer = 30
    L2_5637.bUnique = 0
    L2_5637.bRespawn = 0
    L1_5636.Respawn = L2_5637
  end
end
function CreateItemTable(A0_5638)
  if not _G[A0_5638] then
    _G[A0_5638] = new(Item)
  end
  MakeRespawnable(_G[A0_5638])
end
CreateItemTable("HMG")
HMG.Properties.bMounted = 1
HMG.Properties.bUsable = 1
HMG.Properties.bPickable = 0
HMG.Properties.MountedLimits = {
  pitchMin = -22,
  pitchMax = 60,
  yaw = 70
}
function HMG.OnReset(A0_5639)
  A0_5639.item:SetMountedAngleLimits(A0_5639.Properties.MountedLimits.pitchMin, A0_5639.Properties.MountedLimits.pitchMax, A0_5639.Properties.MountedLimits.yaw)
  A0_5639.inUse = false
end
function HMG.OnSpawn(A0_5640)
  A0_5640:OnReset()
end
function HMG.OnUsed(A0_5641, A1_5642)
  if A1_5642.actor:IsPlayer() then
    return Item.OnUsed(A0_5641, A1_5642)
  end
end
function HMG.OnAIUsed(A0_5643, A1_5644, A2_5645)
  if A1_5644.OnUseMountedWeaponRequest then
    A1_5644:OnUseMountedWeaponRequest(A0_5643.id)
    return
  end
  g_SignalData.id = A0_5643.id
  g_SignalData.iValue = A2_5645
  AI.Signal(SIGNALFILTER_SENDER, 0, "PrepareForMountedWeaponUse", A1_5644.id, g_SignalData)
end
CreateItemTable("VehicleHMG")
VehicleHMG.Properties.bMounted = 1
VehicleHMG.Properties.bUsable = 1
VehicleHMG.Properties.bPickable = 0
function VehicleHMG.IsUsable(A0_5646, A1_5647)
  if A0_5646.item:CanUseVehicle(A1_5647.id) == true then
    return 1
  end
  return (A0_5646.item:CanUseVehicle(A1_5647.id))
end
CreateItemTable("VTOLHMG")
VTOLHMG.Properties.bMounted = 1
VTOLHMG.Properties.bUsable = 1
VTOLHMG.Properties.bPickable = 0
function VTOLHMG.IsUsable(A0_5648, A1_5649)
  if A0_5648.item:CanUseVehicle(A1_5649.id) == true then
    return 1
  end
  return (A0_5648.item:CanUseVehicle(A1_5649.id))
end
CreateItemTable("AGL")
AGL.Properties.bMounted = 1
AGL.Properties.bUsable = 1
AGL.Properties.bPickable = 0
AGL.Properties.MountedLimits = {
  pitchMin = -22,
  pitchMax = 60,
  yaw = 70
}
CreateItemTable("swarmer")
swarmer.Properties.bPickable = 1
swarmer.Properties.bUsable = 1
CreateItemTable("Heavy_minigun")
Heavy_minigun.Properties.bPickable = 1
Heavy_minigun.Properties.bUsable = 1
CreateItemTable("Heavy_mortar")
Heavy_mortar.Properties.bPickable = 1
Heavy_mortar.Properties.bUsable = 1
CreateItemTable("Grunt_PlasmaRifle")
Grunt_PlasmaRifle.Properties.bPickable = 1
Grunt_PlasmaRifle.Properties.bUsable = 1
CreateItemTable("plasma_thrower")
plasma_thrower.Properties.bPickable = 1
plasma_thrower.Properties.bUsable = 1
CreateItemTable("LightningGun")
LightningGun.Properties.bPickable = 1
LightningGun.Properties.bUsable = 1
CreateItemTable("UseableTurret")
UseableTurret.Properties.bMounted = 1
UseableTurret.Properties.bUsable = 1
UseableTurret.Properties.MountedLimits = {
  pitchMin = -22,
  pitchMax = 60,
  yaw = 70
}
CreateItemTable("Cinematic_VTolMG")
Cinematic_VTolMG.Properties.bPickable = 0
Cinematic_VTolMG.Properties.bUsable = 0
function Cinematic_VTolMG.Event_Primary(A0_5650)
  Game.SendEventToGameObject(A0_5650.id, "primary")
end
function Cinematic_VTolMG.Event_Secondary(A0_5651)
  Game.SendEventToGameObject(A0_5651.id, "secondary")
end
function Cinematic_VTolMG.Event_Deactivate(A0_5652)
  Game.SendEventToGameObject(A0_5652.id, "deactivate")
end
Cinematic_VTolMG.FlowEvents = {
  Inputs = {
    Primary = {
      Cinematic_VTolMG.Event_Primary,
      "bool"
    },
    Secondary = {
      Cinematic_VTolMG.Event_Secondary,
      "bool"
    },
    Deactivate = {
      Cinematic_VTolMG.Event_Deactivate,
      "bool"
    }
  },
  Outputs = {}
}
function CreateTurret(A0_5653)
  CreateItemTable(A0_5653)
  _G[A0_5653].Properties.teamName = ""
  _G[A0_5653].Properties.GunTurret = {
    bSurveillance = 1,
    bVehiclesOnly = 0,
    bEnabled = 1,
    bSearching = 0,
    bSearchOnly = 0,
    MGRange = 50,
    RocketRange = 50,
    TACDetectRange = 300,
    TurnSpeed = 1.5,
    SearchSpeed = 0.5,
    UpdateTargetTime = 2,
    AbandonTargetTime = 0.5,
    TACCheckTime = 0.2,
    YawRange = 360,
    MinPitch = -45,
    MaxPitch = 45,
    AimTolerance = 20,
    Prediction = 1,
    BurstTime = 0,
    BurstPause = 0,
    SweepTime = 0,
    LightFOV = 0,
    ExplosiveDamageMultiplier = 1,
    bFindCloaked = 1,
    bExplosionOnly = 0
  }
  _G[A0_5653].Server.OnInit = function(A0_5654)
    A0_5654:OnReset()
  end
  _G[A0_5653].OnReset = function(A0_5655)
    local L1_5656
    L1_5656 = g_gameRules
    L1_5656 = L1_5656.game
    L1_5656 = L1_5656.GetTeamId
    L1_5656 = L1_5656(L1_5656, A0_5655.Properties.teamName)
    L1_5656 = L1_5656 or 0
    g_gameRules.game:SetTeam(L1_5656, A0_5655.id)
  end
  _G[A0_5653].Properties.objModel = ""
  _G[A0_5653].Properties.objBarrel = ""
  _G[A0_5653].Properties.objBase = ""
  _G[A0_5653].Properties.objDestroyed = ""
  _G[A0_5653].Properties.bUsable = nil
  _G[A0_5653].Properties.bPickable = nil
  _G[A0_5653].Event_EnableTurret = function(A0_5657)
    A0_5657.Properties.GunTurret.bEnabled = 1
    A0_5657:ActivateOutput("TurretEnabled", 1)
  end
  _G[A0_5653].Event_DisableTurret = function(A0_5658)
    A0_5658.Properties.GunTurret.bEnabled = 0
    A0_5658:ActivateOutput("TurretDisabled", true)
  end
  _G[A0_5653].FlowEvents.Inputs.EnableTurret = {
    _G[A0_5653].Event_EnableTurret,
    "bool"
  }
  _G[A0_5653].FlowEvents.Inputs.DisableTurret = {
    _G[A0_5653].Event_DisableTurret,
    "bool"
  }
  _G[A0_5653].FlowEvents.Outputs.TurretEnabled = "bool"
  _G[A0_5653].FlowEvents.Outputs.TurretDisabled = "bool"
  _G[A0_5653].FlowEvents.Outputs.Destroyed = "bool"
  return _G[A0_5653]
end
CreateTurret("WarriorMOARTurret")
CreateTurret("AutoTurret").Properties.bExplosionOnly = 1
CreateTurret("AutoTurretAA").Properties.bExplosionOnly = 1
AutoTurret.Properties.bPickable = 0
CreateItemTable("RippableTurretGun")
RippableTurretGun.Properties.bMounted = 1
RippableTurretGun.Properties.bUsable = 1
RippableTurretGun.Properties.MountedLimits = {
  pitchMin = -22,
  pitchMax = 60,
  yaw = 70
}
function RippableTurretGun.OnReset(A0_5659)
  A0_5659.item:SetMountedAngleLimits(A0_5659.Properties.MountedLimits.pitchMin, A0_5659.Properties.MountedLimits.pitchMax, A0_5659.Properties.MountedLimits.yaw)
end
function RippableTurretGun.OnSpawn(A0_5660)
  A0_5660:OnReset()
end
function RippableTurretGun.OnUsed(A0_5661, A1_5662)
  if A1_5662.actor:IsPlayer() then
    Item.OnUsed(A0_5661, A1_5662)
  else
    g_SignalData.id = A0_5661.id
    AI.Signal(SIGNALFILTER_SENDER, 0, "UseMountedWeapon", A1_5662.id, g_SignalData)
  end
end
function RippableTurretGun.OnAIUsed(A0_5663, A1_5664, A2_5665)
  g_SignalData.id = A0_5663.id
  g_SignalData.iValue = A2_5665
  AI.Signal(SIGNALFILTER_SENDER, 0, "PrepareForMountedWeaponUse", A1_5664.id, g_SignalData)
end
