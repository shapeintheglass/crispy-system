local L0_7634
L0_7634 = {}
L0_7634.Client = {}
L0_7634.Server = {}
L0_7634.States = {"Alive", "Dead"}
L0_7634.Properties = {
  soclasses_SmartObjectClass = "",
  bAutoGenAIHidePts = 0,
  object_Model = "engine/engineassets/objects/default.cgf",
  ModelSubObject = "",
  object_ModelDestroyed = "engine/engineassets/objects/default.cgf",
  DestroyedSubObject = "",
  DmgFactorWhenCollidingAI = 1,
  bPlayerOnly = 1,
  bOnlyAllowPlayerToFullyDestroyObject = 0,
  fDamageTreshold = 0,
  bExplode = 1,
  Vulnerability = {
    bExplosion = 1,
    bCollision = 1,
    bMelee = 1,
    bBullet = 1,
    bOther = 1,
    projectileClass = ""
  },
  DamageMultipliers = {
    fCollision = 1,
    fBullet = 1,
    fProjectileClass = 1
  },
  Breakage = {
    fLifeTime = 10,
    fExplodeImpulse = 0,
    bSurfaceEffects = 1
  },
  Explosion = {
    Delay = 0,
    ParticleEffect = "explosions.grenade_air.explosion",
    EffectScale = 1,
    MinRadius = 5,
    Radius = 10,
    MinPhysRadius = 2.5,
    PhysRadius = 5,
    SoundRadius = 0,
    Pressure = 1000,
    Damage = 1000,
    Direction = {
      x = 0,
      y = 0,
      z = 1
    },
    vOffset = {
      x = 0,
      y = 0,
      z = 0
    },
    DelayEffect = {
      bHasDelayEffect = 0,
      ParticleEffect = "",
      vOffset = {
        x = 0,
        y = 0,
        z = 0
      },
      vRotation = {
        x = 0,
        y = 0,
        z = 0
      },
      Params = {
        SpawnPeriod = 0,
        Scale = 1,
        CountScale = 1,
        bCountPerUnit = 0,
        bSizePerUnit = 0,
        AttachType = "none",
        AttachForm = "none",
        bPrime = 0
      }
    }
  },
  Sounds = {
    sound_Alive = "",
    sound_Dead = "",
    sound_Dying = "",
    fAISoundRadius = 30,
    bStopSoundsOnDestroyed = 1
  },
  Physics = {
    bRigidBody = 1,
    bRigidBodyActive = 1,
    bRigidBodyAfterDeath = 1,
    bActivateOnDamage = 0,
    Density = -1,
    Mass = 100,
    bPushableByPlayers = 0,
    bPushableByAI = 0,
    bCanBreakOthers = 0,
    Simulation = {
      max_time_step = 0.02,
      sleep_speed = 0.04,
      damping = 0
    },
    MP = {bDontSyncPos = 0}
  },
  TacticalInfo = {bScannable = 0, LookupName = ""}
}
L0_7634.Editor = {
  Icon = "explosion.bmp",
  IsScalable = false
}
DestroyableObject = L0_7634
L0_7634 = {}
L0_7634.bRigidBody = 0
L0_7634.bRigidBodyActive = 1
L0_7634.bRigidBodyAfterDeath = 0
L0_7634.bActivateOnDamage = 0
L0_7634.Density = -1
L0_7634.Mass = -1
Net.Expose({
  Class = DestroyableObject,
  ClientMethods = {
    ClActivateDelayEffect = {RELIABLE_ORDERED, POST_ATTACH},
    ClExplode = {RELIABLE_ORDERED, POST_ATTACH},
    ClUsedBy = {
      RELIABLE_ORDERED,
      NO_ATTACH,
      ENTITYID
    }
  },
  ServerMethods = {
    SvRequestUsedBy = {
      RELIABLE_UNORDERED,
      NO_ATTACH,
      ENTITYID
    }
  },
  ServerProperties = {}
})
function DestroyableObject.OnLoad(A0_7635, A1_7636)
  A0_7635.bTemporaryUsable = A1_7636.bTemporaryUsable
  A0_7635.shooterId = A1_7636.shooterId
  A0_7635.health = A1_7636.health
  A0_7635.exploded = A1_7636.exploded
  A0_7635.rigidBodySlot = A1_7636.rigidBodySlot
  A0_7635.isRigidBody = A1_7636.isRigidBody
  A0_7635.currentSlot = A1_7636.currentSlot
  A0_7635.LastHit = A1_7636.LastHit
  if (A1_7636.FXSlot or 0) <= 0 then
    if 0 < (A0_7635.FXSlot or 0) then
      A0_7635:DeleteParticleEmitter(A0_7635.FXSlot)
      A0_7635:RemoveEffect()
    end
  end
  A0_7635.FXSlot = A1_7636.FXSlot
  A0_7635.dead = A1_7636.dead
  A0_7635:SetCurrentSlot(A0_7635.currentSlot)
  if A0_7635.dead then
    if A0_7635.Properties.Physics.bRigidBodyAfterDeath == 1 then
      A0_7635.Properties.Physics.bRigidBody = 1
      A0_7635:PhysicalizeThis(A0_7635.currentSlot)
      A0_7635.Properties.Physics.bRigidBody = A0_7635.Properties.Physics.bRigidBody
    end
  else
    A0_7635:PhysicalizeThis(A0_7635.currentSlot)
  end
  if A0_7635:GetState() ~= A1_7636.state then
    A0_7635:GotoState(A1_7636.state)
  end
