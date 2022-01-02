Switch = {
  Client = {},
  Server = {},
  Properties = {
    fileModel = "engine/engineassets/objects/default.cgf",
    Switch = "Props_Interactive.switches.small_switch",
    ModelSubObject = "",
    fileModelDestroyed = "",
    DestroyedSubObject = "",
    fHealth = 100,
    bDestroyable = 0,
    bUsable = 1,
    UseMessage = "Use Light Switch",
    bTurnedOn = 0,
    Physics = {
      bRigidBody = 0,
      bRigidBodyActive = 0,
      bRigidBodyAfterDeath = 1,
      bResting = 1,
      Density = -1,
      Mass = 1
    },
    Sound = {soundTurnOnSound = "", soundTurnOffSound = ""},
    SwitchPos = {
      bShowSwitch = 1,
      On = 35,
      Off = -35
    },
    SmartSwitch = {
      bUseSmartSwitch = 0,
      Entity = "",
      TurnedOnEvent = "",
      TurnedOffEvent = ""
    },
    Breakage = {
      fLifeTime = 20,
      fExplodeImpulse = 0,
      bSurfaceEffects = 1
    },
    Destruction = {
      bExplode = 0,
      Effect = "",
      EffectScale = 0,
      Radius = 0,
      Pressure = 0,
      Damage = 0,
      Decal = "",
      Direction = {
        x = 0,
        y = 0,
        z = -1
      }
    }
  },
  Editor = {Icon = "switch.bmp", IconOnTop = 1},
  States = {
    "TurnedOn",
    "TurnedOff",
    "Destroyed"
  },
  fCurrentSpeed = 0,
  fDesiredSpeed = 0,
  LastHit = {
    impulse = {
      x = 0,
      y = 0,
      z = 0
    },
    pos = {
      x = 0,
      y = 0,
      z = 0
    }
  },
  shooterId = nil
}
Net.Expose({
  Class = Switch,
  ClientMethods = {
    OnUsed_Internal = {
      RELIABLE_ORDERED,
      PRE_ATTACH,
      ENTITYID
    },
    Destroy = {RELIABLE_ORDERED, PRE_ATTACH}
  },
  ServerMethods = {
    SvRequestUse = {
      RELIABLE_ORDERED,
      PRE_ATTACH,
      ENTITYID
    }
  }
})
function Switch.OnPropertyChange(A0_7268)
  A0_7268:OnReset()
end
function Switch.OnSave(A0_7269, A1_7270)
  local L2_7271
  L2_7271 = A0_7269.switch
  A1_7270.switch = L2_7271
  L2_7271 = A0_7269.usable
  A1_7270.usable = L2_7271
end
function Switch.OnLoad(A0_7272, A1_7273)
  A0_7272.switch = A1_7273.switch
  A0_7272.usable = A1_7273.usable
  if A0_7272:GetState() ~= "Destroyed" then
    A0_7272:PhysicalizeThis(0)
    A0_7272:SetCurrentSlot(0)
  else
    A0_7272.Properties.Physics.bRigidBody = A0_7272.Properties.Physics.bRigidBodyAfterDeath
    A0_7272:PhysicalizeThis(1)
    A0_7272.Properties.Physics.bRigidBody = A0_7272.Properties.Physics.bRigidBody
    A0_7272:SetCurrentSlot(1)
  end
end
function Switch.OnReset(A0_7274)
  local L1_7275
  L1_7275 = A0_7274.Properties
  A0_7274.health = L1_7275.fHealth
  A0_7274.usable = A0_7274.Properties.bUsable
  if not EmptyString(L1_7275.fileModel) then
    A0_7274:LoadSubObject(0, L1_7275.fileModel, L1_7275.ModelSubObject)
  end
  if not EmptyString(L1_7275.fileModelDestroyed) then
    A0_7274:LoadSubObject(1, L1_7275.fileModelDestroyed, L1_7275.DestroyedSubObject)
  elseif not EmptyString(L1_7275.DestroyedSubObject) then
    A0_7274:LoadSubObject(1, L1_7275.fileModel, L1_7275.DestroyedSubObject)
  end
  A0_7274:SetCurrentSlot(0)
  A0_7274:PhysicalizeThis(0)
  if not EmptyString(A0_7274.Properties.Switch) then
    A0_7274:SpawnSwitch()
  end
  if A0_7274.Properties.bTurnedOn == 1 then
    A0_7274:GotoState("TurnedOn")
  else
    A0_7274:GotoState("TurnedOff")
  end
