DestroyableLight = {
  Client = {},
  Server = {},
  States = {"Alive", "Dead"},
  Properties = {
    Model = {
      object_Model = "engine/engineassets/objects/default.cgf",
      SubObject_Name = "",
      object_ModelDestroyed = "",
      SubObject_NameDestroyed = ""
    },
    Damage = {
      bPlayerOnly = 1,
      fHealth = 100,
      fDamageTreshold = 0,
      bExplode = 0
    },
    DamageMultipliers = {fCollision = 1, fBullet = 1},
    Vulnerability = {
      bExplosion = 1,
      bCollision = 1,
      bMelee = 1,
      bBullet = 1,
      bOther = 1
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
    Sound = {
      soundTurnOn = "",
      soundTurnOff = "",
      soundDestroy = "",
      soundIdle = "",
      soundRun = "",
      vOffset = {
        x = 0,
        y = 0,
        z = 0
      },
      fAISoundRadius = 30
    },
    Physics = {
      bRigidBody = 1,
      bRigidBodyActive = 1,
      bRigidBodyAfterDeath = 1,
      bActivateOnDamage = 0,
      Density = -1,
      Mass = -1,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      bCanBreakOthers = 0,
      Simulation = {
        max_time_step = 0.02,
        sleep_speed = 0.04,
        damping = 0
      },
      MP = {bHackDontSyncPos = 0}
    }
  },
  PropertiesInstance = {
    bTurnedOn = 1,
    LightProperties_Base = {
      _nVersion = -1,
      bUseThisLight = 1,
      Radius = 10,
      fAttenuationBulbSize = 0.05,
      Style = {
        nLightStyle = 0,
        fAnimationSpeed = 1,
        nAnimationPhase = 0
      },
      Projector = {
        texture_Texture = "",
        fProjectorFov = 90,
        fProjectorNearPlane = 0
      },
      Color = {
        clrDiffuse = {
          x = 1,
          y = 1,
          z = 1
        },
        fDiffuseMultiplier = 1,
        fSpecularMultiplier = 1
      },
      Options = {
        bAffectsThisAreaOnly = 1,
        bIgnoresVisAreas = 0,
        bAmbient = 0,
        bFakeLight = 0,
        nGlowSubmatId = 0,
        vOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        vDirection = {
          x = 0,
          y = 1,
          z = 0
        }
      },
      Shadows = {
        nCastShadows = 0,
        nCastShadowViewDistRatio = 100,
        bIgnoreGeomCaster = 1,
        fShadowBias = 1,
        fShadowSlopeBias = 1,
        fShadowResolutionScale = 1,
        nShadowMinResPercent = 0,
        fShadowUpdateMinRadius = 10,
        fShadowUpdateRatio = 1
      },
      Shape = {
        bAreaLight = 0,
        fPlaneWidth = 1,
        fPlaneHeight = 1
      }
    },
    LightProperties_Destroyed = {
      _nVersion = -1,
      bUseThisLight = 0,
      Radius = 10,
      fAttenuationBulbSize = 0.05,
      Style = {
        nLightStyle = 0,
        fAnimationSpeed = 1,
        nAnimationPhase = 0
      },
      Projector = {
        texture_Texture = "",
        fProjectorFov = 90,
        fProjectorNearPlane = 0
      },
      Color = {
        clrDiffuse = {
          x = 1,
          y = 1,
          z = 1
        },
        fDiffuseMultiplier = 1,
        fSpecularMultiplier = 1
      },
      Options = {
        bAffectsThisAreaOnly = 1,
        bIgnoresVisAreas = 0,
        bAmbient = 0,
        bFakeLight = 0,
        nGlowSubmatId = 0,
        vOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        vDirection = {
          x = 0,
          y = 1,
          z = 0
        }
      },
      Shadows = {
        nCastShadows = 0,
        bIgnoreGeomCaster = 1,
        fShadowBias = 1,
        fShadowSlopeBias = 1,
        fShadowResolutionScale = 1,
        nShadowMinResPercent = 0,
        fShadowUpdateMinRadius = 10,
        fShadowUpdateRatio = 1
      },
      Shape = {
        bAreaLight = 0,
        fPlaneWidth = 1,
        fPlaneHeight = 1
      }
    }
  },
  Editor = {IsScalable = false},
  _LightTable = {},
  lightSlot = -1,
  lightOn = true,
  materialIsCloned = false
}
function DestroyableLight.OnLoad(A0_5788, A1_5789)
  if A0_5788.lightSlot then
    A0_5788:FreeSlot(A0_5788.lightSlot)
  end
  A0_5788.bUsable = A1_5789.bUsable
  A0_5788.shooterId = A1_5789.shooterId
  A0_5788.health = A1_5789.health
  A0_5788.dead = A1_5789.dead
  A0_5788.FXSlot = A1_5789.FXSlot
  A0_5788.exploded = A1_5789.exploded
  A0_5788.rigidBodySlot = A1_5789.rigidBodySlot
  A0_5788.isRigidBody = A1_5789.isRigidBody
  A0_5788.currentSlot = A1_5789.currentSlot
  A0_5788.LastHit = A1_5789.LastHit
  A0_5788.lightSlot = A1_5789.lightSlot
  A0_5788.lightOn = A1_5789.lightOn
  A0_5788.origGlowValue = A1_5789.origGlowValue
  A0_5788.materialIsCloned = A1_5789.materialIsCloned
  A0_5788:SetCurrentSlot(A0_5788.currentSlot)
  if A0_5788.dead then
    if A0_5788.Properties.Physics.bRigidBodyAfterDeath == 1 then
      A0_5788.Properties.Physics.bRigidBody = 1
      A0_5788:PhysicalizeThis(A0_5788.currentSlot)
      A0_5788.Properties.Physics.bRigidBody = A0_5788.Properties.Physics.bRigidBody
    end
  else
    A0_5788:PhysicalizeThis(A0_5788.currentSlot)
  end
  if A0_5788:GetState() ~= A1_5789.state then
    A0_5788:GotoState(A1_5789.state)
  end
  A0_5788.runSoundId = 0
  A0_5788.idleSoundId = 0
  A0_5788:ShowCorrectLight()
end
function DestroyableLight.OnSave(A0_5790, A1_5791)
  A1_5791.bUsable = A0_5790.bUsable
  A1_5791.shooterId = A0_5790.shooterId
  A1_5791.health = A0_5790.health
  A1_5791.FXSlot = A0_5790.FXSlot
  A1_5791.dead = A0_5790.dead
  A1_5791.exploded = A0_5790.exploded
  A1_5791.rigidBodySlot = A0_5790.rigidBodySlot
  A1_5791.isRigidBody = A0_5790.isRigidBody
  A1_5791.currentSlot = A0_5790.currentSlot
  A1_5791.LastHit = A0_5790.LastHit
  A1_5791.state = A0_5790:GetState()
  A1_5791.lightSlot = A0_5790.lightSlot
  A1_5791.lightOn = A0_5790.lightOn
  A1_5791.origGlowValue = A0_5790.origGlowValue
  A1_5791.materialIsCloned = A0_5790.materialIsCloned
end
function DestroyableLight.CommonInit(A0_5792)
  A0_5792.bReloadGeoms = 1
  A0_5792.bUsable = A0_5792.Properties.bUsable
  A0_5792.lightOn = A0_5792.PropertiesInstance.bTurnedOn == 1
  if not A0_5792.bInitialized then
    A0_5792.LastHit = {
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
    A0_5792:Reload()
    A0_5792.bInitialized = 1
    A0_5792:GotoState("Alive")
  end
end
function DestroyableLight.Server.OnInit(A0_5793)
  A0_5793:CommonInit()
end
function DestroyableLight.Client.OnInit(A0_5794)
  A0_5794:CommonInit()
  A0_5794:ShowCorrectLight()
  A0_5794:CacheResources("DestroyableLight.lua")
end
function DestroyableLight.CacheResources(A0_5795, A1_5796)
  local L2_5797
  L2_5797 = 0
  Game.CacheResource(A1_5796, A0_5795.PropertiesInstance.LightProperties_Base.Projector.texture_Texture, eGameCacheResourceType_Texture, L2_5797)
  L2_5797 = 0
  Game.CacheResource(A1_5796, A0_5795.PropertiesInstance.LightProperties_Destroyed.Projector.texture_Texture, eGameCacheResourceType_Texture, L2_5797)
  A0_5795:PreLoadParticleEffect(A0_5795.Properties.Explosion.ParticleEffect)
  A0_5795:PreLoadParticleEffect(A0_5795.Properties.Explosion.DelayEffect.ParticleEffect)
end
function DestroyableLight.OnPropertyChange(A0_5798)
  A0_5798.bReloadGeoms = 1
  A0_5798:Reload()
  if A0_5798.PropertiesInstance.LightProperties_Base.Options.bAffectsThisAreaOnly then
    A0_5798:UpdateLightClipBounds(A0_5798.lightSlot)
  end
  A0_5798:StopIdleSound()
  A0_5798:StopRunSound()
end
function DestroyableLight.OnShutDown(A0_5799)
  local L1_5800
end
function DestroyableLight.OnReset(A0_5801)
  A0_5801:RemoveEffect()
  if A0_5801:GetState() ~= "Alive" then
    A0_5801:Reload()
  else
    A0_5801.lightOn = A0_5801.PropertiesInstance.bTurnedOn == 1
    A0_5801:ShowCorrectLight()
  end
  A0_5801:AwakePhysics(0)
end
function DestroyableLight.RemoveEffect(A0_5802)
  if A0_5802.FXSlot then
    A0_5802:FreeSlot(A0_5802.FXSlot)
    A0_5802.FXSlot = -1
  end
end
function DestroyableLight.Reload(A0_5803)
  A0_5803:ResetOnUsed()
  A0_5803.bUsable = A0_5803.Properties.bUsable
  A0_5803.shooterId = NULL_ENTITY
  A0_5803.health = A0_5803.Properties.Damage.fHealth
  A0_5803.dead = nil
  A0_5803.exploded = nil
  A0_5803.rigidBodySlot = nil
  A0_5803.isRigidBody = nil
  if A0_5803.bReloadGeoms == 1 then
    if not EmptyString(A0_5803.Properties.Model.object_Model) then
      A0_5803:LoadObject(3, A0_5803.Properties.Model.object_Model)
      A0_5803:DrawSlot(3, 0)
      A0_5803:LoadSubObject(0, A0_5803.Properties.Model.object_Model, A0_5803.Properties.Model.SubObject_Name)
    end
    if not EmptyString(A0_5803.Properties.Model.object_ModelDestroyed) then
      A0_5803:LoadSubObject(1, A0_5803.Properties.Model.object_ModelDestroyed, A0_5803.Properties.Model.SubObject_NameDestroyed)
    elseif not EmptyString(A0_5803.Properties.Model.SubObject_NameDestroyed) then
      A0_5803:LoadSubObject(1, A0_5803.Properties.Model.object_Model, A0_5803.Properties.Model.SubObject_NameDestroyed)
    end
    A0_5803:SetCurrentSlot(0)
    A0_5803:PhysicalizeThis(0)
    if not A0_5803.origGlowValue or A0_5803.lightOn then
      A0_5803.origGlowValue = A0_5803:GetMaterialFloat(0, A0_5803.PropertiesInstance.LightProperties_Base.Options.nGlowSubmatId, MaterialFloatParams.emissive_intensity)
    end
  end
  A0_5803.bReloadGeoms = 0
  A0_5803:GotoState("Alive")
  A0_5803.lightOn = A0_5803.PropertiesInstance.bTurnedOn == 1
  if A0_5803.idleSoundId == nil then
    A0_5803.idleSoundId = 0
  end
  if A0_5803.runSoundId == nil then
    A0_5803.runSoundId = 0
  end
  A0_5803:ShowCorrectLight()
end
function DestroyableLight.PhysicalizeThis(A0_5804, A1_5805)
  local L2_5806
  L2_5806 = A0_5804.Properties
  L2_5806 = L2_5806.Physics
  L2_5806 = L2_5806.MP
  L2_5806 = L2_5806.bHackDontSyncPos
  if L2_5806 == 1 then
    L2_5806 = CryAction
    L2_5806 = L2_5806.DontSyncPhysics
    L2_5806(A0_5804.id)
  end
  L2_5806 = A0_5804.Properties
  L2_5806 = L2_5806.Physics
  EntityCommon.PhysicalizeRigid(A0_5804, A1_5805, L2_5806, A0_5804.bRigidBodyActive)
end
function DestroyableLight.SetCurrentSlot(A0_5807, A1_5808)
  if A1_5808 == 0 then
    A0_5807:DrawSlot(0, 1)
    A0_5807:DrawSlot(1, 0)
  else
    A0_5807:DrawSlot(0, 0)
    A0_5807:DrawSlot(1, 1)
  end
  A0_5807.currentSlot = A1_5808
end
function DestroyableLight.Explode(A0_5809)
  local L1_5810, L2_5811, L3_5812, L4_5813, L5_5814, L6_5815, L7_5816, L8_5817, L9_5818, L10_5819, L11_5820, L12_5821, L13_5822, L14_5823, L15_5824
  L1_5810 = A0_5809.Properties
  A0_5809.bUsable = 0
  A0_5809.bReloadGeoms = 1
  A0_5809.lightOn = false
  L2_5811 = A0_5809.LastHit
  L2_5811 = L2_5811.pos
  L3_5812 = A0_5809.LastHit
  L3_5812 = L3_5812.impulse
  L5_5814 = A0_5809
  L4_5813 = A0_5809.BreakToPieces
  L6_5815 = 0
  L7_5816 = 0
  L8_5817 = L1_5810.Breakage
  L8_5817 = L8_5817.fExplodeImpulse
  L9_5818 = L2_5811
  L10_5819 = L3_5812
  L11_5820 = L1_5810.Breakage
  L11_5820 = L11_5820.fLifeTime
  L12_5821 = L1_5810.Breakage
  L12_5821 = L12_5821.bSurfaceEffects
  L4_5813(L5_5814, L6_5815, L7_5816, L8_5817, L9_5818, L10_5819, L11_5820, L12_5821)
  L5_5814 = A0_5809
  L4_5813 = A0_5809.RemoveDecals
  L4_5813(L5_5814)
  L4_5813 = false
  L6_5815 = A0_5809
  L5_5814 = A0_5809.SetCurrentSlot
  L7_5816 = 1
  L5_5814(L6_5815, L7_5816)
  L5_5814 = L1_5810.Model
  L5_5814 = L5_5814.object_ModelDestroyed
  if L5_5814 == "" then
    L5_5814 = L1_5810.Model
    L5_5814 = L5_5814.SubObject_NameDestroyed
  else
    if L5_5814 ~= "" then
      L5_5814 = L1_5810.Physics
      L5_5814 = L5_5814.bRigidBodyAfterDeath
      if L5_5814 == 1 then
        L5_5814 = L1_5810.Physics
        L5_5814 = L5_5814.bRigidBody
        L6_5815 = L1_5810.Physics
        L6_5815.bRigidBody = 1
        L7_5816 = A0_5809
        L6_5815 = A0_5809.PhysicalizeThis
        L8_5817 = 1
        L6_5815(L7_5816, L8_5817)
        L6_5815 = L1_5810.Physics
        L6_5815.bRigidBody = L5_5814
        L7_5816 = A0_5809
        L6_5815 = A0_5809.AwakePhysics
        L8_5817 = 1
        L6_5815(L7_5816, L8_5817)
      else
        L6_5815 = A0_5809
        L5_5814 = A0_5809.PhysicalizeThis
        L7_5816 = 1
        L5_5814(L6_5815, L7_5816)
        L6_5815 = A0_5809
        L5_5814 = A0_5809.AwakePhysics
        L7_5816 = 1
        L5_5814(L6_5815, L7_5816)
      end
  end
  else
    L4_5813 = true
  end
  L5_5814 = NumberToBool
  L6_5815 = A0_5809.Properties
  L6_5815 = L6_5815.Damage
  L6_5815 = L6_5815.bExplode
  L5_5814 = L5_5814(L6_5815)
  if L5_5814 then
    L5_5814 = A0_5809.Properties
    L5_5814 = L5_5814.Explosion
    L7_5816 = A0_5809
    L6_5815 = A0_5809.GetWorldPos
    L6_5815 = L6_5815(L7_5816)
    L8_5817 = A0_5809
    L7_5816 = A0_5809.GetDirectionVector
    L9_5818 = 0
    L7_5816 = L7_5816(L8_5817, L9_5818)
    L9_5818 = A0_5809
    L8_5817 = A0_5809.GetDirectionVector
    L10_5819 = 1
    L8_5817 = L8_5817(L9_5818, L10_5819)
    L10_5819 = A0_5809
    L9_5818 = A0_5809.GetDirectionVector
    L11_5820 = 2
    L9_5818 = L9_5818(L10_5819, L11_5820)
    L10_5819 = {}
    L10_5819.x = 0
    L10_5819.y = 0
    L10_5819.z = 0
    L11_5820 = CopyVector
    L12_5821 = L10_5819
    L13_5822 = L5_5814.vOffset
    L11_5820(L12_5821, L13_5822)
    L11_5820 = L6_5815.x
    L12_5821 = L7_5816.x
    L13_5822 = L10_5819.x
    L12_5821 = L12_5821 * L13_5822
    L11_5820 = L11_5820 + L12_5821
    L12_5821 = L8_5817.x
    L13_5822 = L10_5819.y
    L12_5821 = L12_5821 * L13_5822
    L11_5820 = L11_5820 + L12_5821
    L12_5821 = L9_5818.x
    L13_5822 = L10_5819.z
    L12_5821 = L12_5821 * L13_5822
    L11_5820 = L11_5820 + L12_5821
    L6_5815.x = L11_5820
    L11_5820 = L6_5815.y
    L12_5821 = L7_5816.y
    L13_5822 = L10_5819.x
    L12_5821 = L12_5821 * L13_5822
    L11_5820 = L11_5820 + L12_5821
    L12_5821 = L8_5817.y
    L13_5822 = L10_5819.y
    L12_5821 = L12_5821 * L13_5822
    L11_5820 = L11_5820 + L12_5821
    L12_5821 = L9_5818.y
    L13_5822 = L10_5819.z
    L12_5821 = L12_5821 * L13_5822
    L11_5820 = L11_5820 + L12_5821
    L6_5815.y = L11_5820
    L11_5820 = L6_5815.z
    L12_5821 = L7_5816.z
    L13_5822 = L10_5819.x
    L12_5821 = L12_5821 * L13_5822
    L11_5820 = L11_5820 + L12_5821
    L12_5821 = L8_5817.z
    L13_5822 = L10_5819.y
    L12_5821 = L12_5821 * L13_5822
    L11_5820 = L11_5820 + L12_5821
    L12_5821 = L9_5818.z
    L13_5822 = L10_5819.z
    L12_5821 = L12_5821 * L13_5822
    L11_5820 = L11_5820 + L12_5821
    L6_5815.z = L11_5820
    L11_5820 = L6_5815
    L12_5821 = g_Vectors
    L12_5821 = L12_5821.temp_v1
    L13_5822 = g_Vectors
    L13_5822 = L13_5822.temp_v2
    L14_5823 = CopyVector
    L15_5824 = L13_5822
    L14_5823(L15_5824, L5_5814.Direction)
    L14_5823 = L13_5822.x
    if L14_5823 == 0 then
      L14_5823 = L13_5822.y
      if L14_5823 == 0 then
        L14_5823 = L13_5822.z
        if L14_5823 == 0 then
          L13_5822.y = 1
        end
      end
    end
    L14_5823 = L7_5816.x
    L15_5824 = L13_5822.x
    L14_5823 = L14_5823 * L15_5824
    L15_5824 = L8_5817.x
    L15_5824 = L15_5824 * L13_5822.y
    L14_5823 = L14_5823 + L15_5824
    L15_5824 = L9_5818.x
    L15_5824 = L15_5824 * L13_5822.z
    L14_5823 = L14_5823 + L15_5824
    L12_5821.x = L14_5823
    L14_5823 = L7_5816.y
    L15_5824 = L13_5822.x
    L14_5823 = L14_5823 * L15_5824
    L15_5824 = L8_5817.y
    L15_5824 = L15_5824 * L13_5822.y
    L14_5823 = L14_5823 + L15_5824
    L15_5824 = L9_5818.y
    L15_5824 = L15_5824 * L13_5822.z
    L14_5823 = L14_5823 + L15_5824
    L12_5821.y = L14_5823
    L14_5823 = L7_5816.z
    L15_5824 = L13_5822.x
    L14_5823 = L14_5823 * L15_5824
    L15_5824 = L8_5817.z
    L15_5824 = L15_5824 * L13_5822.y
    L14_5823 = L14_5823 + L15_5824
    L15_5824 = L9_5818.z
    L15_5824 = L15_5824 * L13_5822.z
    L14_5823 = L14_5823 + L15_5824
    L12_5821.z = L14_5823
    L14_5823 = EmptyString
    L15_5824 = L5_5814.ParticleEffect
    L14_5823 = L14_5823(L15_5824)
    if not L14_5823 then
      L14_5823 = {}
      L15_5824 = L5_5814.EffectScale
      L14_5823.Scale = L15_5824
      L15_5824 = A0_5809.LoadParticleEffect
      L15_5824 = L15_5824(A0_5809, -1, L5_5814.ParticleEffect, L14_5823)
      A0_5809:SetSlotPosAndDir(L15_5824, L5_5814.vOffset, L13_5822)
    end
    L14_5823 = g_gameRules
    L15_5824 = L14_5823
    L14_5823 = L14_5823.CreateExplosion
    L14_5823(L15_5824, A0_5809.shooterId, A0_5809.id, L5_5814.Damage, L11_5820, L12_5821, L5_5814.Radius, nil, L5_5814.Pressure, L5_5814.HoleSize, nil, nil, L5_5814.MinRadius, L5_5814.MinPhysRadius, L5_5814.PhysRadius)
  end
  A0_5809.exploded = true
  L5_5814 = A0_5809.Properties
  L5_5814 = L5_5814.Sound
  L5_5814 = L5_5814.fAISoundRadius
  if L5_5814 > 0 then
    L6_5815 = A0_5809.shooterId
    if L6_5815 then
      L6_5815 = AI
      L6_5815 = L6_5815.SoundEvent
      L8_5817 = A0_5809
      L7_5816 = A0_5809.GetWorldPos
      L7_5816 = L7_5816(L8_5817)
      L8_5817 = L5_5814
      L9_5818 = AISOUND_EXPLOSION
      L10_5819 = A0_5809.shooterId
      L6_5815(L7_5816, L8_5817, L9_5818, L10_5819)
    else
      L6_5815 = Log
      L7_5816 = "AI.SoundEvent invalid parameter self.shooterId"
      L6_5815(L7_5816)
    end
  end
  L6_5815 = BroadcastEvent
  L7_5816 = A0_5809
  L8_5817 = "Explode"
  L6_5815(L7_5816, L8_5817)
  if L4_5813 == true then
    L7_5816 = A0_5809
    L6_5815 = A0_5809.Hide
    L8_5817 = 1
    L6_5815(L7_5816, L8_5817)
  end
end
function DestroyableLight.Die(A0_5825, A1_5826)
  local L2_5827
  A0_5825.shooterId = A1_5826
  A0_5825.dead = true
  L2_5827 = A0_5825.health
  if L2_5827 > 0 then
    A0_5825.health = 0
  end
  L2_5827 = A0_5825.exploded
  if not L2_5827 then
    L2_5827 = A0_5825.Properties
    L2_5827 = L2_5827.Explosion
    if 0 < L2_5827.Delay and not L2_5827.DelayEffect.bHasDelayEffect == 1 then
      A0_5825:SetTimer(0, L2_5827.Delay * 1000)
    else
      A0_5825:GotoState("Dead")
    end
  end
end
function DestroyableLight.IsDead(A0_5828)
  local L1_5829
  L1_5829 = A0_5828.health
  L1_5829 = L1_5829 <= 0 or L1_5829 == true
  return L1_5829
end
function DestroyableLight.GetHealth(A0_5830)
  local L1_5831
  L1_5831 = A0_5830.health
  return L1_5831
end
function DestroyableLight.Server.OnHit(A0_5832, A1_5833)
  local L2_5834, L3_5835, L4_5836, L5_5837
  L2_5834 = A1_5833.dir
  if L2_5834 then
    L3_5835 = A0_5832
    L2_5834 = A0_5832.AddImpulse
    L4_5836 = A1_5833.partId
    L4_5836 = L4_5836 or -1
    L5_5837 = A1_5833.pos
    L2_5834(L3_5835, L4_5836, L5_5837, A1_5833.dir, A1_5833.damage, 1)
  end
  L2_5834 = CopyVector
  L3_5835 = A0_5832.LastHit
  L3_5835 = L3_5835.pos
  L4_5836 = A1_5833.pos
  L2_5834(L3_5835, L4_5836)
  L2_5834 = CopyVector
  L3_5835 = A0_5832.LastHit
  L3_5835 = L3_5835.impulse
  L4_5836 = A1_5833.dir
  if not L4_5836 then
    L4_5836 = g_Vectors
    L4_5836 = L4_5836.v000
  end
  L2_5834(L3_5835, L4_5836)
  L2_5834 = A0_5832.LastHit
  L2_5834 = L2_5834.impulse
  L3_5835 = A0_5832.LastHit
  L3_5835 = L3_5835.impulse
  L3_5835 = L3_5835.x
  L4_5836 = A1_5833.damage
  L3_5835 = L3_5835 * L4_5836
  L2_5834.x = L3_5835
  L2_5834 = A0_5832.LastHit
  L2_5834 = L2_5834.impulse
  L3_5835 = A0_5832.LastHit
  L3_5835 = L3_5835.impulse
  L3_5835 = L3_5835.y
  L4_5836 = A1_5833.damage
  L3_5835 = L3_5835 * L4_5836
  L2_5834.y = L3_5835
  L2_5834 = A0_5832.LastHit
  L2_5834 = L2_5834.impulse
  L3_5835 = A0_5832.LastHit
  L3_5835 = L3_5835.impulse
  L3_5835 = L3_5835.z
  L4_5836 = A1_5833.damage
  L3_5835 = L3_5835 * L4_5836
  L2_5834.z = L3_5835
  L2_5834 = A1_5833.damage
  L3_5835 = A0_5832.Properties
  L3_5835 = L3_5835.Vulnerability
  L4_5836 = A0_5832.Properties
  L4_5836 = L4_5836.DamageMultipliers
  L5_5837 = true
  if A1_5833.explosion then
    L5_5837 = NumberToBool(L3_5835.bExplosion)
  elseif A1_5833.type == "collision" then
    L5_5837 = NumberToBool(L3_5835.bCollision)
    L2_5834 = L2_5834 * L4_5836.fCollision
  elseif A1_5833.type == "bullet" then
    L5_5837 = NumberToBool(L3_5835.bBullet)
    L2_5834 = L2_5834 * L4_5836.fBullet
  elseif A1_5833.type == "melee" then
    L5_5837 = NumberToBool(L3_5835.bMelee)
  else
    L5_5837 = NumberToBool(L3_5835.bOther)
  end
  L5_5837 = L5_5837 and L2_5834 > A0_5832.Properties.Damage.fDamageTreshold
  if L5_5837 and NumberToBool(A0_5832.Properties.Damage.bPlayerOnly) and not g_gameRules.game:IsPlayer(A1_5833.shooterId) then
    L5_5837 = false
  end
  BroadcastEvent(A0_5832, "Hit")
  if L5_5837 then
    A0_5832.health = A0_5832.health - L2_5834
    if A0_5832.health <= 0 then
      A0_5832:Die(A1_5833.shooterId)
    end
    if NumberToBool(A0_5832.Properties.bActivateOnDamage) then
      A0_5832:AwakePhysics(1)
    end
    if A0_5832.Properties.Explosion.DelayEffect.bHasDelayEffect == 1 and (not A0_5832.FXSlot or A0_5832.FXSlot == -1) then
      A0_5832:SetTimer(0, (A0_5832.Properties.Explosion.Delay + randomF(0, 1.5)) * 1000)
      if not EmptyString(A0_5832.Properties.Explosion.DelayEffect.ParticleEffect) then
        A0_5832.FXSlot = A0_5832:LoadParticleEffect(-1, A0_5832.Properties.Explosion.DelayEffect.ParticleEffect, A0_5832.Properties.Explosion.DelayEffect.Params)
        A0_5832:SetSlotPos(A0_5832.FXSlot, A0_5832.Properties.Explosion.DelayEffect.vOffset)
        A0_5832:SetSlotAngles(A0_5832.FXSlot, A0_5832.Properties.Explosion.DelayEffect.vRotation)
      end
    end
  end
  return A0_5832.health <= 0
end
function DestroyableLight.Server.OnTimer(A0_5838, A1_5839, A2_5840)
  if A1_5839 == 0 then
    A0_5838:GotoState("Dead")
  end
end
function DestroyableLight.UseLight(A0_5841, A1_5842)
  local L2_5843, L3_5844, L4_5845, L5_5846, L6_5847, L7_5848, L8_5849, L9_5850, L10_5851, L11_5852, L12_5853, L13_5854, L14_5855
  if A1_5842 == 0 then
    L3_5844 = A0_5841.PropertiesInstance
    L2_5843 = L3_5844.LightProperties_Destroyed
  else
    L3_5844 = A0_5841.PropertiesInstance
    L2_5843 = L3_5844.LightProperties_Base
  end
  L3_5844 = L2_5843.Style
  L4_5845 = L2_5843.Projector
  L5_5846 = L2_5843.Color
  L6_5847 = L2_5843.Options
  L7_5848 = L2_5843.Shape
  L8_5849 = L2_5843.Shadows
  L9_5850 = L5_5846.fDiffuseMultiplier
  L10_5851 = L5_5846.fSpecularMultiplier
  L11_5852 = A0_5841._LightTable
  L12_5853 = L2_5843.Radius
  L11_5852.radius = L12_5853
  L12_5853 = L2_5843.fAttenuationBulbSize
  L11_5852.attenuation_bulbsize = L12_5853
  L12_5853 = {}
  L13_5854 = L5_5846.clrDiffuse
  L13_5854 = L13_5854.x
  L13_5854 = L13_5854 * L9_5850
  L12_5853.x = L13_5854
  L13_5854 = L5_5846.clrDiffuse
  L13_5854 = L13_5854.y
  L13_5854 = L13_5854 * L9_5850
  L12_5853.y = L13_5854
  L13_5854 = L5_5846.clrDiffuse
  L13_5854 = L13_5854.z
  L13_5854 = L13_5854 * L9_5850
  L12_5853.z = L13_5854
  L11_5852.diffuse_color = L12_5853
  L11_5852.specular_multiplier = L10_5851
  L12_5853 = L6_5847.bAffectsThisAreaOnly
  L11_5852.this_area_only = L12_5853
  L12_5853 = L6_5847.bIgnoresVisAreas
  L11_5852.ignore_visareas = L12_5853
  L12_5853 = L6_5847.bFakeLight
  L11_5852.fake = L12_5853
  L12_5853 = L6_5847.bAmbient
  L11_5852.ambient = L12_5853
  L12_5853 = L8_5849.nCastShadows
  L11_5852.cast_shadow = L12_5853
  L12_5853 = L8_5849.nCastShadowViewDistRatio
  L11_5852.cast_shadow_viewDistRatio = L12_5853
  L12_5853 = L8_5849.fShadowBias
  L11_5852.shadow_bias = L12_5853
  L12_5853 = L8_5849.fShadowSlopeBias
  L11_5852.shadow_slope_bias = L12_5853
  L12_5853 = L8_5849.fShadowResolutionScale
  L11_5852.shadowResolutionScale = L12_5853
  L12_5853 = L8_5849.nShadowMinResPercent
  L11_5852.shadowMinResolution = L12_5853
  L12_5853 = L8_5849.fShadowUpdateMinRadius
  L11_5852.shadowUpdate_MinRadius = L12_5853
  L12_5853 = L8_5849.fShadowUpdateRatio
  L11_5852.shadowUpdate_ratio = L12_5853
  L12_5853 = L4_5845.texture_Texture
  L11_5852.projector_texture = L12_5853
  L12_5853 = L4_5845.fProjectorFov
  L11_5852.proj_fov = L12_5853
  L12_5853 = L4_5845.fProjectorNearPlane
  L11_5852.proj_nearplane = L12_5853
  L12_5853 = L7_5848.bAreaLight
  L11_5852.area_light = L12_5853
  L12_5853 = L7_5848.fPlaneWidth
  L11_5852.area_width = L12_5853
  L12_5853 = L7_5848.fPlaneHeight
  L11_5852.area_height = L12_5853
  L12_5853 = L3_5844.nLightStyle
  L11_5852.style = L12_5853
  L12_5853 = L3_5844.fAnimationSpeed
  L11_5852.anim_speed = L12_5853
  L12_5853 = L3_5844.nAnimationPhase
  L11_5852.anim_phase = L12_5853
  L11_5852.lightmap_linear_attenuation = 1
  L11_5852.is_rectangle_light = 0
  L11_5852.is_sphere_light = 0
  L11_5852.area_sample_number = 1
  L11_5852.indoor_only = 0
  L12_5853 = {}
  L12_5853.x = 0
  L12_5853.y = 0
  L12_5853.z = 0
  L11_5852.RAE_AmbientColor = L12_5853
  L11_5852.RAE_MaxShadow = 1
  L11_5852.RAE_DistMul = 1
  L11_5852.RAE_DivShadow = 1
  L11_5852.RAE_ShadowHeight = 1
  L11_5852.RAE_FallOff = 2
  L11_5852.RAE_VisareaNumber = 0
  L13_5854 = A0_5841
  L12_5853 = A0_5841.LoadLight
  L14_5855 = -1
  L12_5853 = L12_5853(L13_5854, L14_5855, L11_5852)
  A0_5841.lightSlot = L12_5853
  L12_5853 = g_Vectors
  L12_5853 = L12_5853.temp_v1
  L12_5853.x = 0
  L13_5854 = math
  L13_5854 = L13_5854.sqrt
  L14_5855 = L2_5843.Options
  L14_5855 = L14_5855.vDirection
  L14_5855 = L14_5855.x
  L14_5855 = L14_5855 * L2_5843.Options.vDirection.x
  L14_5855 = L14_5855 + L2_5843.Options.vDirection.y * L2_5843.Options.vDirection.y
  L13_5854 = L13_5854(L14_5855)
  L14_5855 = math
  L14_5855 = L14_5855.atan2
  L14_5855 = L14_5855(-L2_5843.Options.vDirection.z, L13_5854)
  L12_5853.y = L14_5855
  L14_5855 = math
  L14_5855 = L14_5855.atan2
  L14_5855 = L14_5855(L2_5843.Options.vDirection.y, L2_5843.Options.vDirection.x)
  L12_5853.z = L14_5855
  L14_5855 = A0_5841.SetSlotAngles
  L14_5855(A0_5841, A0_5841.lightSlot, L12_5853)
  L14_5855 = g_Vectors
  L14_5855 = L14_5855.temp_v1
  L14_5855.x = L2_5843.Options.vOffset.x
  L14_5855.y = L2_5843.Options.vOffset.y
  L14_5855.z = L2_5843.Options.vOffset.z
  A0_5841:SetSlotPos(A0_5841.lightSlot, L14_5855)
  if L8_5849.nCastShadows ~= 0 and L8_5849.bIgnoreGeomCaster ~= 0 then
    A0_5841:SetSelfAsLightCasterException(A0_5841.lightSlot)
  end
end
function DestroyableLight.SwitchOnOffChildren(A0_5856, A1_5857)
  local L2_5858, L3_5859, L4_5860, L5_5861, L6_5862
  L2_5858 = A0_5856.GetChildCount
  L2_5858 = L2_5858(L3_5859)
  for L6_5862 = 0, L2_5858 do
    if A0_5856:GetChild(L6_5862) and A0_5856:GetChild(L6_5862).NotifySwitchOnOffFromParent then
      A0_5856:GetChild(L6_5862):NotifySwitchOnOffFromParent(A1_5857)
    end
  end
end
function DestroyableLight.NotifySwitchOnOffFromParent(A0_5863, A1_5864)
  A0_5863:SwitchOnOff(A1_5864)
end
function DestroyableLight.SwitchOnOff(A0_5865, A1_5866)
  local L2_5867
  L2_5867 = A0_5865.dead
  if not L2_5867 then
    L2_5867 = A1_5866 ~= true
    if A0_5865.lightOn and L2_5867 then
      A0_5865.lightOn = false
      BroadcastEvent(A0_5865, "LightOff")
      A0_5865:ShowCorrectLight()
      A0_5865:SwitchOnOffChildren(A1_5866)
    elseif A0_5865.lightOn ~= true and A1_5866 then
      A0_5865.lightOn = true
      BroadcastEvent(A0_5865, "LightOn")
      A0_5865:ShowCorrectLight()
      A0_5865:SwitchOnOffChildren(A1_5866)
    end
  end
end
DestroyableLight.Client.Alive = {
  OnBeginState = function(A0_5868)
    A0_5868:ShowCorrectLight()
  end,
  OnLevelLoaded = function(A0_5869)
    if A0_5869.PropertiesInstance.LightProperties_Base.Options.bAffectsThisAreaOnly then
      A0_5869:UpdateLightClipBounds(A0_5869.lightSlot)
    end
  end
}
DestroyableLight.Server.Alive = {
  OnTimer = function(A0_5870, A1_5871, A2_5872)
    if A1_5871 == 0 then
      A0_5870:GotoState("Dead")
    end
  end,
  OnLevelLoaded = function(A0_5873)
    if A0_5873.PropertiesInstance.LightProperties_Base.Options.bAffectsThisAreaOnly then
      A0_5873:UpdateLightClipBounds(A0_5873.lightSlot)
    end
  end
}
DestroyableLight.Client.Dead = {
  OnBeginState = function(A0_5874)
    A0_5874:SwitchOnOff(false)
    A0_5874:ShowCorrectLight()
    if not CryAction.IsServer() then
      A0_5874:RemoveEffect()
      A0_5874:Explode()
      A0_5874.dead = true
    end
  end
}
DestroyableLight.Server.Dead = {
  OnBeginState = function(A0_5875)
    A0_5875:RemoveEffect()
    A0_5875:Explode()
    A0_5875.dead = true
  end
}
function DestroyableLight.Event_Reset(A0_5876, A1_5877)
  A0_5876:OnReset()
  BroadcastEvent(A0_5876, "Reset")
end
function DestroyableLight.Event_Hit(A0_5878, A1_5879)
  BroadcastEvent(A0_5878, "Hit")
end
function DestroyableLight.Event_Explode(A0_5880, A1_5881)
  if A0_5880:GetState() == "Dead" then
    return
  end
  if A0_5880.exploded then
    return
  end
  BroadcastEvent(A0_5880, "Explode")
  BroadcastEvent(A0_5880, "Break")
  A0_5880:Die(NULL_ENTITY)
end
function DestroyableLight.Client.OnPhysicsBreak(A0_5882, A1_5883, A2_5884, A3_5885)
  A0_5882:ActivateOutput("Break", A2_5884 + 1)
end
function DestroyableLight.Event_Hide(A0_5886)
  A0_5886:Hide(1)
  BroadcastEvent(A0_5886, "Hide")
end
function DestroyableLight.Event_UnHide(A0_5887)
  A0_5887:Hide(0)
  BroadcastEvent(A0_5887, "UnHide")
end
function DestroyableLight.Event_LightOn(A0_5888)
  A0_5888:SwitchOnOff(true)
end
function DestroyableLight.Event_LightOff(A0_5889)
  A0_5889:SwitchOnOff(false)
end
function DestroyableLight.ShowLightOn(A0_5890)
  if A0_5890.lightSlot ~= -1 then
    A0_5890:FreeSlot(A0_5890.lightSlot)
    A0_5890.lightSlot = -1
  end
  if A0_5890.PropertiesInstance.LightProperties_Base.bUseThisLight ~= 0 then
    A0_5890:UseLight(1)
  end
  if A0_5890:GetMaterialFloat(1, A0_5890.PropertiesInstance.LightProperties_Base.Options.nGlowSubmatId, MaterialFloatParams.emissive_intensity) ~= A0_5890.origGlowValue and A0_5890.origGlowValue and A0_5890.materialIsCloned then
    A0_5890:SetMaterialFloat(1, A0_5890.PropertiesInstance.LightProperties_Base.Options.nGlowSubmatId, MaterialFloatParams.emissive_intensity, A0_5890.origGlowValue)
  end
end
function DestroyableLight.ShowLightOff(A0_5891)
  if A0_5891.lightSlot ~= -1 then
    A0_5891:FreeSlot(A0_5891.lightSlot)
    A0_5891.lightSlot = -1
  end
  if A0_5891.PropertiesInstance.LightProperties_Destroyed.bUseThisLight ~= 0 then
    A0_5891:UseLight(0)
  end
  if 0 < A0_5891:GetMaterialFloat(1, A0_5891.PropertiesInstance.LightProperties_Base.Options.nGlowSubmatId, MaterialFloatParams.emissive_intensity) then
    if not A0_5891.materialIsCloned then
      A0_5891:CloneMaterial(1)
      A0_5891.materialIsCloned = true
    end
    A0_5891:SetMaterialFloat(1, A0_5891.PropertiesInstance.LightProperties_Base.Options.nGlowSubmatId, MaterialFloatParams.emissive_intensity, 1.0E-4)
  end
end
function DestroyableLight.PlaySound(A0_5892, A1_5893)
  local L2_5894
  if A1_5893 and A1_5893 ~= "" then
    L2_5894 = SOUND_DEFAULT_3D
  end
end
function DestroyableLight.PlaySoundLoop(A0_5895, A1_5896)
  local L2_5897
  if A1_5896 and A1_5896 ~= "" then
    L2_5897 = SOUND_DEFAULT_3D
    L2_5897 = bor(L2_5897, FLAG_SOUND_LOOP)
    return 0
  end
end
function DestroyableLight.PlayIdleSound(A0_5898)
  if A0_5898.idleSoundId == 0 then
    A0_5898.idleSoundId = A0_5898:PlaySoundLoop(A0_5898.Properties.Sound.soundIdle)
  end
end
function DestroyableLight.PlayRunSound(A0_5899)
  if A0_5899.runSoundId == 0 then
    A0_5899.runSoundId = A0_5899:PlaySoundLoop(A0_5899.Properties.Sound.soundRun)
  end
end
function DestroyableLight.StopIdleSound(A0_5900)
  if A0_5900.idleSoundId ~= 0 then
    A0_5900.idleSoundId = 0
  end
end
function DestroyableLight.StopRunSound(A0_5901)
  if A0_5901.runSoundId ~= 0 then
    A0_5901.runSoundId = 0
  end
end
function DestroyableLight.OnEditorSetGameMode(A0_5902, A1_5903)
  if A1_5903 ~= true then
    A0_5902:StopIdleSound()
    A0_5902:StopRunSound()
  end
end
function DestroyableLight.ShowCorrectLight(A0_5904)
  if A0_5904.lightOn and not A0_5904.dead then
    A0_5904:StopIdleSound()
    A0_5904:PlayRunSound()
    A0_5904:ShowLightOn()
  else
    A0_5904:ShowLightOff()
    A0_5904:StopRunSound()
    if A0_5904.dead then
      A0_5904:StopIdleSound()
    else
      A0_5904:PlayIdleSound()
    end
  end
end
DestroyableLight.FlowEvents = {
  Inputs = {
    Explode = {
      DestroyableLight.Event_Explode,
      "bool"
    },
    Reset = {
      DestroyableLight.Event_Reset,
      "bool"
    },
    Used = {
      DestroyableLight.Event_Used,
      "bool"
    },
    EnableUsable = {
      DestroyableLight.Event_EnableUsable,
      "bool"
    },
    DisableUsable = {
      DestroyableLight.Event_DisableUsable,
      "bool"
    },
    Hit = {
      DestroyableLight.Event_Hit,
      "bool"
    },
    Hide = {
      DestroyableLight.Event_Hide,
      "bool"
    },
    UnHide = {
      DestroyableLight.Event_UnHide,
      "bool"
    },
    LightOn = {
      DestroyableLight.Event_LightOn,
      "bool"
    },
    LightOff = {
      DestroyableLight.Event_LightOff,
      "bool"
    }
  },
  Outputs = {
    Explode = "bool",
    Reset = "bool",
    Used = "bool",
    EnableUsable = "bool",
    DisableUsable = "bool",
    Hit = "bool",
    Hide = "bool",
    UnHide = "bool",
    Break = "int",
    LightOn = "bool",
    LightOff = "bool"
  }
}
MakeUsable(DestroyableLight)
function DestroyableLight.IsUsable(A0_5905, A1_5906)
  local L3_5907
  if not A0_5905.bUsable then
    A0_5905.bUsable = A0_5905.Properties.bUsable
  end
  if A0_5905.bUsable == 1 then
    L3_5907 = 2
  end
  return L3_5907 or 0
end
function DestroyableLight.OnUsed(A0_5908, A1_5909, A2_5910)
  local L3_5911
  L3_5911 = BroadcastEvent
  L3_5911(A0_5908, "Used")
  L3_5911 = A0_5908.dead
  if not L3_5911 then
    L3_5911 = A0_5908.lightOn
    L3_5911 = L3_5911 == false
    A0_5908:SwitchOnOff(L3_5911)
  end
end
MakePickable(DestroyableLight)
MakeTargetableByAI(DestroyableLight)
MakeKillable(DestroyableLight)
function DestroyableLight.Event_Dead(A0_5912)
  A0_5912:Die()
  A0_5912:TriggerEvent(AIEVENT_DISABLE)
  BroadcastEvent(A0_5912, "Dead")
end