end
function DestroyableObject.OnSave(A0_7637, A1_7638)
  A1_7638.bTemporaryUsable = A0_7637.bTemporaryUsable
  A1_7638.shooterId = A0_7637.shooterId
  A1_7638.health = A0_7637.health
  A1_7638.FXSlot = A0_7637.FXSlot
  A1_7638.dead = A0_7637.dead
  A1_7638.exploded = A0_7637.exploded
  A1_7638.rigidBodySlot = A0_7637.rigidBodySlot
  A1_7638.isRigidBody = A0_7637.isRigidBody
  A1_7638.currentSlot = A0_7637.currentSlot
  A1_7638.LastHit = A0_7637.LastHit
  A1_7638.state = A0_7637:GetState()
end
function DestroyableObject.CommonInit(A0_7639)
  A0_7639.bReloadGeoms = 1
  A0_7639.bTemporaryUsable = 0
  if not A0_7639.bInitialized then
    A0_7639.LastHit = {
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
    }
    A0_7639:Reload()
    A0_7639.bInitialized = 1
    A0_7639:GotoState("Alive")
  end
  g_gameRules.game:MakeMovementVisibleToAI("DestroyableObject")
end
function DestroyableObject.Server.OnInit(A0_7640)
  A0_7640:CommonInit()
end
function DestroyableObject.Client.OnInit(A0_7641)
  A0_7641:CommonInit()
  A0_7641:CacheResources()
end
function DestroyableObject.CacheResources(A0_7642)
  A0_7642:PreLoadParticleEffect(A0_7642.Properties.Explosion.ParticleEffect)
  A0_7642:PreLoadParticleEffect(A0_7642.Properties.Explosion.DelayEffect.ParticleEffect)
end
function DestroyableObject.OnPropertyChange(A0_7643)
  A0_7643.bReloadGeoms = 1
  A0_7643:Reload()
end
function DestroyableObject.OnShutDown(A0_7644)
  local L1_7645
end
function DestroyableObject.OnReset(A0_7646)
  A0_7646:RemoveEffect()
  if A0_7646.timerShooterId then
  end
  A0_7646:ResetTacticalInfo()
  if A0_7646:GetState() ~= "Alive" then
    A0_7646:Reload()
  end
  A0_7646:AwakePhysics(0)
end
function DestroyableObject.RemoveEffect(A0_7647)
  if A0_7647.FXSlot then
    A0_7647:FreeSlot(A0_7647.FXSlot)
    A0_7647.FXSlot = -1
  end
end
function DestroyableObject.ResetTacticalInfo(A0_7648)
  A0_7648.bScannable = A0_7648.Properties.TacticalInfo.bScannable
  if A0_7648.bScannable == 1 then
    Game.AddTacticalEntity(A0_7648.id, eTacticalEntity_Hazard)
  else
    Game.RemoveTacticalEntity(A0_7648.id, eTacticalEntity_Hazard)
  end
