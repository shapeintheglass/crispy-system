local L0_4787, L1_4788
L0_4787 = {}
L1_4788 = {}
L0_4787.Client = L1_4788
L1_4788 = {}
L0_4787.Server = L1_4788
L1_4788 = {}
L1_4788.bLocked = 0
L0_4787.PropertiesInstance = L1_4788
L1_4788 = {}
L1_4788.soclasses_SmartObjectClass = "Door"
L1_4788.fileModel = "engine/engineassets/objects/default.cgf"
L1_4788.ModelSubObject = ""
L1_4788.fileModelDestroyed = ""
L1_4788.DestroyedSubObject = ""
L1_4788.fHealth = 500
L1_4788.Mass = 50
L1_4788.bUsePortal = 1
L1_4788.Limits = {
  fUseDistance = 2,
  OpeningRange = 90,
  MaxForce = 0,
  MaxBend = 0,
  Damping = 0,
  fSpeed = 1,
  fAutoCloseTime = 0,
  bOpenFromFront = 1,
  bOpenFromBack = 1,
  InitialAngle = 0,
  bIsBreachable = 1
}
L1_4788.Breakage = {
  fLifeTime = 10,
  fExplodeImpulse = 0,
  bSurfaceEffects = 1
}
L1_4788.Destruction = {
  bExplode = 1,
  ParticleEffect = "breakable_objects.tree_break.small",
  EffectScale = 1,
  Radius = 1,
  Pressure = 12,
  Damage = 0,
  Decal = "",
  Direction = {
    x = 0,
    y = 0,
    z = -1
  }
}
L1_4788.Vulnerability = {
  fDamageTreshold = 0,
  bExplosion = 1,
  bCollision = 1,
  bMelee = 1,
  bBullet = 1,
  bOther = 1
}
L1_4788.Sound = {
  soundOpenSound = "Sounds/physics:objects/doors:metal_wire_door_open",
  soundCloseSound = "Sounds/physics:objects/doors:metal_wire_door_close",
  soundLockedSound = "Sounds/physics:objects/doors:metal_wire_door_locked"
}
L0_4787.Properties = L1_4788
L1_4788 = {}
L1_4788.impulse = {
  x = 0,
  y = 0,
  z = 0
}
L1_4788.pos = {
  x = 0,
  y = 0,
  z = 0
}
L0_4787.LastHit = L1_4788
L1_4788 = {}
L1_4788.Icon = "door.bmp"
L1_4788.ShowBounds = 1
L0_4787.Editor = L1_4788
L1_4788 = {
  "Opened",
  "Closed",
  "Destroyed"
}
L0_4787.States = L1_4788
L0_4787.advancedDoor = true
AdvancedDoor = L0_4787
L0_4787 = AdvancedDoor
function L1_4788(A0_4789)
  AI.SetSmartObjectState(A0_4789.id, "Closed")
  if not EmptyString(A0_4789.Properties.fileModel) then
    A0_4789:LoadSubObject(0, A0_4789.Properties.fileModel, A0_4789.Properties.ModelSubObject)
  end
  if not EmptyString(A0_4789.Properties.fileModelDestroyed) then
    A0_4789:LoadSubObject(1, A0_4789.Properties.fileModelDestroyed, A0_4789.Properties.DestroyedSubObject)
  elseif not EmptyString(A0_4789.Properties.DestroyedSubObject) then
    A0_4789:LoadSubObject(1, A0_4789.Properties.fileModel, A0_4789.Properties.DestroyedSubObject)
  end
  A0_4789.openingrange = A0_4789.Properties.Limits.OpeningRange
  A0_4789.openingrange = clamp(A0_4789.Properties.Limits.OpeningRange, -175, 175)
  A0_4789:GetAngles(A0_4789.rad)
  A0_4789:GetAngles(A0_4789.initialrot)
  A0_4789:GetPos(A0_4789.initialpos)
  A0_4789.angle.z = A0_4789.rad.z * g_Rad2Deg
  A0_4789.defaultangle = A0_4789.angle.z
  A0_4789:UpdateImpulsePos()
  A0_4789:SetCurrentSlot(0)
  A0_4789:PhysicalizeThis(0, 0)
  A0_4789:EnablePhysics(true)
  A0_4789:AwakePhysics(0)
  A0_4789:Activate(0)
  A0_4789.bUpdate = 0
  A0_4789.lasttime = 0
  A0_4789.bOpenNow = 0
  A0_4789.bBreachNow = 0
  A0_4789.lockbroken = 0
  A0_4789.openpercentage = 0
  A0_4789.health = A0_4789.Properties.fHealth
  A0_4789.locked = A0_4789.PropertiesInstance.bLocked
  if A0_4789.Properties.bUsePortal == 0 then
    System.ActivatePortal(A0_4789:GetWorldPos(), 1, A0_4789.id)
  end
  if A0_4789.locked == 1 then
    AI.ModifySmartObjectStates(A0_4789.id, "Locked")
  end
  A0_4789:CheckInitalAngle()