end
function Switch.PhysicalizeThis(A0_7276, A1_7277)
  local L2_7278
  L2_7278 = A0_7276.Properties
  L2_7278 = L2_7278.Physics
  EntityCommon.PhysicalizeRigid(A0_7276, A1_7277, L2_7278, 1)
end
function Switch.Client.OnHit(A0_7279, A1_7280, A2_7281)
  CopyVector(A0_7279.LastHit.pos, A1_7280.pos)
  CopyVector(A0_7279.LastHit.impulse, A1_7280.dir)
  A0_7279.LastHit.impulse.x = A0_7279.LastHit.impulse.x * A1_7280.damage
  A0_7279.LastHit.impulse.y = A0_7279.LastHit.impulse.y * A1_7280.damage
  A0_7279.LastHit.impulse.z = A0_7279.LastHit.impulse.z * A1_7280.damage
end
function Switch.Server.OnHit(A0_7282, A1_7283)
  A0_7282.shooterId = A1_7283.shooterId
  BroadcastEvent(A0_7282, "Hit")
  if A0_7282.Properties.bDestroyable == 1 then
    A0_7282.health = A0_7282.health - A1_7283.damage
    if A0_7282.health <= 0 then
      A0_7282.allClients:Destroy()
    end
  end
end
function Switch.Explode(A0_7284)
  local L1_7285, L2_7286, L3_7287
  L1_7285 = A0_7284.Properties
  L2_7286 = A0_7284.LastHit
  L2_7286 = L2_7286.pos
  L3_7287 = A0_7284.LastHit
  L3_7287 = L3_7287.impulse
  A0_7284:BreakToPieces(0, 0, L1_7285.Breakage.fExplodeImpulse, L2_7286, L3_7287, L1_7285.Breakage.fLifeTime, L1_7285.Breakage.bSurfaceEffects)
  if NumberToBool(A0_7284.Properties.Destruction.bExplode) then
    g_gameRules:CreateExplosion(A0_7284.shooterId, A0_7284.id, A0_7284.Properties.Destruction.Damage, A0_7284:GetWorldPos(), A0_7284.Properties.Destruction.Direction, A0_7284.Properties.Destruction.Radius, nil, A0_7284.Properties.Destruction.Pressure, A0_7284.Properties.Destruction.HoleSize, A0_7284.Properties.Destruction.Effect, A0_7284.Properties.Destruction.EffectScale)
  end
  A0_7284:SetCurrentSlot(1)
  if L1_7285.Physics.bRigidBodyAfterDeath == 1 then
    L1_7285.Physics.bRigidBody = 1
    A0_7284:PhysicalizeThis(1)
    L1_7285.Physics.bRigidBody = L1_7285.Physics.bRigidBody
  else
    A0_7284:PhysicalizeThis(1)
  end
  A0_7284:RemoveDecals()
  A0_7284:AwakePhysics(1)
  A0_7284:OnDestroy()
end
function Switch.SetCurrentSlot(A0_7288, A1_7289)
  if A1_7289 == 0 then
    A0_7288:DrawSlot(0, 1)
    A0_7288:DrawSlot(1, 0)
  else
    A0_7288:DrawSlot(0, 0)
    A0_7288:DrawSlot(1, 1)
  end
  A0_7288.currentSlot = A1_7289
end
function Switch.SetSwitch(A0_7290, A1_7291)
  local L2_7292, L3_7293, L4_7294
  L2_7292 = A0_7290.switch
  if L2_7292 == nil then
    return
  end
  L2_7292 = A0_7290.Properties
  L2_7292 = L2_7292.SwitchPos
  L3_7293 = L2_7292.bShowSwitch
  if L3_7293 == 0 then
    return
  end
  L3_7293 = A0_7290.Properties
  L3_7293 = L3_7293.SwitchPos
  L4_7294 = {}
  L4_7294.x = 0
  L4_7294.y = 0
  L4_7294.z = 0
  if A1_7291 == 1 then
    A0_7290.switch:GetAngles(L4_7294)
    L4_7294.y = L3_7293.On * g_Deg2Rad
  else
    A0_7290.switch:GetAngles(L4_7294)
    L4_7294.y = L3_7293.Off * g_Deg2Rad
  end
  A0_7290.switch:SetAngles(L4_7294)