end
function DestroyableObject.Reload(A0_7649)
  A0_7649:ResetTacticalInfo()
  A0_7649:ResetOnUsed()
  A0_7649.bTemporaryUsable = A0_7649.Properties.bUsable
  A0_7649.shooterId = NULL_ENTITY
  A0_7649.health = A0_7649.Properties.Health.MaxHealth
  A0_7649.dead = nil
  A0_7649.exploded = nil
  A0_7649.rigidBodySlot = nil
  A0_7649.isRigidBody = nil
  if A0_7649.bReloadGeoms == 1 then
    if not EmptyString(A0_7649.Properties.object_Model) then
      A0_7649:LoadObject(3, A0_7649.Properties.object_Model)
      A0_7649:DrawSlot(3, 0)
      A0_7649:LoadSubObject(0, A0_7649.Properties.object_Model, A0_7649.Properties.ModelSubObject)
    end
    if not EmptyString(A0_7649.Properties.object_ModelDestroyed) then
      A0_7649:LoadSubObject(1, A0_7649.Properties.object_ModelDestroyed, A0_7649.Properties.DestroyedSubObject)
    elseif not EmptyString(A0_7649.Properties.DestroyedSubObject) then
      A0_7649:LoadSubObject(1, A0_7649.Properties.object_Model, A0_7649.Properties.DestroyedSubObject)
    end
    A0_7649:SetCurrentSlot(0)
    A0_7649:PhysicalizeThis(0)
  end
  A0_7649.bReloadGeoms = 0
  A0_7649:GotoState("Alive")
  if A0_7649.Properties.bAutoGenAIHidePts == 1 then
    A0_7649:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 0)
  else
    A0_7649:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 2)
  end
  A0_7649.radius = 0.15 + math.max(A0_7649:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).x - A0_7649:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).x, math.max(A0_7649:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).y - A0_7649:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).y, A0_7649:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).z - A0_7649:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).z))
  A0_7649.center = {
    x = (A0_7649:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).x + A0_7649:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).x) * 0.5,
    y = (A0_7649:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).y + A0_7649:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).y) * 0.5,
    z = (A0_7649:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).z + A0_7649:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).z) * 0.5
  }
end
function DestroyableObject.PhysicalizeThis(A0_7650, A1_7651)
  local L2_7652
  L2_7652 = A0_7650.Properties
  L2_7652 = L2_7652.Physics
  L2_7652 = L2_7652.MP
  L2_7652 = L2_7652.bDontSyncPos
  if L2_7652 == 1 then
    L2_7652 = CryAction
    L2_7652 = L2_7652.DontSyncPhysics
    L2_7652(A0_7650.id)
  end
  L2_7652 = A0_7650.Properties
  L2_7652 = L2_7652.Physics
  if CryAction.IsImmersivenessEnabled() == 0 then
    L2_7652 = _UPVALUE0_
  end
  EntityCommon.PhysicalizeRigid(A0_7650, A1_7651, L2_7652, A0_7650.bRigidBodyActive)
end
function DestroyableObject.SetCurrentSlot(A0_7653, A1_7654)
  if A1_7654 == 0 then
    A0_7653:DrawSlot(0, 1)
    A0_7653:DrawSlot(1, 0)
  else
    A0_7653:DrawSlot(0, 0)
    A0_7653:DrawSlot(1, 1)
  end
  A0_7653.currentSlot = A1_7654