end
L0_4787.OnReset = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4790)
  local L1_4791, L2_4792
  L1_4791 = A0_4790.Properties
  L1_4791 = L1_4791.Limits
  L1_4791 = L1_4791.InitialAngle
  if L1_4791 ~= 0 then
    if L1_4791 < 0 then
      L2_4792 = A0_4790.openingrange
    else
      if not (L2_4792 < 0) then
        if L1_4791 > 0 then
          L2_4792 = A0_4790.openingrange
        end
    end
    elseif L2_4792 > 0 then
      L2_4792 = A0_4790.PhysicalizeThis
      L2_4792(A0_4790, 0, 1)
      L2_4792 = A0_4790.EnablePhysics
      L2_4792(A0_4790, true)
      L2_4792 = A0_4790.AwakePhysics
      L2_4792(A0_4790, 1)
      L2_4792 = A0_4790.Activate
      L2_4792(A0_4790, 1)
      L2_4792 = A0_4790.Apply
      L2_4792(A0_4790)
      L2_4792 = {}
      L2_4792.x = 0
      L2_4792.y = 0
      L2_4792.z = 0
      CopyVector(L2_4792, A0_4790.initialrot)
      L2_4792.z = L2_4792.z + L1_4791 * g_Deg2Rad
      A0_4790:SetAngles(L2_4792)
      A0_4790:UpdateImpulsePos()
      if A0_4790.Properties.bUsePortal == 1 then
        System.ActivatePortal(A0_4790:GetWorldPos(), 0, A0_4790.id)
      end
      A0_4790:GotoState("Opened")
    end
  else
    L2_4792 = A0_4790.GotoState
    L2_4792(A0_4790, "Closed")
  end
end
L0_4787.CheckInitalAngle = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4793)
  local L1_4794
  L1_4794 = A0_4793.openpercentage
  return L1_4794
end
L0_4787.GetOpenPercentage = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4795)
  A0_4795.impulsepos = A0_4795:GetWorldPos()
  if A0_4795:GetLocalBBox().x > 0.1 then
    A0_4795.leftsided = 0
    ;({
      x = 0,
      y = 0,
      z = 0
    }).x = A0_4795:GetLocalBBox().x
  else
    A0_4795.leftsided = 1
    ;({
      x = 0,
      y = 0,
      z = 0
    }).x = A0_4795:GetLocalBBox().x
  end
  ;({
    x = 0,
    y = 0,
    z = 0
  }).y = A0_4795:GetLocalBBox().y / 2
  ;({
    x = 0,
    y = 0,
    z = 0
  }).z = A0_4795:GetLocalBBox().z / 2
  A0_4795.impulsepos.x = A0_4795.impulsepos.x + A0_4795:GetDirectionVector(0).x * ({
    x = 0,
    y = 0,
    z = 0
  }).x + A0_4795:GetDirectionVector(1).x * ({
    x = 0,
    y = 0,
    z = 0
  }).y + A0_4795:GetDirectionVector(2).x * ({
    x = 0,
    y = 0,
    z = 0
  }).z
  A0_4795.impulsepos.y = A0_4795.impulsepos.y + A0_4795:GetDirectionVector(0).y * ({
    x = 0,
    y = 0,
    z = 0
  }).x + A0_4795:GetDirectionVector(1).y * ({
    x = 0,
    y = 0,
    z = 0
  }).y + A0_4795:GetDirectionVector(2).y * ({
    x = 0,
    y = 0,
    z = 0
  }).z
  A0_4795.impulsepos.z = A0_4795.impulsepos.z + A0_4795:GetDirectionVector(0).z * ({
    x = 0,
    y = 0,
    z = 0
  }).x + A0_4795:GetDirectionVector(1).z * ({
    x = 0,
    y = 0,
    z = 0
  }).y + A0_4795:GetDirectionVector(2).z * ({
    x = 0,
    y = 0,
    z = 0
  }).z