end
function Switch.SpawnSwitch(A0_7295)
  local L1_7296, L2_7297, L3_7298
  L1_7296 = A0_7295.switch
  if L1_7296 then
    L1_7296 = Entity
    L1_7296 = L1_7296.DetachThis
    L2_7297 = A0_7295.switch
    L2_7297 = L2_7297.id
    L3_7298 = 0
    L1_7296(L2_7297, L3_7298)
    L1_7296 = System
    L1_7296 = L1_7296.RemoveEntity
    L2_7297 = A0_7295.switch
    L2_7297 = L2_7297.id
    L1_7296(L2_7297)
    A0_7295.switch = nil
  end
  L1_7296 = A0_7295.Properties
  L1_7296 = L1_7296.SwitchPos
  L2_7297 = L1_7296.bShowSwitch
  if L2_7297 == 0 then
    return
  end
  L2_7297 = A0_7295.switch
  if L2_7297 == nil then
    L2_7297 = A0_7295.Properties
    L2_7297 = L2_7297.Switch
    if L2_7297 == "" then
      L2_7297 = Log
      L3_7298 = "No switch found for switch object "
      L3_7298 = L3_7298 .. A0_7295:GetName()
      L2_7297(L3_7298)
    else
      L2_7297 = {}
      L2_7297.class = "BasicEntity"
      L3_7298 = Log
      L3_7298("self.Properties.Switch: " .. A0_7295.Properties.Switch)
      L3_7298 = A0_7295.Properties
      L3_7298 = L3_7298.Switch
      L2_7297.archetype = L3_7298
      L3_7298 = A0_7295.GetName
      L3_7298 = L3_7298(A0_7295)
      L3_7298 = L3_7298 .. "_switch"
      L2_7297.name = L3_7298
      L2_7297.flags = 0
      L3_7298 = A0_7295.GetPos
      L3_7298 = L3_7298(A0_7295)
      L2_7297.position = L3_7298
      L3_7298 = System
      L3_7298 = L3_7298.SpawnEntity
      L3_7298 = L3_7298(L2_7297)
      A0_7295.switch = L3_7298
      L3_7298 = A0_7295.AttachChild
      L3_7298(A0_7295, A0_7295.switch.id, 0)
      L3_7298 = A0_7295.switch
      L3_7298 = L3_7298.SetWorldPos
      L3_7298(L3_7298, A0_7295:GetPos())
      L3_7298 = {}
      L3_7298.x = 0
      L3_7298.y = 0
      L3_7298.z = 0
      if A0_7295.Properties.bTurnedOn == 1 then
        L3_7298.y = L1_7296.On * g_Deg2Rad
      else
        L3_7298.y = L1_7296.Off * g_Deg2Rad
      end
      A0_7295.switch:SetAngles(L3_7298)
    end
  else
    L2_7297 = A0_7295.Properties
    L2_7297 = L2_7297.bTurnedOn
    if L2_7297 == 1 then
      L2_7297 = A0_7295.switch
      L3_7298 = L2_7297
      L2_7297 = L2_7297.GetAngles
      L2_7297 = L2_7297(L3_7298)
      L3_7298 = L1_7296.On
      L3_7298 = L3_7298 * g_Deg2Rad
      if L2_7297 ~= L3_7298 then
        L2_7297 = {}
        L2_7297.x = 0
        L2_7297.y = 0
        L2_7297.z = 0
        L3_7298 = A0_7295.GetAngles
        L3_7298(A0_7295, L2_7297)
        L3_7298 = L1_7296.On
        L3_7298 = L3_7298 * g_Deg2Rad
        L2_7297.y = L3_7298
        L3_7298 = A0_7295.switch
        L3_7298 = L3_7298.SetAngles
        L3_7298(L3_7298, L2_7297)
      end
    else
      L2_7297 = A0_7295.switch
      L3_7298 = L2_7297
      L2_7297 = L2_7297.GetAngles
      L2_7297 = L2_7297(L3_7298)
      L3_7298 = L1_7296.Off
      L3_7298 = L3_7298 * g_Deg2Rad
      if L2_7297 ~= L3_7298 then
        L2_7297 = {}
        L2_7297.x = 0
        L2_7297.y = 0
        L2_7297.z = 0
        L3_7298 = A0_7295.GetAngles
        L3_7298(A0_7295, L2_7297)
        L3_7298 = L1_7296.Off
        L3_7298 = L3_7298 * g_Deg2Rad
        L2_7297.y = L3_7298
        L3_7298 = A0_7295.switch
        L3_7298 = L3_7298.SetAngles
        L3_7298(L3_7298, L2_7297)
      end
    end
  end