end
function DestroyableObject.Explode(A0_7655)
  local L1_7656, L2_7657, L3_7658, L4_7659, L5_7660, L6_7661, L7_7662, L8_7663, L9_7664, L10_7665, L11_7666, L12_7667, L13_7668
  L1_7656 = CryAction
  L1_7656 = L1_7656.IsImmersivenessEnabled
  L1_7656 = L1_7656()
  if L1_7656 == 0 then
    return
  end
  L1_7656 = CryAction
  L1_7656 = L1_7656.IsClient
  L1_7656 = L1_7656()
  if not L1_7656 then
    L1_7656 = A0_7655.allClients
    L2_7657 = L1_7656
    L1_7656 = L1_7656.ClExplode
    L1_7656(L2_7657)
  end
  L1_7656 = A0_7655.Properties
  A0_7655.bTemporaryUsable = 0
  A0_7655.bReloadGeoms = 1
  L2_7657 = A0_7655.LastHit
  L2_7657 = L2_7657.pos
  L3_7658 = A0_7655.LastHit
  L3_7658 = L3_7658.impulse
  L4_7659 = CryAction
  L4_7659 = L4_7659.IsClient
  L4_7659 = L4_7659()
  if L4_7659 then
    L5_7660 = A0_7655
    L4_7659 = A0_7655.BreakToPieces
    L6_7661 = 0
    L7_7662 = 0
    L8_7663 = L1_7656.Breakage
    L8_7663 = L8_7663.fExplodeImpulse
    L9_7664 = L2_7657
    L10_7665 = L3_7658
    L11_7666 = L1_7656.Breakage
    L11_7666 = L11_7666.fLifeTime
    L12_7667 = L1_7656.Breakage
    L12_7667 = L12_7667.bSurfaceEffects
    L4_7659(L5_7660, L6_7661, L7_7662, L8_7663, L9_7664, L10_7665, L11_7666, L12_7667)
  end
  L4_7659 = AI
  L4_7659 = L4_7659.BreakEvent
  L5_7660 = A0_7655.id
  L6_7661 = A0_7655.center
  L7_7662 = A0_7655.radius
  L4_7659(L5_7660, L6_7661, L7_7662)
  L5_7660 = A0_7655
  L4_7659 = A0_7655.RemoveDecals
  L4_7659(L5_7660)
  L4_7659 = false
  L6_7661 = A0_7655
  L5_7660 = A0_7655.SetCurrentSlot
  L7_7662 = 1
  L5_7660(L6_7661, L7_7662)
  L5_7660 = L1_7656.object_ModelDestroyed
  if L5_7660 == "" then
    L5_7660 = L1_7656.DestroyedSubObject
  else
    if L5_7660 ~= "" then
      L5_7660 = L1_7656.Physics
      L5_7660 = L5_7660.bRigidBodyAfterDeath
      if L5_7660 == 1 then
        L5_7660 = L1_7656.Physics
        L5_7660 = L5_7660.bRigidBody
        L6_7661 = L1_7656.Physics
        L6_7661.bRigidBody = 1
        L7_7662 = A0_7655
        L6_7661 = A0_7655.PhysicalizeThis
        L8_7663 = 1
        L6_7661(L7_7662, L8_7663)
        L6_7661 = L1_7656.Physics
        L6_7661.bRigidBody = L5_7660
        L7_7662 = A0_7655
        L6_7661 = A0_7655.AwakePhysics
        L8_7663 = 1
        L6_7661(L7_7662, L8_7663)
      else
        L6_7661 = A0_7655
        L5_7660 = A0_7655.PhysicalizeThis
        L7_7662 = 1
        L5_7660(L6_7661, L7_7662)
        L6_7661 = A0_7655
        L5_7660 = A0_7655.AwakePhysics
        L7_7662 = 1
        L5_7660(L6_7661, L7_7662)
      end
  end
  else
    L4_7659 = true
  end
  L5_7660 = CryAction
  L5_7660 = L5_7660.IsServer
  L5_7660 = L5_7660()
  if L5_7660 then
    L5_7660 = NumberToBool
    L6_7661 = A0_7655.Properties
    L6_7661 = L6_7661.bExplode
    L5_7660 = L5_7660(L6_7661)
    if L5_7660 then
      L5_7660 = A0_7655.Properties
      L5_7660 = L5_7660.Explosion
      L7_7662 = A0_7655
      L6_7661 = A0_7655.GetWorldPos
      L8_7663 = g_Vectors
      L8_7663 = L8_7663.temp_v1
      L6_7661 = L6_7661(L7_7662, L8_7663)
      L8_7663 = A0_7655
      L7_7662 = A0_7655.GetDirectionVector
      L9_7664 = 0
      L10_7665 = g_Vectors
      L10_7665 = L10_7665.temp_v2
      L7_7662 = L7_7662(L8_7663, L9_7664, L10_7665)
      L9_7664 = A0_7655
      L8_7663 = A0_7655.GetDirectionVector
      L10_7665 = 1
      L11_7666 = g_Vectors
      L11_7666 = L11_7666.temp_v3
      L8_7663 = L8_7663(L9_7664, L10_7665, L11_7666)
      L10_7665 = A0_7655
      L9_7664 = A0_7655.GetDirectionVector
      L11_7666 = 2
      L12_7667 = g_Vectors
      L12_7667 = L12_7667.temp_v4
      L9_7664 = L9_7664(L10_7665, L11_7666, L12_7667)
      L10_7665 = g_Vectors
      L10_7665 = L10_7665.temp_v5
      L11_7666 = CopyVector
      L12_7667 = L10_7665
      L13_7668 = L5_7660.vOffset
      L11_7666(L12_7667, L13_7668)
      L11_7666 = g_Vectors
      L11_7666 = L11_7666.temp_v6
      L12_7667 = CopyVector
      L13_7668 = L11_7666
      L12_7667(L13_7668, L5_7660.Direction)
      L12_7667 = L6_7661.x
      L13_7668 = L7_7662.x
      L13_7668 = L13_7668 * L10_7665.x
      L12_7667 = L12_7667 + L13_7668
      L13_7668 = L8_7663.x
      L13_7668 = L13_7668 * L10_7665.y
      L12_7667 = L12_7667 + L13_7668
      L13_7668 = L9_7664.x
      L13_7668 = L13_7668 * L10_7665.z
      L12_7667 = L12_7667 + L13_7668
      L6_7661.x = L12_7667
      L12_7667 = L6_7661.y
      L13_7668 = L7_7662.y
      L13_7668 = L13_7668 * L10_7665.x
      L12_7667 = L12_7667 + L13_7668
      L13_7668 = L8_7663.y
      L13_7668 = L13_7668 * L10_7665.y
      L12_7667 = L12_7667 + L13_7668
      L13_7668 = L9_7664.y
      L13_7668 = L13_7668 * L10_7665.z
      L12_7667 = L12_7667 + L13_7668
      L6_7661.y = L12_7667
      L12_7667 = L6_7661.z
      L13_7668 = L7_7662.z
      L13_7668 = L13_7668 * L10_7665.x
      L12_7667 = L12_7667 + L13_7668
      L13_7668 = L8_7663.z
      L13_7668 = L13_7668 * L10_7665.y
      L12_7667 = L12_7667 + L13_7668
      L13_7668 = L9_7664.z
      L13_7668 = L13_7668 * L10_7665.z
      L12_7667 = L12_7667 + L13_7668
      L6_7661.z = L12_7667
      L12_7667 = L6_7661
      L13_7668 = g_gameRules
      L13_7668 = L13_7668.game
      L13_7668 = L13_7668.GetHitTypeId
      L13_7668 = L13_7668(L13_7668, "explosion")
      g_gameRules:CreateExplosion(A0_7655.shooterId, A0_7655.id, L5_7660.Damage, L12_7667, L11_7666, L5_7660.Radius, nil, L5_7660.Pressure, L5_7660.HoleSize, L5_7660.ParticleEffect, L5_7660.EffectScale, L5_7660.MinRadius, L5_7660.MinPhysRadius, L5_7660.PhysRadius, L13_7668, L5_7660.SoundRadius)
    end
  end
  L5_7660 = A0_7655.dead
  if L5_7660 ~= true then
  end
  A0_7655.exploded = true
  L5_7660 = BroadcastEvent
  L6_7661 = A0_7655
  L7_7662 = "Explode"
  L5_7660(L6_7661, L7_7662)
  if L4_7659 == true then
    L6_7661 = A0_7655
    L5_7660 = A0_7655.Hide
    L7_7662 = 1
    L5_7660(L6_7661, L7_7662)
  end