end
L0_4787.UpdateImpulsePos = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4796)
  local L1_4797
  L1_4797 = {}
  L1_4797.pivot = {}
  L1_4797.frame0 = {}
  L1_4797.frame1 = {}
  CopyVector(L1_4797.pivot, A0_4796.initialpos)
  CopyVector(L1_4797.frame1, A0_4796.initialrot)
  CopyVector(L1_4797.frame0, L1_4797.frame1)
  L1_4797.frame0_inner = {
    x = 0,
    y = 90,
    z = 0
  }
  L1_4797.frame1_inner = {
    x = 0,
    y = 90,
    z = 0
  }
  if 0 < A0_4796.openingrange then
    L1_4797.xmin = -A0_4796.openingrange
    L1_4797.xmax = 0
  else
    L1_4797.xmin = 0
    L1_4797.xmax = -A0_4796.openingrange
  end
  L1_4797.yzmin = 0
  L1_4797.yzmax = 0
  L1_4797.ignore_buddy = 1
  L1_4797.damping = A0_4796.Properties.Limits.Damping
  L1_4797.sensor_size = A0_4796.Properties.radius
  L1_4797.max_pull_force = A0_4796.Properties.Limits.MaxForce
  L1_4797.max_bend_torque = A0_4796.Properties.Limits.MaxBend
  idConstr = A0_4796:SetPhysicParams(PHYSICPARAM_CONSTRAINT, L1_4797)
end
L0_4787.Apply = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4798)
  if A0_4798.bUpdate == 1 then
    if A0_4798.bWasReset == 1 then
      A0_4798:PhysicalizeThis(0, 1)
      A0_4798:EnablePhysics(true)
      A0_4798:AwakePhysics(1)
      A0_4798:Activate(1)
      A0_4798:Apply()
      A0_4798.bWasReset = 0
    elseif A0_4798.bOpenNow == 1 then
      A0_4798:OpenDoor(A0_4798.user, A0_4798.idx)
      A0_4798.bOpenNow = 0
    end
    A0_4798:GetAngles(A0_4798.rad)
    A0_4798.angle.z = A0_4798.rad.z * g_Rad2Deg
    if A0_4798.angle.z == A0_4798.lastangle then
      if A0_4798.lasttime == 0 then
        A0_4798.lasttime = System.GetCurrTime()
      end
      if System.GetCurrTime() - A0_4798.lasttime > 5 then
        A0_4798.lasttime = 0
        A0_4798.bUpdate = 0
      end
    end
    A0_4798.lastangle = A0_4798.angle.z
    A0_4798.openpercentage = math.abs(A0_4798.angle.z - A0_4798.defaultangle) / (math.abs(A0_4798.openingrange) / 100)
    if math.abs(A0_4798.angle.z - A0_4798.defaultangle) < 0.5 and A0_4798:GetState() ~= "Closed" then
      A0_4798:Play(0)
      A0_4798:GotoState("Closed")
    elseif math.abs(A0_4798.angle.z - A0_4798.defaultangle) > 0.5 and A0_4798:GetState() ~= "Opened" then
      A0_4798:GotoState("Opened")
    elseif 0.5 > 360 - math.abs(A0_4798.angle.z - A0_4798.defaultangle) and A0_4798:GetState() ~= "Closed" then
      A0_4798:SetAngles(A0_4798.initialrot)
      A0_4798:Play(0)
      A0_4798:GotoState("Closed")
    end
    if A0_4798.Properties.Limits.fAutoCloseTime ~= 0 and A0_4798:GetState() == "Opened" and A0_4798.iAutoCloseTimer == nil then
      A0_4798.iAutoCloseTimer = Script.SetTimerForFunction(A0_4798.Properties.Limits.fAutoCloseTime * 1000, "AdvancedDoor.AutoClose", A0_4798)
    end
  else
    A0_4798:GetAngles(A0_4798.rad)
    A0_4798.angle.z = A0_4798.rad.z * g_Rad2Deg
    if A0_4798.angle.z ~= A0_4798.lastangle then
      A0_4798.bUpdate = 1
    end
    A0_4798.lastangle = A0_4798.angle.z
  end
end
L0_4787.OnUpdate = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4799)
  if A0_4799:GetState() == "Opened" then
    A0_4799:Close()
  end
end
L0_4787.AutoClose = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4800, A1_4801, A2_4802)
  if A2_4802 ~= 1 then
    A0_4800.physics.Mass = -1
    A0_4800.physics.Density = -1
  else
    A0_4800.physics.Mass = A0_4800.Properties.Mass
  end
  A0_4800.physics.bCanBreakOthers = 1
  EntityCommon.PhysicalizeRigid(A0_4800, A1_4801, A0_4800.physics, A2_4802)
  A0_4800:SetPhysicParams(PHYSICPARAM_VELOCITY, {
    v = {
      x = 0,
      y = 0,
      z = 0
    }
  })
end
L0_4787.PhysicalizeThis = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4803, A1_4804)
  if A1_4804 == 0 then
    A0_4803:DrawSlot(0, 1)
    A0_4803:DrawSlot(1, 0)
  else
    A0_4803:DrawSlot(0, 0)
    A0_4803:DrawSlot(1, 1)
  end
  A0_4803.currentSlot = A1_4804
