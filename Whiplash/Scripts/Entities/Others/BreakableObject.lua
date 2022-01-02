Script.ReloadScript("Scripts/Default/Entities/Others/BasicEntity.lua")
BreakableObject = {
  Properties = {
    soclasses_SmartObjectClass = "",
    bAutoGenAIHidePts = 0,
    object_Model = "",
    nDamage = 10,
    fBreakImpuls = 7,
    nExplosionRadius = 5,
    bExplosion = 1,
    bTriggeredOnlyByExplosion = 0,
    impulsivePressure = 200,
    rmin = 2,
    rmax = 20.5,
    Parts = {
      bRigidBody = 0,
      LifeTime = 20,
      Density = 100
    },
    DyingSound = {
      sndFilename = "",
      InnerRadius = 1,
      OuterRadius = 10,
      nVolume = 255
    },
    Physics = {
      bRigidBody = 0,
      bRigidBodyActive = 1,
      bActivateOnDamage = 0,
      bResting = 0,
      Density = -1,
      Mass = 700,
      vector_Impulse = {
        x = 0,
        y = 0,
        z = 0
      },
      max_time_step = 0.01,
      sleep_speed = 0.04,
      damping = 0,
      water_damping = 0,
      water_resistance = 1000,
      water_density = 1000,
      Type = "Unknown",
      bFixedDamping = 0,
      HitDamageScale = 0
    }
  },
  bBreakByCar = 1,
  dead = 0,
  deathVector = {
    x = 0,
    y = 0,
    z = 1
  },
  isLoading = nil,
  StopLastPhysicsSounds = BasicEntity.StopLastPhysicsSounds,
  OnStopRollSlideContact = BasicEntity.OnStopRollSlideContact
}
function BreakableObject.OnInit(A0_6608)
  A0_6608:RegisterState("Active")
  A0_6608:RegisterState("Dead")
  A0_6608:Activate(0)
  A0_6608:TrackColliders(1)
  A0_6608.dead = 0
  A0_6608:OnReset()
end
function BreakableObject.OnPropertyChange(A0_6609)
  A0_6609:OnReset()
end
function BreakableObject.OnShutDown(A0_6610)
  local L1_6611