end
function DestroyableObject.ActivateDelayEffect(A0_7669)
  local L1_7670
  L1_7670 = A0_7669.Properties
  L1_7670 = L1_7670.Explosion
  if L1_7670.DelayEffect.bHasDelayEffect == 1 and (not A0_7669.FXSlot or A0_7669.FXSlot == -1) and not EmptyString(L1_7670.DelayEffect.ParticleEffect) then
    A0_7669.FXSlot = A0_7669:LoadParticleEffect(-1, L1_7670.DelayEffect.ParticleEffect, L1_7670.DelayEffect.Params)
    if A0_7669.FXSlot then
      A0_7669:SetSlotPos(A0_7669.FXSlot, L1_7670.DelayEffect.vOffset)
      A0_7669:SetSlotAngles(A0_7669.FXSlot, L1_7670.DelayEffect.vRotation)
    end
  end
end
function DestroyableObject.Die(A0_7671, A1_7672)
  local L2_7673
  if A1_7672 then
    L2_7673 = A1_7672.shooterId
    A0_7671.shooterId = L2_7673
  else
    L2_7673 = NULL_ENTITY
    A0_7671.shooterId = L2_7673
  end
  A0_7671.dead = true
  L2_7673 = A0_7671.health
  if L2_7673 > 0 then
    A0_7671.health = 0
  end
  L2_7673 = A0_7671.exploded
  if not L2_7673 then
    L2_7673 = A0_7671.Properties
    L2_7673 = L2_7673.Explosion
    if 0 < L2_7673.Delay and not L2_7673.DelayEffect.bHasDelayEffect == 1 then
      A0_7671:SetTimer(0, L2_7673.Delay * 1000)
    else
      A0_7671:GotoState("Dead")
      if A1_7672 and A1_7672.dir then
        A0_7671:AddImpulse(A1_7672.partId or -1, A1_7672.pos, A1_7672.dir, A1_7672.damage)
      end
    end
  end