end
L0_4787.SetCurrentSlot = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4805)
  A0_4805:OnReset()
end
L0_4787.OnPropertyChange = L1_4788
L0_4787 = AdvancedDoor
L0_4787 = L0_4787.Server
function L1_4788(A0_4806)
  A0_4806.bUpdate = 1
  A0_4806.bWasReset = 0
  A0_4806.bWasDetached = 0
  A0_4806.idConstr = -1
  A0_4806.health = 0
  A0_4806.rad = {}
  A0_4806.angle = {}
  A0_4806.lasttime = 0
  A0_4806.lastangle = 0
  A0_4806.locked = 0
  A0_4806.span = 0
  A0_4806.openingrange = 0
  A0_4806.defaultangle = 0
  A0_4806.bOpenNow = 0
  A0_4806.bBreachNow = 0
  A0_4806.user = 0
  A0_4806.idx = 0
  A0_4806.sndid = nil
  A0_4806.lockbroken = 0
  A0_4806.leftsided = 0
  A0_4806.iAutoCloseTimer = nil
  A0_4806.initialrot = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_4806.initialpos = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_4806.impulsedir = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_4806.impulsepos = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_4806.tmp = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_4806.tmp_2 = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_4806.tmp_3 = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_4806.physics = {
    bRigidBody = 1,
    bRigidBodyActive = 1,
    bResting = 1,
    Density = -1,
    Mass = 100,
    Buoyancy = {
      water_density = 1000,
      water_damping = 0,
      water_resistance = 1000
    }
  }
  A0_4806.initialdir = A0_4806:GetDirectionVector(1)
  A0_4806:OnReset()
end
L0_4787.OnInit = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4807)
  if A0_4807.health <= 0 then
    return true
  else
    return false
  end
end
L0_4787.IsDead = L1_4788
L0_4787 = AdvancedDoor
L0_4787 = L0_4787.Server
function L1_4788(A0_4808, A1_4809)
  local L2_4810, L3_4811, L4_4812
  L3_4811 = A0_4808
  L2_4810 = A0_4808.GetState
  L2_4810 = L2_4810(L3_4811)
  if L2_4810 == "Destroyed" then
    return
  end
  A0_4808.bUpdate = 1
  L2_4810 = A1_4809.damage
  L3_4811 = A0_4808.Properties
  L3_4811 = L3_4811.Vulnerability
  L4_4812 = A1_4809.damage
  L4_4812 = L4_4812 >= A0_4808.Properties.Vulnerability.fDamageTreshold
  if L4_4812 and A1_4809.explosion then
    L4_4812 = NumberToBool(L3_4811.bExplosion)
  elseif L4_4812 and A1_4809.type == "collision" then
    L4_4812 = NumberToBool(L3_4811.bCollision)
  elseif L4_4812 and A1_4809.type == "bullet" then
    L4_4812 = NumberToBool(L3_4811.bBullet)
  elseif L4_4812 and A1_4809.type == "melee" then
    L4_4812 = NumberToBool(L3_4811.bMelee)
  else
    L4_4812 = L4_4812 and NumberToBool(L3_4811.bOther)
  end
  if L4_4812 then
    A0_4808.shooterId = A1_4809.shooterId
    BroadcastEvent(A0_4808, "Hit")
    if A1_4809.type == "collision" then
      L2_4810 = A0_4808:CheckCollision(A1_4809)
    end
    A0_4808.health = A0_4808.health - L2_4810
    if A0_4808:IsDead() then
      A0_4808:GotoState("Destroyed")
    end
  end
  if A1_4809.type == "melee" and NumberToBool(L3_4811.bMelee) then
    A0_4808.shooterId = A1_4809.shooterId
    L2_4810 = L2_4810 / 4
    if L2_4810 > 80 and A0_4808:GetState() == "Closed" then
      A0_4808:BreachDoor()
    end
  end
end
L0_4787.OnHit = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4813, A1_4814)
  CopyVector(A0_4813.LastHit.pos, A1_4814.pos)
  CopyVector(A0_4813.LastHit.impulse, A1_4814.dir)
  A0_4813.LastHit.impulse.x = A0_4813.LastHit.impulse.x * A1_4814.damage
  A0_4813.LastHit.impulse.y = A0_4813.LastHit.impulse.y * A1_4814.damage
  A0_4813.LastHit.impulse.z = A0_4813.LastHit.impulse.z * A1_4814.damage
  return LengthVector(A1_4814.weapon:GetVelocity()) * A1_4814.weapon:GetMass() / 1.5
