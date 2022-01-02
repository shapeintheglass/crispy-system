local L0_6889
L0_6889 = {}
L0_6889.Client = {}
L0_6889.Server = {}
L0_6889.Properties = {
  fileModel = "engine/engineassets/objects/default.cgf",
  ModelSubObject = "",
  fileModelDestroyed = "",
  DestroyedSubObject = "",
  bDestroyable = 0,
  bTurnedOn = 0,
  bUsable = 1,
  bTwoState = 0,
  bUsableOnlyOnce = 0,
  UseMessage = "@use_object",
  OnUse = {
    fUseDelay = 0,
    fCoolDownTime = 0.1,
    bEffectOnUse = 0,
    bSoundOnUse = 1,
    bSpawnOnUse = 1,
    bChangeMatOnUse = 0,
    bChangeModelOnUse = 0,
    fileModelOnUse = ""
  },
  Sound = {
    soundSound = "",
    soundTurnOnSound = "",
    soundTurnOffSound = "",
    soundIdleSound = "",
    vOffset = {
      x = 0,
      y = 0,
      z = 0
    }
  },
  Effect = {
    ParticleEffect = "",
    bPrime = 0,
    Scale = 1,
    CountScale = 1,
    bCountPerUnit = 0,
    AttachType = "",
    AttachForm = "Surface",
    PulsePeriod = 0,
    SpawnPeriod = 0,
    vOffset = {
      x = 0,
      y = 0,
      z = 0
    },
    vRotation = {
      x = 0,
      y = 0,
      z = 0
    }
  },
  fHealth = 100,
  Physics = {
    bRigidBody = 0,
    bRigidBodyActive = 0,
    bResting = 0,
    Density = -1,
    Mass = -1,
    Buoyancy = {
      water_density = 0,
      water_damping = 0,
      water_resistance = 0
    },
    bStaticInDX9Multiplayer = 1,
    MP = {bDontSyncPos = 0}
  },
  Breakage = {
    fLifeTime = 10,
    fExplodeImpulse = 0,
    bSurfaceEffects = 1
  },
  Destruction = {
    bExplode = 1,
    ParticleEffect = "explosions.monitor.a",
    EffectScale = 1,
    Radius = 0,
    Pressure = 0,
    Damage = 0,
    Decal = "",
    Direction = {
      x = 0,
      y = 0.2,
      z = 1
    },
    vOffset = {
      x = 0,
      y = 0,
      z = 0
    }
  },
  Vulnerability = {
    fDamageTreshold = 0,
    bExplosion = 1,
    bCollision = 1,
    bMelee = 1,
    bBullet = 1,
    bOther = 1
  },
  SpawnEntity = {
    iSpawnLimit = 10,
    Archetype = "Props_Physics.Junk.can_b",
    vOffset = {
      x = 0,
      y = -0.5,
      z = 0.5
    },
    vRotation = {
      x = 0,
      y = 0,
      z = 0
    },
    fImpulse = 10,
    vImpulseDir = {
      x = 0,
      y = -1,
      z = 1
    }
  },
  ChangeMaterial = {fileMaterial = "", Duration = 0},
  ScreenFunctions = {
    bHasScreenFunction = 0,
    FlashMatId = -1,
    Type = {bProgressBar = 0}
  },
  TacticalInfo = {bScannable = 0, LookupName = ""}
}
L0_6889.Editor = {Icon = "Item.bmp", IconOnTop = 1}
L0_6889.LastHit = {
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
L0_6889.States = {
  "TurnedOn",
  "TurnedOff",
  "Destroyed"
}
L0_6889.health = 0
L0_6889.soundid = nil
L0_6889.turnoffsoundid = nil
L0_6889.idleSoundId = nil
L0_6889.FXSlot = -1
L0_6889.spawncount = 0
L0_6889.iDelayTimer = -1
L0_6889.iCoolDownTimer = -1
L0_6889.iTurnOffSoundTimer = -1
L0_6889.bCoolDown = 0
L0_6889.shooterId = 0
L0_6889.currentMat = nil
L0_6889.MatResetTimer = nil
L0_6889.progress = 0
InteractiveEntity = L0_6889
L0_6889 = Net
L0_6889 = L0_6889.Expose
L0_6889({
  Class = InteractiveEntity,
  ClientMethods = {
    DeactivateTacticalInfo = {RELIABLE_ORDERED, POST_ATTACH}
  },
  ServerMethods = {},
  ServerProperties = {}
})
L0_6889 = MakePickable
L0_6889(InteractiveEntity)
L0_6889 = {}
L0_6889.bPhysicalize = 1
L0_6889.bPushableByPlayers = 0
L0_6889.bPushableByAI = 0
L0_6889.Density = -1
L0_6889.Mass = -1
L0_6889.bStaticInDX9Multiplayer = 1
function InteractiveEntity.OnPropertyChange(A0_6890)
  A0_6890:OnReset()
  A0_6890:StopIdleSound()
end
function InteractiveEntity.OnEditorSetGameMode(A0_6891, A1_6892)
  if A1_6892 ~= true then
    A0_6891:StopIdleSound()
  end
end
function InteractiveEntity.OnSave(A0_6893, A1_6894)
  A1_6894.health = A0_6893.health
  A1_6894.FXSlot = A0_6893.FXSlot
  A1_6894.spawncount = A0_6893.spawncount
  A1_6894.iDelayTimer = A0_6893.iDelayTimer
  A1_6894.iCoolDownTimer = A0_6893.iCoolDownTimer
  A1_6894.bCoolDown = A0_6893.bCoolDown
  A1_6894.currentMat = A0_6893.currentMat
  A1_6894.MatResetTimer = A0_6893.MatResetTimer
  A1_6894.progress = A0_6893.progress
  A1_6894.bUsable = A0_6893.bUsable
  A1_6894.material = A0_6893:GetEntityMaterial()
  A1_6894.bScannable = A0_6893.bScannable
end
function InteractiveEntity.OnLoad(A0_6895, A1_6896)
  if A1_6896.FXSlot <= 0 and A0_6895.FXSlot > 0 then
    A0_6895:DeleteParticleEmitter(A0_6895.FXSlot)
    A0_6895:RemoveEffect()
  end
  A0_6895:OnReset()
  A0_6895.health = A1_6896.health
  A0_6895.FXSlot = A1_6896.FXSlot
  A0_6895.spawncount = A1_6896.spawncount
  A0_6895.iDelayTimer = A1_6896.iDelayTimer
  A0_6895.iCoolDownTimer = A1_6896.iCoolDownTimer
  A0_6895.bCoolDown = A1_6896.bCoolDown
  A0_6895.currentMat = A1_6896.currentMat
  A0_6895.MatResetTimer = A1_6896.MatResetTimer
  A0_6895.progress = A1_6896.progress
  A0_6895.bUsable = A1_6896.bUsable
  if A1_6896.material then
    A0_6895:SetMaterial(A1_6896.material)
  end
  A0_6895.bScannable = A1_6896.bScannable
  if A0_6895.bScannable == 1 then
    Game.AddTacticalEntity(A0_6895.id, eTacticalEntity_Story)
  else
    Game.RemoveTacticalEntity(A0_6895.id, eTacticalEntity_Story)
  end
  if A0_6895.Properties.ScreenFunctions.bHasScreenFunction == 1 and A0_6895.Properties.ScreenFunctions.Type.bProgressBar == 1 then
    A0_6895:MaterialFlashInvoke(0, A0_6895.Properties.ScreenFunctions.FlashMatId, 0, "SetProgress", A0_6895.progress)
  end
  if 0 >= A0_6895.health then
    A0_6895:GotoState("Destroyed")
  end
end
function InteractiveEntity.OnReset(A0_6897)
  if A0_6897.MatResetTimer ~= nil then
    Script.KillTimer(A0_6897.MatResetTimer)
    A0_6897.MatResetTimer = nil
  end
  A0_6897:StopIdleSound()
  A0_6897:ResetMaterial(0)
  A0_6897:ResetMat()
  A0_6897:Stop(0)
  A0_6897:RemoveEffect()
  A0_6897.spawncount = 0
  if not EmptyString(A0_6897.Properties.fileModel) then
    A0_6897:LoadSubObject(0, A0_6897.Properties.fileModel, A0_6897.Properties.ModelSubObject)
  end
  if not EmptyString(A0_6897.Properties.fileModelDestroyed) then
    A0_6897:LoadSubObject(1, A0_6897.Properties.fileModelDestroyed, A0_6897.Properties.DestroyedSubObject)
  elseif not EmptyString(A0_6897.Properties.DestroyedSubObject) then
    A0_6897:LoadSubObject(1, A0_6897.Properties.fileModel, A0_6897.Properties.DestroyedSubObject)
  end
  if not EmptyString(A0_6897.Properties.OnUse.fileModelOnUse) then
    A0_6897:LoadSubObject(2, A0_6897.Properties.OnUse.fileModelOnUse, A0_6897.Properties.ModelSubObject)
  end
  A0_6897:SetCurrentSlot(0)
  A0_6897:PhysicalizeThis(0)
  A0_6897.health = A0_6897.Properties.fHealth
  A0_6897:PlayIdleSound()
  if A0_6897.Properties.bTurnedOn == 1 then
    A0_6897:GotoState("TurnedOn")
  else
    A0_6897:GotoState("TurnedOff")
  end
  A0_6897.progress = 0
  A0_6897.bUsable = A0_6897.Properties.bUsable
  if A0_6897.Properties.ScreenFunctions.bHasScreenFunction == 1 and A0_6897.Properties.ScreenFunctions.Type.bProgressBar == 1 then
    A0_6897:MaterialFlashInvoke(0, A0_6897.Properties.ScreenFunctions.FlashMatId, 0, "SetProgress", 0)
  end
  A0_6897.bScannable = A0_6897.Properties.TacticalInfo.bScannable
  if A0_6897.bScannable == 1 then
    Game.AddTacticalEntity(A0_6897.id, eTacticalEntity_Story)
  else
    Game.RemoveTacticalEntity(A0_6897.id, eTacticalEntity_Story)
  end
end
function InteractiveEntity.PhysicalizeThis(A0_6898, A1_6899)
  local L2_6900
  L2_6900 = A0_6898.Properties
  L2_6900 = L2_6900.Physics
  L2_6900 = L2_6900.MP
  L2_6900 = L2_6900.bDontSyncPos
  if L2_6900 == 1 then
    L2_6900 = CryAction
    L2_6900 = L2_6900.DontSyncPhysics
    L2_6900(A0_6898.id)
  end
  L2_6900 = A0_6898.Properties
  L2_6900 = L2_6900.Physics
  if CryAction.IsImmersivenessEnabled() == 0 then
    L2_6900 = _UPVALUE0_
  end
  EntityCommon.PhysicalizeRigid(A0_6898, A1_6899, L2_6900, 1)
  if L2_6900.Buoyancy then
    A0_6898:SetPhysicParams(PHYSICPARAM_BUOYANCY, L2_6900.Buoyancy)
  end
end
function InteractiveEntity.Server.OnHit(A0_6901, A1_6902)
  local L2_6903, L3_6904
  L2_6903 = A0_6901.Properties
  L2_6903 = L2_6903.bDestroyable
  if L2_6903 == 1 then
    L2_6903 = A0_6901.Properties
    L2_6903 = L2_6903.Vulnerability
    L3_6904 = A1_6902.damage
    L3_6904 = L3_6904 >= A0_6901.Properties.Vulnerability.fDamageTreshold
    if L3_6904 and A1_6902.explosion then
      L3_6904 = NumberToBool(L2_6903.bExplosion)
    elseif L3_6904 and A1_6902.type == "collision" then
      L3_6904 = NumberToBool(L2_6903.bCollision)
    elseif L3_6904 and A1_6902.type == "bullet" then
      L3_6904 = NumberToBool(L2_6903.bBullet)
    elseif L3_6904 and A1_6902.type == "melee" then
      L3_6904 = NumberToBool(L2_6903.bMelee)
    else
      L3_6904 = L3_6904 and NumberToBool(L2_6903.bOther)
    end
    if L3_6904 then
      A0_6901.shooterId = A1_6902.shooterId
      BroadcastEvent(A0_6901, "Hit")
      A0_6901.health = A0_6901.health - A1_6902.damage
      if A0_6901.health <= 0 and CryAction.IsImmersivenessEnabled() ~= 0 then
        A0_6901:GotoState("Destroyed")
        if A1_6902.dir then
          A0_6901:AddImpulse(A1_6902.partId or -1, A1_6902.pos, A1_6902.dir, A1_6902.damage)
        end
      end
    end
  end
end
function InteractiveEntity.Client.OnHit(A0_6905, A1_6906, A2_6907)
  CopyVector(A0_6905.LastHit.pos, A1_6906.pos)
  CopyVector(A0_6905.LastHit.impulse, A1_6906.dir)
  A0_6905.LastHit.impulse.x = A0_6905.LastHit.impulse.x * A1_6906.damage
  A0_6905.LastHit.impulse.y = A0_6905.LastHit.impulse.y * A1_6906.damage
  A0_6905.LastHit.impulse.z = A0_6905.LastHit.impulse.z * A1_6906.damage
end
function InteractiveEntity.OnUsed(A0_6908, A1_6909, A2_6910)
  local L3_6911
  L3_6911 = A0_6908.bUsable
  if L3_6911 == 0 then
    return
  end
  L3_6911 = A0_6908.Properties
  L3_6911 = L3_6911.OnUse
  if A0_6908.bCoolDown == 0 and A0_6908.iDelayTimer == -1 then
    if 0 < L3_6911.fUseDelay then
      A0_6908.iDelayTimer = Script.SetTimerForFunction(L3_6911.fUseDelay * 1000, "InteractiveEntity.Use", A0_6908)
    else
      A0_6908:Use(A1_6909, A2_6910)
    end
  end
  if A0_6908.bScannable == 1 then
    Game.RemoveTacticalEntity(A0_6908.id, eTacticalEntity_Story)
  end
end
function InteractiveEntity.ResetMat(A0_6912)
  if A0_6912.currentMat then
    A0_6912:SetMaterial(A0_6912.currentMat)
  end
  A0_6912.MatResetTimer = nil
end
function InteractiveEntity.EndCoolDown(A0_6913)
  local L1_6914
  A0_6913.bCoolDown = 0
  L1_6914 = A0_6913.Properties
  L1_6914 = L1_6914.bUsableOnlyOnce
  if L1_6914 ~= 1 then
    A0_6913.bUsable = 1
  end
end
function InteractiveEntity.Use(A0_6915)
  local L1_6916
  L1_6916 = A0_6915.Properties
  L1_6916 = L1_6916.OnUse
  A0_6915.iDelayTimer = -1
  A0_6915.iCoolDownTimer = -1
  if L1_6916.fCoolDownTime ~= 0 then
    A0_6915.bCoolDown = 1
    A0_6915.bUsable = 0
    A0_6915.iCoolDownTimer = Script.SetTimerForFunction(L1_6916.fCoolDownTime * 1000, "InteractiveEntity.EndCoolDown", A0_6915)
  end
  A0_6915:ActivateOutput("Used", true)
  if A0_6915.Properties.bTwoState ~= 0 then
    if A0_6915:GetState() == "TurnedOn" then
      A0_6915:Stop(1)
      A0_6915:GotoState("TurnedOff")
    elseif A0_6915:GetState() == "TurnedOff" then
      A0_6915:GotoState("TurnedOn")
    elseif A0_6915:GetState() == "Destroyed" then
      return
    end
  else
    A0_6915:Play()
    A0_6915:DoEffect()
    A0_6915:DoSpawn()
    A0_6915:DoMaterialChange()
  end
  if A0_6915.Properties.bUsableOnlyOnce == 1 then
    A0_6915.bUsable = 0
  end
end
function InteractiveEntity.IsUsable(A0_6917, A1_6918)
  if System.IsMultiplayer() and System.IsMultiplayer() ~= 0 then
    return 0
  end
  if A0_6917.bUsable == 1 and A0_6917:GetState() ~= "Destroyed" then
    return 2
  end
  if A0_6917.Properties.bPickable == 1 then
    if not EmptyString(A0_6917.Properties.fileModelDestroyed) or not EmptyString(A0_6917.Properties.DestroyedSubObject) then
      return 1
    end
  end
  return 0
end
function InteractiveEntity.GetUsableMessage(A0_6919, A1_6920)
  local L2_6921
  L2_6921 = A0_6919.bUsable
  if L2_6921 == 1 then
    L2_6921 = A0_6919.Properties
    L2_6921 = L2_6921.UseMessage
    return L2_6921
  else
    L2_6921 = "@grab_object"
    return L2_6921
  end
end
function InteractiveEntity.DoSpawn(A0_6922)
  local L1_6923, L2_6924, L3_6925, L4_6926, L5_6927, L6_6928, L7_6929, L8_6930, L9_6931, L10_6932
  L1_6923 = CryAction
  L1_6923 = L1_6923.IsGameStarted
  L1_6923 = L1_6923()
  if not L1_6923 then
    return
  end
  L1_6923 = A0_6922.Properties
  L1_6923 = L1_6923.OnUse
  L1_6923 = L1_6923.bSpawnOnUse
  if L1_6923 ~= 1 then
    return
  end
  L1_6923 = A0_6922.spawncount
  L2_6924 = A0_6922.Properties
  L2_6924 = L2_6924.SpawnEntity
  L2_6924 = L2_6924.iSpawnLimit
  if not (L1_6923 >= L2_6924) then
    L1_6923 = A0_6922.spawncount
  elseif L1_6923 >= 20 then
    return
  end
  L1_6923 = A0_6922.Properties
  L1_6923 = L1_6923.SpawnEntity
  L2_6924 = {}
  L2_6924.class = "BasicEntity"
  L3_6925 = L1_6923.Archetype
  L2_6924.archetype = L3_6925
  L4_6926 = A0_6922
  L3_6925 = A0_6922.GetName
  L3_6925 = L3_6925(L4_6926)
  L4_6926 = "_spawnedentity_"
  L5_6927 = A0_6922.spawncount
  L3_6925 = L3_6925 .. L4_6926 .. L5_6927
  L2_6924.name = L3_6925
  L2_6924.flags = 0
  L3_6925 = {}
  L3_6925.x = 0
  L3_6925.y = 1
  L3_6925.z = 0
  L2_6924.orientation = L3_6925
  L4_6926 = A0_6922
  L3_6925 = A0_6922.GetPos
  L3_6925 = L3_6925(L4_6926)
  L2_6924.position = L3_6925
  L2_6924.scale = nil
  L3_6925 = System
  L3_6925 = L3_6925.SpawnEntity
  L4_6926 = L2_6924
  L3_6925 = L3_6925(L4_6926)
  L4_6926 = A0_6922.spawncount
  L4_6926 = L4_6926 + 1
  A0_6922.spawncount = L4_6926
  L4_6926 = A0_6922.spawncount
  L5_6927 = A0_6922.Properties
  L5_6927 = L5_6927.SpawnEntity
  L5_6927 = L5_6927.iSpawnLimit
  if L4_6926 >= L5_6927 then
    A0_6922.bUsable = 0
  end
  if L3_6925 ~= nil then
    L3_6925.health = 5
    L5_6927 = A0_6922
    L4_6926 = A0_6922.GetWorldPos
    L4_6926 = L4_6926(L5_6927)
    L5_6927 = g_Vectors
    L5_6927 = L5_6927.temp_v1
    L7_6929 = A0_6922
    L6_6928 = A0_6922.GetDirectionVector
    L8_6930 = 0
    L6_6928 = L6_6928(L7_6929, L8_6930)
    L8_6930 = A0_6922
    L7_6929 = A0_6922.GetDirectionVector
    L9_6931 = 1
    L7_6929 = L7_6929(L8_6930, L9_6931)
    L9_6931 = A0_6922
    L8_6930 = A0_6922.GetDirectionVector
    L10_6932 = 2
    L8_6930 = L8_6930(L9_6931, L10_6932)
    L9_6931 = CopyVector
    L10_6932 = L5_6927
    L9_6931(L10_6932, A0_6922.Properties.SpawnEntity.vOffset)
    L9_6931 = L4_6926.x
    L10_6932 = L6_6928.x
    L10_6932 = L10_6932 * L5_6927.x
    L9_6931 = L9_6931 + L10_6932
    L10_6932 = L7_6929.x
    L10_6932 = L10_6932 * L5_6927.y
    L9_6931 = L9_6931 + L10_6932
    L10_6932 = L8_6930.x
    L10_6932 = L10_6932 * L5_6927.z
    L9_6931 = L9_6931 + L10_6932
    L4_6926.x = L9_6931
    L9_6931 = L4_6926.y
    L10_6932 = L6_6928.y
    L10_6932 = L10_6932 * L5_6927.x
    L9_6931 = L9_6931 + L10_6932
    L10_6932 = L7_6929.y
    L10_6932 = L10_6932 * L5_6927.y
    L9_6931 = L9_6931 + L10_6932
    L10_6932 = L8_6930.y
    L10_6932 = L10_6932 * L5_6927.z
    L9_6931 = L9_6931 + L10_6932
    L4_6926.y = L9_6931
    L9_6931 = L4_6926.z
    L10_6932 = L6_6928.z
    L10_6932 = L10_6932 * L5_6927.x
    L9_6931 = L9_6931 + L10_6932
    L10_6932 = L7_6929.z
    L10_6932 = L10_6932 * L5_6927.y
    L9_6931 = L9_6931 + L10_6932
    L10_6932 = L8_6930.z
    L10_6932 = L10_6932 * L5_6927.z
    L9_6931 = L9_6931 + L10_6932
    L4_6926.z = L9_6931
    L9_6931 = g_Vectors
    L9_6931 = L9_6931.temp_v2
    L10_6932 = L6_6928.x
    L10_6932 = L10_6932 * L1_6923.vImpulseDir.x
    L10_6932 = L10_6932 + L7_6929.x * L1_6923.vImpulseDir.y
    L10_6932 = L10_6932 + L8_6930.x * L1_6923.vImpulseDir.z
    L9_6931.x = L10_6932
    L10_6932 = L6_6928.y
    L10_6932 = L10_6932 * L1_6923.vImpulseDir.x
    L10_6932 = L10_6932 + L7_6929.y * L1_6923.vImpulseDir.y
    L10_6932 = L10_6932 + L8_6930.y * L1_6923.vImpulseDir.z
    L9_6931.y = L10_6932
    L10_6932 = L6_6928.z
    L10_6932 = L10_6932 * L1_6923.vImpulseDir.x
    L10_6932 = L10_6932 + L7_6929.z * L1_6923.vImpulseDir.y
    L10_6932 = L10_6932 + L8_6930.z * L1_6923.vImpulseDir.z
    L9_6931.z = L10_6932
    L10_6932 = g_Vectors
    L10_6932 = L10_6932.temp_v4
    L10_6932 = A0_6922:CalcWorldAnglesFromRelativeDir(L1_6923.vRotation)
    L3_6925:SetWorldPos(L4_6926)
    L3_6925:SetAngles(L10_6932)
    if 0 < L1_6923.fImpulse then
      L3_6925:AddImpulse(-1, L3_6925:GetPos(), L9_6931, L1_6923.fImpulse, 1)
    end
  end
end
function InteractiveEntity.DoMaterialChange(A0_6933)
  local L1_6934
  L1_6934 = A0_6933.Properties
  L1_6934 = L1_6934.OnUse
  L1_6934 = L1_6934.bChangeMatOnUse
  if L1_6934 ~= 1 then
    return
  end
  L1_6934 = A0_6933.Properties
  L1_6934 = L1_6934.ChangeMaterial
  L1_6934 = L1_6934.fileMaterial
  if not EmptyString(L1_6934) then
    A0_6933.currentMat = A0_6933:GetMaterial(0)
    A0_6933:SetMaterial(L1_6934)
    if A0_6933.Properties.bTwoState ~= 1 and A0_6933.Properties.ChangeMaterial.Duration ~= 0 and A0_6933.MatResetTimer == nil then
      A0_6933.MatResetTimer = Script.SetTimerForFunction(A0_6933.Properties.ChangeMaterial.Duration * 1000, "InteractiveEntity.ResetMat", A0_6933)
    end
  end
end
function InteractiveEntity.DoEffect(A0_6935)
  local L1_6936
  L1_6936 = A0_6935.Properties
  L1_6936 = L1_6936.OnUse
  L1_6936 = L1_6936.bEffectOnUse
  if L1_6936 ~= 1 then
    return
  end
  L1_6936 = A0_6935.Properties
  L1_6936 = L1_6936.Effect
  L1_6936 = L1_6936.ParticleEffect
  if not EmptyString(L1_6936) then
    A0_6935.FXSlot = A0_6935:LoadParticleEffect(-1, A0_6935.Properties.Effect.ParticleEffect, A0_6935.Properties.Effect)
    A0_6935:SetSlotPos(A0_6935.FXSlot, A0_6935.Properties.Effect.vOffset)
    A0_6935:SetSlotAngles(A0_6935.FXSlot, A0_6935.Properties.Effect.vRotation)
  end
end
function InteractiveEntity.RemoveEffect(A0_6937)
  A0_6937:FreeSlot(A0_6937.FXSlot)
  A0_6937.FXSlot = -1
end
function InteractiveEntity.Play(A0_6938)
  if A0_6938.Properties.OnUse.bSoundOnUse ~= 1 then
    return
  end
  A0_6938:Stop(0)
  if A0_6938.Properties.Sound.soundTurnOnSound ~= "" then
    A0_6938:StopIdleSound()
  end
  if A0_6938.Properties.Sound.soundSound ~= "" then
  end
end
function InteractiveEntity.StopIdleSound(A0_6939)
  if A0_6939.idleSoundId ~= nil then
    Sound.StopSound(A0_6939.idleSoundId)
    A0_6939.idleSoundId = nil
  end
end
function InteractiveEntity.PlayIdleSound(A0_6940)
  local L1_6941
  L1_6941 = A0_6940.idleSoundId
  if L1_6941 == nil then
    L1_6941 = A0_6940.health
    if L1_6941 > 0 then
      L1_6941 = A0_6940.Properties
      L1_6941 = L1_6941.Sound
      L1_6941 = L1_6941.soundIdleSound
      if L1_6941 ~= "" then
      end
    end
  end
end
function InteractiveEntity.Stop(A0_6942, A1_6943)
  if A0_6942.soundid ~= nil then
    Sound.StopSound(A0_6942.soundid)
    A0_6942.soundid = nil
  end
  A0_6942:PlayIdleSound()
end
function InteractiveEntity.Explode(A0_6944)
  local L1_6945, L2_6946, L3_6947, L4_6948, L5_6949, L6_6950, L7_6951, L8_6952, L9_6953, L10_6954, L11_6955, L12_6956, L13_6957
  L1_6945 = A0_6944.Properties
  L2_6946 = A0_6944.LastHit
  L2_6946 = L2_6946.pos
  L3_6947 = A0_6944.LastHit
  L3_6947 = L3_6947.impulse
  L5_6949 = A0_6944
  L4_6948 = A0_6944.BreakToPieces
  L6_6950 = 0
  L7_6951 = 0
  L8_6952 = L1_6945.Breakage
  L8_6952 = L8_6952.fExplodeImpulse
  L9_6953 = L2_6946
  L10_6954 = L3_6947
  L11_6955 = L1_6945.Breakage
  L11_6955 = L11_6955.fLifeTime
  L12_6956 = L1_6945.Breakage
  L12_6956 = L12_6956.bSurfaceEffects
  L4_6948(L5_6949, L6_6950, L7_6951, L8_6952, L9_6953, L10_6954, L11_6955, L12_6956)
  L5_6949 = A0_6944
  L4_6948 = A0_6944.Stop
  L6_6950 = 0
  L4_6948(L5_6949, L6_6950)
  L4_6948 = NumberToBool
  L5_6949 = A0_6944.Properties
  L5_6949 = L5_6949.Destruction
  L5_6949 = L5_6949.bExplode
  L4_6948 = L4_6948(L5_6949)
  if L4_6948 then
    L4_6948 = A0_6944.Properties
    L4_6948 = L4_6948.Destruction
    L6_6950 = A0_6944
    L5_6949 = A0_6944.GetWorldPos
    L5_6949 = L5_6949(L6_6950)
    L7_6951 = A0_6944
    L6_6950 = A0_6944.GetDirectionVector
    L8_6952 = 0
    L6_6950 = L6_6950(L7_6951, L8_6952)
    L8_6952 = A0_6944
    L7_6951 = A0_6944.GetDirectionVector
    L9_6953 = 1
    L7_6951 = L7_6951(L8_6952, L9_6953)
    L9_6953 = A0_6944
    L8_6952 = A0_6944.GetDirectionVector
    L10_6954 = 2
    L8_6952 = L8_6952(L9_6953, L10_6954)
    L9_6953 = {}
    L9_6953.x = 0
    L9_6953.y = 0
    L9_6953.z = 0
    L10_6954 = CopyVector
    L11_6955 = L9_6953
    L12_6956 = L4_6948.vOffset
    L10_6954(L11_6955, L12_6956)
    L10_6954 = L5_6949.x
    L11_6955 = L6_6950.x
    L12_6956 = L9_6953.x
    L11_6955 = L11_6955 * L12_6956
    L10_6954 = L10_6954 + L11_6955
    L11_6955 = L7_6951.x
    L12_6956 = L9_6953.y
    L11_6955 = L11_6955 * L12_6956
    L10_6954 = L10_6954 + L11_6955
    L11_6955 = L8_6952.x
    L12_6956 = L9_6953.z
    L11_6955 = L11_6955 * L12_6956
    L10_6954 = L10_6954 + L11_6955
    L5_6949.x = L10_6954
    L10_6954 = L5_6949.y
    L11_6955 = L6_6950.y
    L12_6956 = L9_6953.x
    L11_6955 = L11_6955 * L12_6956
    L10_6954 = L10_6954 + L11_6955
    L11_6955 = L7_6951.y
    L12_6956 = L9_6953.y
    L11_6955 = L11_6955 * L12_6956
    L10_6954 = L10_6954 + L11_6955
    L11_6955 = L8_6952.y
    L12_6956 = L9_6953.z
    L11_6955 = L11_6955 * L12_6956
    L10_6954 = L10_6954 + L11_6955
    L5_6949.y = L10_6954
    L10_6954 = L5_6949.z
    L11_6955 = L6_6950.z
    L12_6956 = L9_6953.x
    L11_6955 = L11_6955 * L12_6956
    L10_6954 = L10_6954 + L11_6955
    L11_6955 = L7_6951.z
    L12_6956 = L9_6953.y
    L11_6955 = L11_6955 * L12_6956
    L10_6954 = L10_6954 + L11_6955
    L11_6955 = L8_6952.z
    L12_6956 = L9_6953.z
    L11_6955 = L11_6955 * L12_6956
    L10_6954 = L10_6954 + L11_6955
    L5_6949.z = L10_6954
    L10_6954 = L5_6949
    L11_6955 = g_Vectors
    L11_6955 = L11_6955.temp_v1
    L12_6956 = g_Vectors
    L12_6956 = L12_6956.temp_v2
    L13_6957 = CopyVector
    L13_6957(L12_6956, L4_6948.Direction)
    L13_6957 = L12_6956.x
    if L13_6957 == 0 then
      L13_6957 = L12_6956.y
      if L13_6957 == 0 then
        L13_6957 = L12_6956.z
        if L13_6957 == 0 then
          L12_6956.y = 1
        end
      end
    end
    L13_6957 = L6_6950.x
    L13_6957 = L13_6957 * L12_6956.x
    L13_6957 = L13_6957 + L7_6951.x * L12_6956.y
    L13_6957 = L13_6957 + L8_6952.x * L12_6956.z
    L11_6955.x = L13_6957
    L13_6957 = L6_6950.y
    L13_6957 = L13_6957 * L12_6956.x
    L13_6957 = L13_6957 + L7_6951.y * L12_6956.y
    L13_6957 = L13_6957 + L8_6952.y * L12_6956.z
    L11_6955.y = L13_6957
    L13_6957 = L6_6950.z
    L13_6957 = L13_6957 * L12_6956.x
    L13_6957 = L13_6957 + L7_6951.z * L12_6956.y
    L13_6957 = L13_6957 + L8_6952.z * L12_6956.z
    L11_6955.z = L13_6957
    L13_6957 = EmptyString
    L13_6957 = L13_6957(L4_6948.ParticleEffect)
    if not L13_6957 then
      L13_6957 = {}
      L13_6957.Scale = L4_6948.EffectScale
      A0_6944.FXSlot = A0_6944:LoadParticleEffect(-1, L4_6948.ParticleEffect, L13_6957)
      A0_6944:SetSlotPosAndDir(A0_6944.FXSlot, L4_6948.vOffset, L11_6955)
    end
    L13_6957 = g_gameRules
    L13_6957 = L13_6957.game
    L13_6957 = L13_6957.GetHitTypeId
    L13_6957 = L13_6957(L13_6957, "explosion")
    g_gameRules:CreateExplosion(A0_6944.shooterId, A0_6944.id, L4_6948.Damage, L10_6954, L11_6955, L4_6948.Radius, nil, L4_6948.Pressure, L4_6948.HoleSize, nil, nil, nil, nil, nil, L13_6957)
  end
  L5_6949 = A0_6944
  L4_6948 = A0_6944.RemoveDecals
  L4_6948(L5_6949)
  L5_6949 = A0_6944
  L4_6948 = A0_6944.SetCurrentSlot
  L6_6950 = 1
  L4_6948(L5_6949, L6_6950)
  L5_6949 = A0_6944
  L4_6948 = A0_6944.PhysicalizeThis
  L6_6950 = 1
  L4_6948(L5_6949, L6_6950)
  L5_6949 = A0_6944
  L4_6948 = A0_6944.AwakePhysics
  L6_6950 = 1
  L4_6948(L5_6949, L6_6950)
  L4_6948 = A0_6944.bScannable
  if L4_6948 == 1 then
    L4_6948 = Game
    L4_6948 = L4_6948.RemoveTacticalEntity
    L5_6949 = A0_6944.id
    L6_6950 = eTacticalEntity_Story
    L4_6948(L5_6949, L6_6950)
  end
end
function InteractiveEntity.SetProgress(A0_6958)
  if A0_6958:GetState() ~= "Destroyed" then
    if A0_6958.Properties.ScreenFunctions.bHasScreenFunction == 1 and A0_6958.Properties.ScreenFunctions.Type.bProgressBar == 1 then
      if A0_6958.progress <= 100 then
        if A0_6958:MaterialFlashInvoke(0, A0_6958.Properties.ScreenFunctions.FlashMatId, 0, "SetProgress", A0_6958.progress) == "" then
          Log("Invalid Material ID! ID" .. A0_6958.Properties.ScreenFunctions.FlashMatId .. "on Entity " .. A0_6958:GetName() .. " is not a flash material.")
        end
        A0_6958.progress = A0_6958.progress + 1
        A0_6958:ActivateOutput("Progress", A0_6958.progress)
      end
    else
      Log("No Progressbar Type!")
    end
  end
end
function InteractiveEntity.SetCurrentSlot(A0_6959, A1_6960)
  if A1_6960 == 0 then
    A0_6959:DrawSlot(0, 1)
    A0_6959:DrawSlot(1, 0)
    A0_6959:DrawSlot(2, 0)
  elseif A1_6960 == 1 then
    A0_6959:DrawSlot(0, 0)
    A0_6959:DrawSlot(1, 1)
    A0_6959:DrawSlot(2, 0)
  elseif A1_6960 == 2 then
    A0_6959:DrawSlot(0, 0)
    A0_6959:DrawSlot(1, 0)
    A0_6959:DrawSlot(2, 1)
  end
  A0_6959.currentSlot = A1_6960
end
function InteractiveEntity.Server.OnInit(A0_6961)
  if not A0_6961.bInitialized then
    A0_6961:OnReset()
    A0_6961.bInitialized = 1
  end
end
function InteractiveEntity.Client.OnInit(A0_6962)
  if not A0_6962.bInitialized then
    A0_6962:OnReset()
    A0_6962.bInitialized = 1
  end
  A0_6962:CacheResources()
end
function InteractiveEntity.CacheResources(A0_6963)
  local L1_6964
  L1_6964 = A0_6963.PreLoadParticleEffect
  L1_6964(A0_6963, A0_6963.Properties.Effect.ParticleEffect)
  L1_6964 = A0_6963.PreLoadParticleEffect
  L1_6964(A0_6963, A0_6963.Properties.Destruction.ParticleEffect)
  L1_6964 = A0_6963.Properties
  L1_6964 = L1_6964.ChangeMaterial
  L1_6964 = L1_6964.fileMaterial
  if not EmptyString(L1_6964) then
    Game.CacheResource("InteractiveEntity.lua", L1_6964, eGameCacheResourceType_Material, 0)
  end
end
function InteractiveEntity.Event_TurnedOn(A0_6965)
  if A0_6965.bScannable == 1 then
    Game.AddTacticalEntity(A0_6965.id, eTacticalEntity_Story)
  end
  BroadcastEvent(A0_6965, "TurnedOn")
  A0_6965:GotoState("TurnedOn")
end
function InteractiveEntity.Event_TurnedOff(A0_6966)
  if A0_6966.bScannable == 1 then
    Game.RemoveTacticalEntity(A0_6966.id, eTacticalEntity_Story)
  end
  BroadcastEvent(A0_6966, "TurnedOff")
  A0_6966:GotoState("TurnedOff")
end
function InteractiveEntity.Event_Destroyed(A0_6967)
  if A0_6967.bScannable == 1 then
    Game.RemoveTacticalEntity(A0_6967.id, eTacticalEntity_Story)
  end
  BroadcastEvent(A0_6967, "Destroyed")
  A0_6967:GotoState("Destroyed")
end
function InteractiveEntity.Event_Hit(A0_6968, A1_6969)
  BroadcastEvent(A0_6968, "Hit")
end
function InteractiveEntity.Event_SetProgress(A0_6970)
  A0_6970:SetProgress()
end
function InteractiveEntity.Event_ResetProgress(A0_6971)
  local L1_6972
  A0_6971.progress = 0
  L1_6972 = A0_6971.Properties
  L1_6972 = L1_6972.ScreenFunctions
  if L1_6972.bHasScreenFunction == 1 and L1_6972.Type.bProgressBar == 1 then
    A0_6971:MaterialFlashInvoke(0, L1_6972.FlashMatId, 0, "SetProgress", 0)
  end
end
function InteractiveEntity.Event_Use(A0_6973, A1_6974)
  A0_6973:OnUsed(A0_6973, 0)
end
function InteractiveEntity.Event_Hide(A0_6975)
  if A0_6975.bScannable == 1 then
    Game.RemoveTacticalEntity(A0_6975.id, eTacticalEntity_Story)
  end
  A0_6975:Hide(1)
end
function InteractiveEntity.Event_UnHide(A0_6976)
  A0_6976:Hide(0)
  if A0_6976.bScannable == 1 then
    Game.AddTacticalEntity(A0_6976.id, eTacticalEntity_Story)
  end
end
function InteractiveEntity.Event_EnableUsable(A0_6977)
  local L1_6978
  A0_6977.bUsable = 1
end
function InteractiveEntity.Event_DisableUsable(A0_6979)
  local L1_6980
  A0_6979.bUsable = 0
end
function InteractiveEntity.Event_EnableScannable(A0_6981)
  A0_6981.bScannable = 1
  Game.AddTacticalEntity(A0_6981.id, eTacticalEntity_Story)
end
function InteractiveEntity.Event_DisableScannable(A0_6982)
  A0_6982.bScannable = 0
  Game.RemoveTacticalEntity(A0_6982.id, eTacticalEntity_Story)
end
InteractiveEntity.Server.TurnedOn = {
  OnBeginState = function(A0_6983)
    A0_6983:Play()
    A0_6983:DoEffect()
    A0_6983:DoSpawn()
    A0_6983:DoMaterialChange()
    if A0_6983.Properties.OnUse.bChangeModelOnUse ~= 0 then
      A0_6983:SetCurrentSlot(2)
    end
    BroadcastEvent(A0_6983, "TurnedOn")
  end,
  OnEndState = function(A0_6984)
    local L1_6985
  end
}
InteractiveEntity.Server.TurnedOff = {
  OnBeginState = function(A0_6986)
    A0_6986:RemoveEffect()
    if A0_6986.currentMat ~= nil then
      A0_6986:SetMaterial(A0_6986.currentMat)
    end
    if A0_6986.Properties.OnUse.bChangeModelOnUse ~= 0 then
      A0_6986:SetCurrentSlot(0)
    end
    BroadcastEvent(A0_6986, "TurnedOff")
  end,
  OnEndState = function(A0_6987)
    local L1_6988
  end
}
InteractiveEntity.Server.Destroyed = {
  OnBeginState = function(A0_6989)
    A0_6989:StopIdleSound()
    A0_6989:RemoveEffect()
    A0_6989:Explode()
    A0_6989:ActivateOutput("Destroyed", 1)
    A0_6989.allClients:DeactivateTacticalInfo()
  end,
  OnEndState = function(A0_6990)
    local L1_6991
  end
}
function InteractiveEntity.Client.DeactivateTacticalInfo(A0_6992)
  if A0_6992.bScannable == 1 then
    Game.RemoveTacticalEntity(A0_6992.id, eTacticalEntity_Story)
  end
end
function InteractiveEntity.HasBeenScanned(A0_6993)
  if A0_6993.bScannable == 1 then
    A0_6993:ActivateOutput("Scanned", true)
  end
end
function InteractiveEntity.GetMaxHealth(A0_6994)
  return A0_6994.Properties.fHealth
end
InteractiveEntity.FlowEvents = {
  Inputs = {
    TurnedOn = {
      InteractiveEntity.Event_TurnedOn,
      "bool"
    },
    TurnedOff = {
      InteractiveEntity.Event_TurnedOff,
      "bool"
    },
    Destroyed = {
      InteractiveEntity.Event_Destroyed,
      "bool"
    },
    Hit = {
      InteractiveEntity.Event_Hit,
      "bool"
    },
    SetProgress = {
      InteractiveEntity.Event_SetProgress,
      "bool"
    },
    ResetProgress = {
      InteractiveEntity.Event_ResetProgress,
      "bool"
    },
    Use = {
      InteractiveEntity.Event_Use,
      "bool"
    },
    Hide = {
      InteractiveEntity.Event_Hide,
      "bool"
    },
    UnHide = {
      InteractiveEntity.Event_UnHide,
      "bool"
    },
    EnableUsable = {
      InteractiveEntity.Event_EnableUsable,
      "bool"
    },
    DisableUsable = {
      InteractiveEntity.Event_DisableUsable,
      "bool"
    },
    EnableScannable = {
      InteractiveEntity.Event_EnableScannable,
      "bool"
    },
    DisableScannable = {
      InteractiveEntity.Event_DisableScannable,
      "bool"
    }
  },
  Outputs = {
    TurnedOn = "bool",
    TurnedOff = "bool",
    Destroyed = "bool",
    Hit = "bool",
    Progress = "float",
    Used = "bool",
    Scanned = "bool"
  }
}