end
function BreakableObject.SetPhysicsProperties(A0_6612)
  local L1_6613, L2_6614, L3_6615, L4_6616, L5_6617
  L1_6613 = A0_6612.Properties
  L1_6613 = L1_6613.Physics
  L1_6613 = L1_6613.bRigidBody
  if L1_6613 ~= 1 then
    return
  end
  L1_6613, L2_6614, L3_6615 = nil, nil, nil
  L4_6616 = A0_6612.Properties
  L4_6616 = L4_6616.Physics
  L1_6613 = L4_6616.Mass
  L4_6616 = A0_6612.Properties
  L4_6616 = L4_6616.Physics
  L2_6614 = L4_6616.Density
  L5_6617 = A0_6612
  L4_6616 = A0_6612.CreateRigidBody
  L4_6616(L5_6617, L2_6614, L1_6613, -1)
  L4_6616 = A0_6612.bCharacter
  if L4_6616 == 1 then
    L5_6617 = A0_6612
    L4_6616 = A0_6612.PhysicalizeCharacter
    L4_6616(L5_6617, L1_6613, 0, 0, 0)
  end
  L4_6616 = {}
  L5_6617 = A0_6612.Properties
  L5_6617 = L5_6617.Physics
  L5_6617 = L5_6617.max_time_step
  L4_6616.max_time_step = L5_6617
  L5_6617 = A0_6612.Properties
  L5_6617 = L5_6617.Physics
  L5_6617 = L5_6617.sleep_speed
  L4_6616.sleep_speed = L5_6617
  L5_6617 = A0_6612.Properties
  L5_6617 = L5_6617.Physics
  L5_6617 = L5_6617.damping
  L4_6616.damping = L5_6617
  L5_6617 = A0_6612.Properties
  L5_6617 = L5_6617.Physics
  L5_6617 = L5_6617.water_damping
  L4_6616.water_damping = L5_6617
  L5_6617 = A0_6612.Properties
  L5_6617 = L5_6617.Physics
  L5_6617 = L5_6617.water_resistance
  L4_6616.water_resistance = L5_6617
  L5_6617 = A0_6612.Properties
  L5_6617 = L5_6617.Physics
  L5_6617 = L5_6617.water_density
  L4_6616.water_density = L5_6617
  L4_6616.mass = L1_6613
  L4_6616.density = L2_6614
  L5_6617 = A0_6612.Properties
  L5_6617 = L5_6617.Physics
  L5_6617 = L5_6617.bRigidBodyActive
  A0_6612.bRigidBodyActive = L5_6617
  L5_6617 = A0_6612.bRigidBodyActive
  if L5_6617 ~= 1 then
    L4_6616.mass = 0
    L4_6616.density = 0
  end
  L5_6617 = {}
  L5_6617.flags_mask = pef_fixed_damping
  L5_6617.flags = 0
  if A0_6612.Properties.Physics.bFixedDamping ~= 0 then
    L5_6617.flags = pef_fixed_damping
  end
  A0_6612:SetPhysicParams(PHYSICPARAM_SIMULATION, L4_6616)
  A0_6612:SetPhysicParams(PHYSICPARAM_BUOYANCY, A0_6612.Properties.Physics)
  A0_6612:SetPhysicParams(PHYSICPARAM_FLAGS, L5_6617)
  if A0_6612.Properties.Physics.bResting == 0 then
    A0_6612:Activate(1)
    A0_6612:AwakePhysics(1)
  else
    A0_6612:Activate(0)
    A0_6612:AwakePhysics(0)
  end
  if PhysicsSoundsTable then
    A0_6612.ContactSounds_Soft = {}
    if PhysicsSoundsTable.Soft and PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type] then
      if PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Impact then
        A0_6612.ContactSounds_Soft.Impact = Sound.Load3DSound(PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Impact[1], PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Impact[2], PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Impact[6], 255, PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Impact[4], PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Impact[5])
        A0_6612.ContactSounds_Soft.ImpactVolume = PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Impact[3]
      end
      if PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Roll then
        A0_6612.ContactSounds_Soft.Roll = Sound.Load3DSound(PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Roll[1], PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Roll[2], PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Roll[6], 255, PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Roll[4], PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Roll[5])
        A0_6612.ContactSounds_Soft.RollVolume = PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Roll[3]
        Sound.SetSoundLoop(A0_6612.ContactSounds_Soft.Roll, 1)
      end
      if PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Slide then
        A0_6612.ContactSounds_Soft.Slide = Sound.Load3DSound(PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Slide[1], PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Slide[2], PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Slide[6], 255, PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Slide[4], PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Slide[5])
        A0_6612.ContactSounds_Soft.SlideVolume = PhysicsSoundsTable.Soft[A0_6612.Properties.Physics.Type].Slide[3]
        Sound.SetSoundLoop(A0_6612.ContactSounds_Soft.Slide, 1)
      end
    else
    end
    A0_6612.ContactSounds_Hard = {}
    if PhysicsSoundsTable.Hard and PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type] then
      if PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Impact then
        A0_6612.ContactSounds_Hard.Impact = Sound.Load3DSound(PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Impact[1], PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Impact[2], PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Impact[6], 255, PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Impact[4], PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Impact[5])
        A0_6612.ContactSounds_Hard.ImpactVolume = PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Impact[3]
      end
      if PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Roll then
        A0_6612.ContactSounds_Hard.Roll = Sound.Load3DSound(PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Roll[1], PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Roll[2], PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Roll[6], 255, PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Roll[4], PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Roll[5])
        A0_6612.ContactSounds_Hard.RollVolume = PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Roll[3]
        Sound.SetSoundLoop(A0_6612.ContactSounds_Hard.Roll, 1)
      end
      if PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Slide then
        A0_6612.ContactSounds_Hard.Slide = Sound.Load3DSound(PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Slide[1], PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Slide[2], PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Slide[6], 255, PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Slide[4], PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Slide[5])
        A0_6612.ContactSounds_Hard.SlideVolume = PhysicsSoundsTable.Hard[A0_6612.Properties.Physics.Type].Slide[3]
        Sound.SetSoundLoop(A0_6612.ContactSounds_Hard.Slide, 1)
      end
    else
    end
  else
  end
end
function BreakableObject.Event_Die(A0_6618, A1_6619)
  A0_6618:GoDead()
  BroadcastEvent(A0_6618, "Die")
end
function BreakableObject.Event_IsDead(A0_6620, A1_6621)
  BroadcastEvent(A0_6620, "IsDead")