end
L0_4787.CheckCollision = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4815, A1_4816)
  if A0_4815.Properties.bIsBreachable == 0 or not A0_4815:CheckBreachDirection(A1_4816) then
    return
  end
  A0_4815:Activate(1)
  A0_4815.bUpdate = 1
  A0_4815.bWasReset = 1
  A0_4815.locked = 0
  A0_4815.bBreachNow = 1
  A0_4815.lockbroken = 1
  A0_4815:Open(nil, 0)
  A0_4815:ActivateOutput("Breached", 1)
end
L0_4787.BreachDoor = L1_4788
L0_4787 = AdvancedDoor
L0_4787 = L0_4787.Client
function L1_4788(A0_4817, A1_4818, A2_4819)
  CopyVector(A0_4817.LastHit.pos, A1_4818.pos)
  CopyVector(A0_4817.LastHit.impulse, A1_4818.dir)
  A0_4817.LastHit.impulse.x = A0_4817.LastHit.impulse.x * A1_4818.damage
  A0_4817.LastHit.impulse.y = A0_4817.LastHit.impulse.y * A1_4818.damage
  A0_4817.LastHit.impulse.z = A0_4817.LastHit.impulse.z * A1_4818.damage
  A0_4817:AddImpulse(-1, A1_4818.pos, A1_4818.dir, 20, 1)
end
L0_4787.OnHit = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4820, A1_4821)
  BroadcastEvent(A0_4820, "ConstraintBroken")
end
L0_4787.Event_ConstraintBroken = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4822, A1_4823)
  local L2_4824
  L2_4824 = A0_4822.idConstr
  A1_4823.idConstr = L2_4824
  L2_4824 = A0_4822.bWasDetached
  A1_4823.bWasDetached = L2_4824
  L2_4824 = A0_4822.bWasReset
  A1_4823.bWasReset = L2_4824
  L2_4824 = A0_4822.health
  A1_4823.health = L2_4824
  L2_4824 = A0_4822.rad
  A1_4823.rad = L2_4824
  L2_4824 = A0_4822.angle
  A1_4823.angle = L2_4824
  L2_4824 = A0_4822.span
  A1_4823.span = L2_4824
  L2_4824 = A0_4822.openingrange
  A1_4823.opeingrange = L2_4824
  L2_4824 = A0_4822.defaultangle
  A1_4823.defaultangle = L2_4824
  L2_4824 = A0_4822.locked
  A1_4823.locked = L2_4824
  L2_4824 = A0_4822.bOpenNow
  A1_4823.bOpenNow = L2_4824
  L2_4824 = A0_4822.bBreachNow
  A1_4823.bBreachNow = L2_4824
  L2_4824 = A0_4822.user
  A1_4823.user = L2_4824
  L2_4824 = A0_4822.idx
  A1_4823.idx = L2_4824
  L2_4824 = A0_4822.lockbroken
  A1_4823.lockbroken = L2_4824
  L2_4824 = A0_4822.iAutoCloseTimer
  A1_4823.iAutoCloseTimer = L2_4824
  L2_4824 = A0_4822.initialpos
  A1_4823.initialpos = L2_4824
  L2_4824 = A0_4822.initialrot
  A1_4823.initialrot = L2_4824
  L2_4824 = A0_4822.impulsedir
  A1_4823.impulsedir = L2_4824
  L2_4824 = A0_4822.leftsided
  A1_4823.leftsided = L2_4824
  L2_4824 = A0_4822.impulsepos
  A1_4823.impulsepos = L2_4824
end
L0_4787.OnSave = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4825, A1_4826)
  local L2_4827
  L2_4827 = A1_4826.idConstr
  A0_4825.idConstr = L2_4827
  L2_4827 = A1_4826.bWasDetached
  A0_4825.bWasDetached = L2_4827
  L2_4827 = A1_4826.bWasReset
  A0_4825.bWasReset = L2_4827
  L2_4827 = A1_4826.health
  A0_4825.health = L2_4827
  L2_4827 = A1_4826.rad
  A0_4825.rad = L2_4827
  L2_4827 = A1_4826.angle
  A0_4825.angle = L2_4827
  L2_4827 = A1_4826.span
  A0_4825.span = L2_4827
  L2_4827 = A1_4826.opeingrange
  A0_4825.openingrange = L2_4827
  L2_4827 = A1_4826.defaultangle
  A0_4825.defaultangle = L2_4827
  L2_4827 = A1_4826.locked
  A0_4825.locked = L2_4827
  L2_4827 = A1_4826.bOpenNow
  A0_4825.bOpenNow = L2_4827
  L2_4827 = A1_4826.bBreachNow
  A0_4825.bBreachNow = L2_4827
  L2_4827 = A1_4826.user
  A0_4825.user = L2_4827
  L2_4827 = A1_4826.idx
  A0_4825.idx = L2_4827
  L2_4827 = A1_4826.lockbroken
  A0_4825.lockbroken = L2_4827
  L2_4827 = A1_4826.iAutoCloseTimer
  A0_4825.iAutoCloseTimer = L2_4827
  L2_4827 = A1_4826.initialpos
  A0_4825.initialpos = L2_4827
  L2_4827 = A1_4826.initialrot
  A0_4825.initialrot = L2_4827
  L2_4827 = A1_4826.impulsedir
  A0_4825.impulsedir = L2_4827
  L2_4827 = A1_4826.leftsided
  A0_4825.leftsided = L2_4827
  L2_4827 = A1_4826.impulsepos
  A0_4825.impulsepos = L2_4827