end
function DestroyableObject.Server.OnHit(A0_7674, A1_7675)
  local L2_7676, L3_7677, L4_7678, L5_7679
  L2_7676 = CopyVector
  L3_7677 = A0_7674.LastHit
  L3_7677 = L3_7677.pos
  L4_7678 = A1_7675.pos
  L2_7676(L3_7677, L4_7678)
  L2_7676 = CopyVector
  L3_7677 = A0_7674.LastHit
  L3_7677 = L3_7677.impulse
  L4_7678 = A1_7675.dir
  if not L4_7678 then
    L4_7678 = g_Vectors
    L4_7678 = L4_7678.v000
  end
  L2_7676(L3_7677, L4_7678)
  L2_7676 = A0_7674.LastHit
  L2_7676 = L2_7676.impulse
  L3_7677 = A0_7674.LastHit
  L3_7677 = L3_7677.impulse
  L3_7677 = L3_7677.x
  L4_7678 = A1_7675.damage
  L3_7677 = L3_7677 * L4_7678
  L2_7676.x = L3_7677
  L2_7676 = A0_7674.LastHit
  L2_7676 = L2_7676.impulse
  L3_7677 = A0_7674.LastHit
  L3_7677 = L3_7677.impulse
  L3_7677 = L3_7677.y
  L4_7678 = A1_7675.damage
  L3_7677 = L3_7677 * L4_7678
  L2_7676.y = L3_7677
  L2_7676 = A0_7674.LastHit
  L2_7676 = L2_7676.impulse
  L3_7677 = A0_7674.LastHit
  L3_7677 = L3_7677.impulse
  L3_7677 = L3_7677.z
  L4_7678 = A1_7675.damage
  L3_7677 = L3_7677 * L4_7678
  L2_7676.z = L3_7677
  L3_7677 = A0_7674
  L2_7676 = A0_7674.ActivateOutput
  L4_7678 = "HitBy"
  L5_7679 = A1_7675.shooterId
  L2_7676(L3_7677, L4_7678, L5_7679)
  L3_7677 = A0_7674
  L2_7676 = A0_7674.IsInvulnerable
  L2_7676 = L2_7676(L3_7677)
  if L2_7676 then
    L2_7676 = true
    return L2_7676
  end
  L2_7676 = A1_7675.damage
  L3_7677 = A0_7674.Properties
  L3_7677 = L3_7677.Vulnerability
  L4_7678 = A0_7674.Properties
  L4_7678 = L4_7678.DamageMultipliers
  L5_7679 = A1_7675.shooterId
  A0_7674.shooterId = L5_7679
  L5_7679 = true
  if L3_7677.projectileClass ~= "" and L3_7677.projectileClass == A1_7675.projectileClass then
    L5_7679 = true
    L2_7676 = L2_7676 * L4_7678.fProjectileClass
  elseif A1_7675.explosion then
    L5_7679 = NumberToBool(L3_7677.bExplosion)
  elseif A1_7675.type == "collision" then
    L5_7679 = NumberToBool(L3_7677.bCollision)
    L2_7676 = L2_7676 * L4_7678.fCollision
  elseif A1_7675.type == "bullet" then
    L5_7679 = NumberToBool(L3_7677.bBullet)
    L2_7676 = L2_7676 * L4_7678.fBullet
  elseif A1_7675.type == "melee" then
    L5_7679 = NumberToBool(L3_7677.bMelee)
  else
    L5_7679 = NumberToBool(L3_7677.bOther)
  end
  L5_7679 = L5_7679 and L2_7676 > A0_7674.Properties.fDamageTreshold
  if not System.IsMultiplayer() and L5_7679 and NumberToBool(A0_7674.Properties.bPlayerOnly) and A1_7675.shooterId and A1_7675.shooterId ~= g_localActorId then
    L5_7679 = false
  end
  if L5_7679 then
    A0_7674.health = A0_7674.health - L2_7676
    if NumberToBool(A0_7674.Properties.bOnlyAllowPlayerToFullyDestroyObject) and not System.IsMultiplayer() and A1_7675.shooterId ~= g_localActorId and A0_7674.health <= 0 then
      A0_7674.health = 1
    end
    if A0_7674.health <= 0 then
      A0_7674:Die(A1_7675)
    end
    if NumberToBool(A0_7674.Properties.bActivateOnDamage) then
      A0_7674:AwakePhysics(1)
    end
    if A0_7674.Properties.Explosion.DelayEffect.bHasDelayEffect == 1 and (not A0_7674.FXSlot or A0_7674.FXSlot == -1) then
      CopyVector(g_SignalData.point, A0_7674:GetPos())
      AI.FreeSignal(10, "OnExposedToExplosion", A0_7674:GetPos(), A0_7674.Properties.Explosion.Radius, A0_7674.id, g_SignalData)
      A0_7674:SetTimer(0, (A0_7674.Properties.Explosion.Delay + randomF(0, 1.5)) * 1000)
      if CryAction.IsClient() then
        A0_7674:ActivateDelayEffect()
      end
      if CryAction.IsServer() then
        A0_7674.allClients:ClActivateDelayEffect()
      end
    end
  end
  return true