end
function Switch.OnDestroy(A0_7299)
  if A0_7299.switch then
    Entity.DetachThis(A0_7299.switch.id, 0)
    System.RemoveEntity(A0_7299.switch.id)
    A0_7299.switch = nil
  end
end
function Switch.Server.OnInit(A0_7300)
  if not A0_7300.bInitialized then
    A0_7300:OnReset()
    A0_7300.bInitialized = 1
    A0_7300.usable = A0_7300.Properties.bUsable
  end
end
function Switch.Client.OnInit(A0_7301)
  if not A0_7301.bInitialized then
    A0_7301:OnReset()
    A0_7301.bInitialized = 1
  end
end
function Switch.OnUsed(A0_7302, A1_7303, A2_7304)
  if not A0_7302.iUseCount then
    A0_7302.iUseCount = 0
  end
  A0_7302.iUseCount = A0_7302.iUseCount + 1
  System.Log("Used this many times: " .. tostring(A0_7302.iUseCount))
  A0_7302.server:SvRequestUse(A1_7303.id)
end
function Switch.Server.SvRequestUse(A0_7305, A1_7306)
  A0_7305.allClients:OnUsed_Internal(A1_7306)
end
function Switch.Client.OnUsed_Internal(A0_7307, A1_7308)
  A0_7307:ActivateOutput("UsedBy", A1_7308)
  if A0_7307:GetState() == "TurnedOn" then
    A0_7307:GotoState("TurnedOff")
  elseif A0_7307:GetState() == "TurnedOff" then
    A0_7307:GotoState("TurnedOn")
  elseif A0_7307:GetState() == "Destroyed" then
    return
  end
  BroadcastEvent(A0_7307, "Used")
end
function Switch.GetUsable(A0_7309)
  if A0_7309:GetState() ~= "Destroyed" and A0_7309.usable == 1 then
    ({}).ActionType = "ScriptDefined"
    ;({}).Use, ({}).DisplayText = {}, A0_7309.Properties.UseMessage
  end
  return {}
end
function Switch.PlaySound(A0_7310, A1_7311)
  local L2_7312
  if A1_7311 and A1_7311 ~= "" then
    L2_7312 = A0_7310.Properties
    L2_7312 = L2_7312.Sound
    L2_7312 = L2_7312["sound" .. A1_7311]
    if not L2_7312 or L2_7312 ~= "" then
    end
  else
  end
end
function Switch.CheckSmartSwitch(A0_7313, A1_7314)
  local L2_7315, L3_7316, L4_7317, L5_7318, L6_7319, L7_7320, L8_7321, L9_7322
  L2_7315 = A0_7313.Properties
  L2_7315 = L2_7315.SmartSwitch
  L3_7316 = L2_7315.bUseSmartSwitch
  if L3_7316 == 1 then
    L3_7316 = System
    L3_7316 = L3_7316.GetEntitiesInSphere
    L4_7317 = A0_7313.GetPos
    L4_7317 = L4_7317(L5_7318)
    L3_7316 = L3_7316(L4_7317, L5_7318)
    L4_7317 = {}
    for L8_7321, L9_7322 in L5_7318(L6_7319) do
      if L9_7322:GetName() == L2_7315.Entity then
        table.insert(L4_7317, L9_7322)
      end
    end
    L5_7318(L6_7319, L7_7320)
    if L5_7318 then
      if L6_7319 ~= "" then
        L8_7321 = type
        L9_7322 = L7_7320
        L8_7321 = L8_7321(L9_7322)
        if L8_7321 == "function" then
          L8_7321 = L7_7320
          L9_7322 = L5_7318
          L8_7321(L9_7322)
        else
          L8_7321 = System
          L8_7321 = L8_7321.Log
          L9_7322 = A0_7313.GetName
          L9_7322 = L9_7322(A0_7313)
          L9_7322 = L9_7322 .. " was trying to send an invalid event! Check entity properties!"
          L8_7321(L9_7322)
        end
      end
    end
  end