end
L0_4787.OnLoad = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4828, A1_4829)
end
L0_4787.Play = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4830, A1_4831)
  if A1_4831 ~= nil then
    CopyVector(A0_4830.tmp, A0_4830.initialdir)
    A0_4830:GetWorldPos(A0_4830.tmp_2)
    A1_4831:GetWorldPos(A0_4830.tmp_3)
    SubVectors(A0_4830.tmp_2, A0_4830.tmp_2, A0_4830.tmp_3)
    NormalizeVector(A0_4830.tmp_2)
    if A0_4830.openingrange > 0 then
      if dotproduct3d(A0_4830.tmp, A0_4830.tmp_2) < 0 then
        if A0_4830.leftsided == 0 then
          return false
        else
          return true
        end
      elseif A0_4830.leftsided == 0 then
        return true
      else
        return false
      end
    elseif dotproduct3d(A0_4830.tmp, A0_4830.tmp_2) > 0 then
      if A0_4830.leftsided == 0 then
        return false
      else
        return true
      end
    elseif A0_4830.leftsided == 0 then
      return true
    else
      return false
    end
  end
end
L0_4787.CheckBreachDirection = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4832, A1_4833)
  local L2_4834
  L2_4834 = A0_4832.Properties
  L2_4834 = L2_4834.Limits
  CopyVector(A0_4832.tmp, A0_4832.initialdir)
  A0_4832:GetWorldPos(A0_4832.tmp_2)
  A1_4833:GetWorldPos(A0_4832.tmp_3)
  SubVectors(A0_4832.tmp_2, A0_4832.tmp_2, A0_4832.tmp_3)
  NormalizeVector(A0_4832.tmp_2)
  if dotproduct3d(A0_4832.tmp, A0_4832.tmp_2) > 0 then
    if L2_4834.bOpenFromFront == 0 then
      return false
    end
  elseif L2_4834.bOpenFromBack == 0 then
    return false
  end
  return true
end
L0_4787.CheckUseDirection = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4835, A1_4836, A2_4837)
  if A0_4835:GetState() == "Closed" then
    if A0_4835:CheckUseDirection(A1_4836) then
      if A0_4835.locked == 1 then
        A0_4835:Play(1)
        return
      else
        A0_4835:Use(A1_4836, A2_4837)
      end
    end
  else
    A0_4835:Use(A1_4836, A2_4837)
  end
end
L0_4787.OnUsed = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4838, A1_4839, A2_4840)
  A0_4838:Activate(1)
  A0_4838.bUpdate = 1
  A0_4838.lasttime = 0
  Log("self:GetState(): " .. A0_4838:GetState())
  if A0_4838:GetState() == "Closed" then
    A0_4838:Open(A1_4839, A2_4840)
  else
    A0_4838:Close(A1_4839, A2_4840)
  end
end
L0_4787.Use = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4841, A1_4842, A2_4843)
  if A0_4841:GetState() == "Closed" then
    A0_4841:SetPos(A0_4841.initialpos)
    A0_4841:SetAngles(A0_4841.initialrot)
    A0_4841.bWasReset = 1
    A0_4841.bOpenNow = 1
    A0_4841.user = A1_4842
    A0_4841.idx = A2_4843
  end