end
function DestroyableObject.CanBeMadeTargetable(A0_7680)
  return A0_7680:GetState() == "Alive"
end
function DestroyableObject.Server.OnTimer(A0_7681, A1_7682, A2_7683)
  if A1_7682 == 0 then
    A0_7681:GotoState("Dead")
  end
end
DestroyableObject.Client.Alive = {
  OnBeginState = function(A0_7684)
    local L1_7685
  end,
  OnPhysicsBreak = function(A0_7686, A1_7687, A2_7688, A3_7689)
    A0_7686:DeactivateTacticalInfo()
  end
}
DestroyableObject.Server.Alive = {
  OnTimer = function(A0_7690, A1_7691, A2_7692)
    if A1_7691 == 0 then
      A0_7690:GotoState("Dead")
    end
  end
}
DestroyableObject.Client.Dead = {
  OnBeginState = function(A0_7693)
    A0_7693:DeactivateTacticalInfo()
    if A0_7693.Properties.Sounds.bStopSoundsOnDestroyed == 1 then
    end
    if not CryAction.IsServer() then
      A0_7693:RemoveEffect()
      A0_7693:Explode()
      A0_7693.dead = true
    end
  end
}
DestroyableObject.Server.Dead = {
  OnBeginState = function(A0_7694)
    A0_7694:RemoveEffect()
    A0_7694:Explode()
    A0_7694.dead = true
  end
}
function DestroyableObject.DeactivateTacticalInfo(A0_7695)
  if A0_7695.bScannable == 1 then
    Game.RemoveTacticalEntity(A0_7695.id, eTacticalEntity_Story)
  end
end
function DestroyableObject.Event_Reset(A0_7696, A1_7697)
  A0_7696:OnReset()
  BroadcastEvent(A0_7696, "Reset")
end
function DestroyableObject.Event_Explode(A0_7698, A1_7699)
  if A0_7698:GetState() == "Dead" then
    return
  end
  if A0_7698.exploded then
    return
  end
  BroadcastEvent(A0_7698, "Explode")
  BroadcastEvent(A0_7698, "Break")
  A0_7698:Die()
end
function DestroyableObject.Base_OnUsed(A0_7700, A1_7701, A2_7702)
  if CryAction.IsServer() then
    A0_7700:ActivateOutput("UsedBy", A1_7701.id)
    A0_7700.allClients:ClUsedBy(A1_7701.id)
  else
    A0_7700.server:SvRequestUsedBy(A1_7701.id)
  end