end
function BreakableObject.OnReset(A0_6622)
  A0_6622:Activate(0)
  A0_6622:TrackColliders(1)
  A0_6622.dead = 0
  if A0_6622.Properties.object_Model == "" then
    return
  end
  if A0_6622.Properties.object_Model ~= A0_6622.CurrModel then
    A0_6622.CurrModel = A0_6622.Properties.object_Model
    A0_6622:LoadBreakable(A0_6622.Properties.object_Model)
    A0_6622:CreateStaticEntity(10, -2)
  end
  if A0_6622.DyingSound and Sound.IsPlaying(A0_6622.DyingSound) then
    Sound.StopSound(A0_6622.DyingSound)
  end
  if A0_6622.Properties.DyingSound.sndFilename ~= "" then
    A0_6622.DyingSound = Sound.Load3DSound(A0_6622.Properties.DyingSound.sndFilename, SOUND_DEFAULT_3D)
    if A0_6622.DyingSound then
      Sound.SetSoundPosition(A0_6622.DyingSound, A0_6622:GetPos())
      Sound.SetSoundVolume(A0_6622.DyingSound, A0_6622.Properties.DyingSound.nVolume)
      Sound.SetMinMaxDistance(A0_6622.DyingSound, A0_6622.Properties.DyingSound.InnerRadius, A0_6622.Properties.DyingSound.OuterRadius)
    end
  else
    A0_6622.DyingSound = nil
  end
  A0_6622.curr_damage = A0_6622.Properties.nDamage
  if A0_6622.dead == 0 then
    A0_6622:GoAlive()
    A0_6622:SetPhysicsProperties()
  else
    A0_6622:GoDead()
  end
  if A0_6622.Properties.bAutoGenAIHidePts == 1 then
    A0_6622:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 0)
  else
    A0_6622:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 2)
  end
end
function BreakableObject.GoAlive(A0_6623)
  A0_6623:EnablePhysics(1)
  A0_6623:DrawObject(0, 1)
  A0_6623:DrawObject(1, 0)
  A0_6623:GotoState("Active")
end
function BreakableObject.GoDead(A0_6624, A1_6625)
  if A1_6625 then
    A0_6624.deathVector = new(A1_6625)
  else
    A0_6624.deathVector = {
      x = 0,
      y = 0,
      z = 1
    }
  end
  if A0_6624.DyingSound and not Sound.IsPlaying(A0_6624.DyingSound) then
    Sound.PlaySound(A0_6624.DyingSound)
  end
  A0_6624:GotoState("Dead")
  A0_6624:SetTimer(30)
end
function BreakableObject.OnDamage(A0_6626, A1_6627)
  if A0_6626.dead == 1 then
    return
  end
  if A0_6626.Properties.Physics.bRigidBody then
    A0_6626:AwakePhysics(1)
    if A1_6627.ipart and A1_6627.ipart >= 0 then
      A0_6626:AddImpulse(A1_6627.ipart, A1_6627.pos, A1_6627.dir, A1_6627.impact_force_mul)
    end
  end
  if A1_6627 then
    A0_6626.curr_damage = A0_6626.curr_damage - A1_6627.damage
  end
  if 0 >= A0_6626.curr_damage then
    A0_6626:GoDead(A1_6627.dir)
    A0_6626.NoDecals = 1
    A1_6627.target_material = nil
  end
end
BreakableObject.Active = {
  OnBeginState = function(A0_6628)
    local L1_6629
  end,
  OnContact = function(A0_6630, A1_6631)
    if A1_6631.driverT and A0_6630.bBreakByCar == 1 then
      A0_6630:GoDead()
    end
  end,
  OnDamage = BreakableObject.OnDamage,
  OnCollide = BasicEntity.OnCollide
}
BreakableObject.Dead = {
  OnBeginState = function(A0_6632)
    A0_6632.dead = 1
    if A0_6632.isLoading == nil then
      A0_6632:Event_IsDead()
      A0_6632:BreakEntity(A0_6632.deathVector, A0_6632.Properties.fBreakImpuls, A0_6632.Properties.Parts.bRigidBody, A0_6632.Properties.Parts.LifeTime, A0_6632.Properties.Parts.Density)
    end
    A0_6632:DrawObject(0, 0)
    A0_6632:DrawObject(1, 1)
    A0_6632:EnablePhysics(0)
  end,
  OnTimer = function(A0_6633)
    A0_6633:RemoveDecals()
  end
}
function BreakableObject.OnSave(A0_6634, A1_6635)
  A1_6635.dead = A0_6634.dead
end
function BreakableObject.OnLoad(A0_6636, A1_6637)
  A0_6636.dead = A1_6637.dead
  if A0_6636.dead == 0 then
    A0_6636:GoAlive()
  else
    A0_6636.isLoading = 1
    A0_6636:GoDead()
  end
end
BreakableObject.FlowEvents = {
  Inputs = {
    Die = {
      BreakableObject.Event_Die,
      "bool"
    },
    IsDead = {
      BreakableObject.Event_IsDead,
      "bool"
    }
  },
  Outputs = {Die = "bool", IsDead = "bool"}
}
MakeUsable(BreakableObject)
MakePickable(BreakableObject)
MakeTargetableByAI(BreakableObject)
MakeKillable(BreakableObject)