end
L0_4787.Open = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4844, A1_4845, A2_4846)
  local L3_4847, L4_4848
  L4_4848 = A0_4844
  L3_4847 = A0_4844.GetDirectionVector
  L3_4847 = L3_4847(L4_4848, 1)
  A0_4844.impulsedir = L3_4847
  L3_4847 = A0_4844.openingrange
  if L3_4847 > 0 then
    L3_4847 = A0_4844.leftsided
    if L3_4847 == 1 then
      L3_4847 = ScaleVectorInPlace
      L4_4848 = A0_4844.impulsedir
      L3_4847(L4_4848, -1)
    end
  else
    L3_4847 = A0_4844.leftsided
    if L3_4847 == 0 then
      L3_4847 = ScaleVectorInPlace
      L4_4848 = A0_4844.impulsedir
      L3_4847(L4_4848, -1)
    end
  end
  L3_4847, L4_4848 = nil, nil
  if A1_4845 and A1_4845 == g_localActor then
    L4_4848 = A0_4844.Properties.Mass
  elseif A0_4844.bBreachNow == 1 then
    L4_4848 = A0_4844.Properties.Mass * 4
    bBreachNow = 0
  else
    L4_4848 = A0_4844.Properties.Mass
  end
  L4_4848 = L4_4848 * A0_4844.Properties.Limits.fSpeed
  A0_4844:UpdateImpulsePos()
  A0_4844:AddImpulse(-1, A0_4844.impulsepos, A0_4844.impulsedir, L4_4848, 1)
end
L0_4787.OpenDoor = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4849, A1_4850, A2_4851)
  local L3_4852, L4_4853
  A0_4849.bUpdate = 1
  A0_4849.lasttime = 0
  L4_4853 = A0_4849
  L3_4852 = A0_4849.GetDirectionVector
  L3_4852 = L3_4852(L4_4853, 1)
  A0_4849.impulsedir = L3_4852
  L3_4852 = ScaleVectorInPlace
  L4_4853 = A0_4849.impulsedir
  L3_4852(L4_4853, -1)
  L3_4852 = A0_4849.openingrange
  if L3_4852 > 0 then
    L3_4852 = A0_4849.leftsided
    if L3_4852 == 1 then
      L3_4852 = ScaleVectorInPlace
      L4_4853 = A0_4849.impulsedir
      L3_4852(L4_4853, -1)
    end
  else
    L3_4852 = A0_4849.leftsided
    if L3_4852 == 0 then
      L3_4852 = ScaleVectorInPlace
      L4_4853 = A0_4849.impulsedir
      L3_4852(L4_4853, -1)
    end
  end
  L3_4852, L4_4853 = nil, nil
  if A1_4850 and A1_4850 == g_localActor then
    L4_4853 = A0_4849.Properties.Mass
  elseif A0_4849.bBreachNow == 1 then
    L4_4853 = A0_4849.Properties.Mass * 4
    bBreachNow = 0
  else
    L4_4853 = A0_4849.Properties.Mass
  end
  L4_4853 = L4_4853 * A0_4849.Properties.Limits.fSpeed
  A0_4849:UpdateImpulsePos()
  A0_4849:AddImpulse(-1, A0_4849.impulsepos, A0_4849.impulsedir, L4_4853, 1)
end
L0_4787.Close = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4854, A1_4855)
  if A0_4854:GetState() ~= "Destroyed" then
    A0_4854:GetPos(A0_4854.tmp_2)
    A1_4855:GetPos(A0_4854.tmp_3)
    SubVectors(A0_4854.tmp, A0_4854.tmp_2, A0_4854.tmp_3)
    if LengthVector(A0_4854.tmp) < A0_4854.Properties.Limits.fUseDistance then
      return 2
    else
      return 0
    end
  else
    return 0
  end
end
L0_4787.IsUsable = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4856, A1_4857)
  local L2_4858
  L2_4858 = A0_4856.Properties
  L2_4858 = L2_4858.bUsable
  if L2_4858 == 1 then
    L2_4858 = A0_4856.Properties
    L2_4858 = L2_4858.UseMessage
    return L2_4858
  else
    L2_4858 = "@use_door"
    return L2_4858
  end
end
L0_4787.GetUsableMessage = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4859)
  local L1_4860
end
L0_4787.OnShutDown = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4861)
  local L1_4862, L2_4863, L3_4864
  L1_4862 = A0_4861.Properties
  L2_4863 = A0_4861.LastHit
  L2_4863 = L2_4863.pos
  L3_4864 = A0_4861.LastHit
  L3_4864 = L3_4864.impulse
  A0_4861:BreakToPieces(0, 0, L1_4862.Breakage.fExplodeImpulse, L2_4863, L3_4864, L1_4862.Breakage.fLifeTime, L1_4862.Breakage.bSurfaceEffects)
  if NumberToBool(A0_4861.Properties.Destruction.bExplode) then
    g_gameRules:CreateExplosion(A0_4861.shooterId, A0_4861.id, A0_4861.Properties.Destruction.Damage, A0_4861:GetWorldPos(), A0_4861.Properties.Destruction.Direction, A0_4861.Properties.Destruction.Radius, nil, A0_4861.Properties.Destruction.Pressure, A0_4861.Properties.Destruction.HoleSize, A0_4861.Properties.Destruction.ParticleEffect, A0_4861.Properties.Destruction.EffectScale)
  end
  A0_4861:RemoveDecals()
  A0_4861:SetCurrentSlot(1)
  A0_4861:PhysicalizeThis(1, 1)
  A0_4861:AwakePhysics(1)