end
function Switch.Event_Destroyed(A0_7323)
  BroadcastEvent(A0_7323, "Destroyed")
  A0_7323:GotoState("Destroyed")
end
function Switch.Event_TurnedOn(A0_7324)
  BroadcastEvent(A0_7324, "TurnedOn")
  A0_7324:GotoState("TurnedOn")
end
function Switch.Event_TurnedOff(A0_7325)
  BroadcastEvent(A0_7325, "TurnedOff")
  A0_7325:GotoState("TurnedOff")
end
function Switch.Event_Switch(A0_7326)
  if A0_7326:GetState() ~= "Destroyed" then
    if A0_7326:GetState() == "TurnedOn" then
      A0_7326:GotoState("TurnedOff")
    elseif A0_7326:GetState() == "TurnedOff" then
      A0_7326:GotoState("TurnedOn")
    end
  end
end
function Switch.Event_Hit(A0_7327, A1_7328)
  BroadcastEvent(A0_7327, "Hit")
end
function Switch.Event_Enable(A0_7329, A1_7330)
  A0_7329.usable = 1
  BroadcastEvent(A0_7329, "Enable")
end
function Switch.Event_Disable(A0_7331, A1_7332)
  A0_7331.usable = 0
  BroadcastEvent(A0_7331, "Disable")
end
function Switch.Event_Hide(A0_7333, A1_7334)
  A0_7333:Hide(1)
  BroadcastEvent(A0_7333, "Hide")
end
function Switch.Event_Unhide(A0_7335, A1_7336)
  A0_7335:Hide(0)
  BroadcastEvent(A0_7335, "Unhide")
end
function Switch.Client.Destroy(A0_7337)
  A0_7337:GotoState("Destroyed")
end
Switch.Client.TurnedOn = {
  OnBeginState = function(A0_7338)
    A0_7338:SetSwitch(1)
    A0_7338:CheckSmartSwitch("TurnedOnEvent")
    BroadcastEvent(A0_7338, "TurnedOn")
  end,
  OnEndState = function(A0_7339)
    local L1_7340
  end
}
Switch.Client.TurnedOff = {
  OnBeginState = function(A0_7341)
    A0_7341:SetSwitch(0)
    A0_7341:CheckSmartSwitch("TurnedOffEvent")
    BroadcastEvent(A0_7341, "TurnedOff")
  end,
  OnEndState = function(A0_7342)
    local L1_7343
  end
}
Switch.Client.Destroyed = {
  OnBeginState = function(A0_7344)
    A0_7344:Explode()
    BroadcastEvent(A0_7344, "Destroyed")
  end,
  OnEndState = function(A0_7345)
    local L1_7346
  end
}
Switch.FlowEvents = {
  Inputs = {
    Switch = {
      Switch.Event_Switch
    },
    TurnedOn = {
      Switch.Event_TurnedOn
    },
    TurnedOff = {
      Switch.Event_TurnedOff
    },
    Hit = {
      Switch.Event_Hit,
      "bool"
    },
    Destroyed = {
      Switch.Event_Destroyed,
      "bool"
    },
    Disable = {
      Switch.Event_Disable,
      "bool"
    },
    Enable = {
      Switch.Event_Enable,
      "bool"
    },
    Hide = {
      Switch.Event_Hide,
      "bool"
    },
    Unhide = {
      Switch.Event_Unhide,
      "bool"
    }
  },
  Outputs = {
    Hit = "bool",
    TurnedOn = "bool",
    TurnedOff = "bool",
    Destroyed = "bool",
    Disable = "bool",
    Enable = "bool",
    Hide = "bool",
    Unhide = "bool",
    Used = "bool",
    UsedBy = "entity"
  }
}