end
function DestroyableObject.Client.OnPhysicsBreak(A0_7703, A1_7704, A2_7705, A3_7706)
  A0_7703:DeactivateTacticalInfo()
  A0_7703:ActivateOutput("Break", A2_7705 + 1)
end
function DestroyableObject.IsUsable(A0_7707, A1_7708)
  local L3_7709
  if A0_7707.Properties.bUsable == 1 and A0_7707.bTemporaryUsable == 1 then
    L3_7709 = 2
  end
  return L3_7709 or 0
end
function DestroyableObject.GetUsableMessage(A0_7710, A1_7711)
  local L2_7712
  L2_7712 = A0_7710.Properties
  L2_7712 = L2_7712.bUsable
  if L2_7712 == 1 then
    L2_7712 = A0_7710.bTemporaryUsable
    if L2_7712 == 1 then
      L2_7712 = A0_7710.Properties
      L2_7712 = L2_7712.UseMessage
      return L2_7712
    end
  else
    L2_7712 = "@grab_object"
    return L2_7712
  end
end
function DestroyableObject.Event_Hide(A0_7713)
  A0_7713:Hide(1)
  BroadcastEvent(A0_7713, "Hide")
end
function DestroyableObject.Event_UnHide(A0_7714)
  A0_7714:Hide(0)
  BroadcastEvent(A0_7714, "UnHide")
end
DestroyableObject.FlowEvents = {
  Inputs = {
    Explode = {
      DestroyableObject.Event_Explode,
      "bool"
    },
    Reset = {
      DestroyableObject.Event_Reset,
      "bool"
    },
    Used = {
      DestroyableObject.Event_Used,
      "bool"
    },
    EnableUsable = {
      DestroyableObject.Event_EnableUsable,
      "bool"
    },
    DisableUsable = {
      DestroyableObject.Event_DisableUsable,
      "bool"
    },
    Hide = {
      DestroyableObject.Event_Hide,
      "bool"
    },
    UnHide = {
      DestroyableObject.Event_UnHide,
      "bool"
    }
  },
  Outputs = {
    Explode = "bool",
    Reset = "bool",
    Used = "bool",
    EnableUsable = "bool",
    DisableUsable = "bool",
    Hide = "bool",
    UnHide = "bool",
    Break = "int",
    Scanned = "bool",
    HitBy = "entity",
    UsedBy = "entity"
  }
}
function DestroyableObject.HasBeenScanned(A0_7715)
  A0_7715:ActivateOutput("Scanned", true)
end
function DestroyableObject.SavePhysicalState(A0_7716)
  A0_7716.initPos = A0_7716:GetPos()
  A0_7716.initRot = A0_7716:GetWorldAngles()
  A0_7716.initScale = A0_7716:GetScale()
end
function DestroyableObject.RestorePhysicalState(A0_7717)
  if not A0_7717.initPos then
    return
  end
  A0_7717:KillTimer(0)
  if A0_7717:IsHidden() then
    A0_7717:Hide(0)
  end
  A0_7717:RemoveEffect()
  A0_7717.bReloadGeoms = 1
  A0_7717:Reload()
  A0_7717:AwakePhysics(0)
  A0_7717:SetPos(A0_7717.initPos)
  A0_7717:SetWorldAngles(A0_7717.initRot)
  A0_7717:SetScale(A0_7717.initScale)
end
function DestroyableObject.Server.SvRequestUsedBy(A0_7718, A1_7719)
  A0_7718:ActivateOutput("UsedBy", A1_7719)
  A0_7718.allClients:ClUsedBy(A1_7719)
end
function DestroyableObject.Client.ClActivateDelayEffect(A0_7720)
  if not CryAction.IsServer() then
    A0_7720:ActivateDelayEffect()
  end
end
function DestroyableObject.Client.ClExplode(A0_7721)
  if not CryAction.IsServer() then
    A0_7721:Explode()
  end
end
function DestroyableObject.Client.ClUsedBy(A0_7722, A1_7723)
  if not CryAction.IsServer() then
    A0_7722:ActivateOutput("UsedBy", A1_7723)
  end
end
MakeUsable(DestroyableObject)
MakePickable(DestroyableObject)
MakeTargetableByAI(DestroyableObject)
MakeKillable(DestroyableObject)
MakeThrownObjectTargetable(DestroyableObject)