end
L0_4787.Explode = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4865)
  AI.ModifySmartObjectStates(A0_4865.id, "Locked")
  A0_4865.locked = 1
end
L0_4787.Lock = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4866)
  AI.ModifySmartObjectStates(A0_4866.id, "-Locked")
  A0_4866.locked = 0
end
L0_4787.Unlock = L1_4788
L0_4787 = AdvancedDoor
L0_4787 = L0_4787.Server
L1_4788 = {}
function L1_4788.OnBeginState(A0_4867)
  AI.ModifySmartObjectStates(A0_4867.id, "Destroyed-Closed,Open,Locked")
  A0_4867:Explode()
  BroadcastEvent(A0_4867, "Destroyed")
end
function L1_4788.OnUpdate(A0_4868, A1_4869)
end
function L1_4788.OnEndState(A0_4870)
  local L1_4871
end
L0_4787.Destroyed = L1_4788
L0_4787 = AdvancedDoor
L0_4787 = L0_4787.Server
L1_4788 = {}
function L1_4788.OnBeginState(A0_4872)
  if A0_4872.iAutoCloseTimer ~= nil then
    Script.KillTimer(A0_4872.iAutoCloseTimer)
    A0_4872.iAutoCloseTimer = nil
  end
  AI.ModifySmartObjectStates(A0_4872.id, "Closed-Open")
  A0_4872:PhysicalizeThis(0, 0)
  A0_4872:EnablePhysics(true)
  A0_4872:AwakePhysics(0)
  A0_4872:Activate(0)
  A0_4872.bUpdate = 0
  A0_4872.lasttime = 0
  if A0_4872.Properties.bUsePortal == 1 then
    System.ActivatePortal(A0_4872:GetWorldPos(), 0, A0_4872.id)
  end
end
function L1_4788.OnUpdate(A0_4873, A1_4874)
  A0_4873:OnUpdate()
end
function L1_4788.OnEndState(A0_4875)
  local L1_4876
end
L0_4787.Closed = L1_4788
L0_4787 = AdvancedDoor
L0_4787 = L0_4787.Server
L1_4788 = {}
function L1_4788.OnBeginState(A0_4877)
  if A0_4877.Properties.bUsePortal == 1 then
    System.ActivatePortal(A0_4877:GetWorldPos(), 1, A0_4877.id)
  end
  A0_4877.bUpdate = 1
  A0_4877.lasttime = 0
  AI.ModifySmartObjectStates(A0_4877.id, "Open-Closed")
  A0_4877:Play(1)
end
function L1_4788.OnUpdate(A0_4878, A1_4879)
  A0_4878:OnUpdate()
end
function L1_4788.OnEndState(A0_4880)
  local L1_4881
end
L0_4787.Opened = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4882)
  A0_4882:Unlock()
  BroadcastEvent(A0_4882, "Unlock")
end
L0_4787.Event_Unlock = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4883)
  A0_4883:Lock()
  BroadcastEvent(A0_4883, "Lock")
end
L0_4787.Event_Lock = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4884)
  A0_4884.bUpdate = 1
  A0_4884.bWasReset = 1
  A0_4884:Open()
  BroadcastEvent(A0_4884, "Open")
end
L0_4787.Event_Open = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4885)
  A0_4885:Close()
  BroadcastEvent(A0_4885, "Close")
end
L0_4787.Event_Close = L1_4788
L0_4787 = AdvancedDoor
function L1_4788(A0_4886)
  A0_4886.locked = 0
  A0_4886:GotoState("Destroyed")
end
L0_4787.Event_Destroyed = L1_4788
L0_4787 = AdvancedDoor
L1_4788 = {}
L1_4788.Inputs = {
  Unlock = {
    AdvancedDoor.Event_Unlock,
    "bool"
  },
  Lock = {
    AdvancedDoor.Event_Lock,
    "bool"
  },
  Open = {
    AdvancedDoor.Event_Open,
    "bool"
  },
  Close = {
    AdvancedDoor.Event_Close,
    "bool"
  },
  Destroyed = {
    AdvancedDoor.Event_Destroyed,
    "bool"
  }
}
L1_4788.Outputs = {
  Unlock = "bool",
  Lock = "bool",
  Open = "bool",
  Close = "bool",
  Destroyed = "bool",
  Breached = "bool"
}
L0_4787.FlowEvents = L1_4788
