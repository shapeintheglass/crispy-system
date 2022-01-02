local L0_7012, L1_7013
L0_7012 = {}
L1_7013 = {}
L0_7012.Client = L1_7013
L1_7013 = {}
L0_7012.Server = L1_7013
L1_7013 = {}
L1_7013.fileModel = "engine/engineassets/objects/default.cgf"
L1_7013.Radius = 2
L1_7013.bAdjustToTerrain = 1
L1_7013.Options = {
  fDisarmDistance = 0.5,
  fMinTriggerWeight = 50,
  bNoVehicles = 0,
  bWaterMine = 0
}
L1_7013.FrogMine = {
  bIsFrogMine = 0,
  fJumpHeight = 2.5,
  bJumpWhenShot = 1,
  fDetonationDelay = 0.75
}
L1_7013.Claymore = {
  bIsClaymore = 0,
  fCone = 45,
  bCenterExplosion = 1,
  fDamage = 100
}
L1_7013.Destruction = {
  ParticleEffect = "explosions.rocket.soil",
  EffectScale = 0.2,
  Radius = 5,
  Pressure = 2500,
  Damage = 500,
  Direction = {
    x = 0,
    y = 0,
    z = -1
  }
}
L1_7013.Vulnerability = {
  fDamageTreshold = 0,
  bExplosion = 1,
  bCollision = 1,
  bMelee = 1,
  bBullet = 1,
  bOther = 1
}
L0_7012.Properties = L1_7013
L1_7013 = {}
L1_7013.impulse = {
  x = 0,
  y = 0,
  z = 0
}
L1_7013.pos = {
  x = 0,
  y = 0,
  z = 0
}
L0_7012.LastHit = L1_7013
L1_7013 = {}
L1_7013.Icon = "mine.bmp"
L1_7013.IconOnTop = 1
L1_7013.ShowBounds = 1
L0_7012.Editor = L1_7013
L1_7013 = {
  "Deactivated",
  "Armed",
  "Disarmed",
  "Destroyed"
}
L0_7012.States = L1_7013
Mine = L0_7012
L0_7012 = 1
MINE_CHECK = L0_7012
L0_7012 = 2
MINE_JUMP = L0_7012
L0_7012 = Mine
function L1_7013(A0_7014)
  local L1_7015, L2_7016, L3_7017, L4_7018
  L1_7015 = A0_7014.Properties
  L2_7016 = EmptyString
  L3_7017 = L1_7015.fileModel
  L2_7016 = L2_7016(L3_7017)
  if not L2_7016 then
    L3_7017 = A0_7014
    L2_7016 = A0_7014.LoadObject
    L4_7018 = 0
    L2_7016(L3_7017, L4_7018, L1_7015.fileModel)
  end
  L2_7016 = {}
  L3_7017 = L1_7015.Radius
  L3_7017 = -L3_7017
  L3_7017 = L3_7017 / 2
  L2_7016.x = L3_7017
  L3_7017 = L1_7015.Radius
  L3_7017 = -L3_7017
  L3_7017 = L3_7017 / 2
  L2_7016.y = L3_7017
  L2_7016.z = -1.25
  L3_7017 = {}
  L4_7018 = L1_7015.Radius
  L4_7018 = L4_7018 / 2
  L3_7017.x = L4_7018
  L4_7018 = L1_7015.Radius
  L4_7018 = L4_7018 / 2
  L3_7017.y = L4_7018
  L3_7017.z = 1.25
  L4_7018 = A0_7014.SetTriggerBBox
  L4_7018(A0_7014, L2_7016, L3_7017)
  L4_7018 = EntityCommon
  L4_7018 = L4_7018.PhysicalizeRigid
  L4_7018(A0_7014, 0, A0_7014.physics, 0)
  L4_7018 = A0_7014.SetCurrentSlot
  L4_7018(A0_7014, 0)
  L4_7018 = A0_7014.Properties
  L4_7018 = L4_7018.Claymore
  L4_7018 = L4_7018.bIsClaymore
  if L4_7018 == 0 then
    L4_7018 = A0_7014.Properties
    L4_7018 = L4_7018.Options
    L4_7018 = L4_7018.bWaterMine
    if L4_7018 == 0 then
    end
  end
  A0_7014.health = 1
  L4_7018 = {}
  A0_7014.ents = L4_7018
  L4_7018 = A0_7014.Properties
  L4_7018 = L4_7018.bAdjustToTerrain
  if L4_7018 == 1 then
    L4_7018 = A0_7014.Properties
    L4_7018 = L4_7018.Claymore
    L4_7018 = L4_7018.bIsClaymore
    if L4_7018 == 0 then
      L4_7018 = {}
      L4_7018.x = 0
      L4_7018.y = 0
      L4_7018.z = 0
      CopyVector(L4_7018, A0_7014:GetPos())
      L4_7018.z = System.GetTerrainElevation(A0_7014:GetPos()) - 0.01
      A0_7014:SetPos(L4_7018)
    end
  end
  L4_7018 = A0_7014.GotoState
  L4_7018(A0_7014, "Armed")
end
L0_7012.OnReset = L1_7013
L0_7012 = Mine
function L1_7013(A0_7019, A1_7020)
  local L2_7021
  L2_7021 = A0_7019.health
  A1_7020.health = L2_7021
  L2_7021 = A0_7019.ents
  A1_7020.ents = L2_7021
  L2_7021 = A0_7019.disarmed
  A1_7020.disarmed = L2_7021
end
L0_7012.OnSave = L1_7013
L0_7012 = Mine
function L1_7013(A0_7022, A1_7023)
  A0_7022.health = A1_7023.health
  A0_7022.ents = A1_7023.ents
  A0_7022.disarmed = A1_7023.disarmed
  EntityCommon.PhysicalizeRigid(A0_7022, 0, A0_7022.physics, 0)
  A0_7022:SetCurrentSlot(0)
end
L0_7012.OnLoad = L1_7013
L0_7012 = Mine
function L1_7013(A0_7024)
  A0_7024:OnReset()
end
L0_7012.OnPropertyChange = L1_7013
L0_7012 = Mine
L0_7012 = L0_7012.Server
function L1_7013(A0_7025)
  local L1_7026
  L1_7026 = A0_7025.Properties
  L1_7026 = L1_7026.FrogMine
  if L1_7026.bIsFrogMine == 1 then
    A0_7025.physics = {
      bRigidBody = 1,
      bRigidBodyActive = 1,
      bResting = 1,
      Density = -1,
      Mass = 20
    }
  else
    A0_7025.physics = {
      bRigidBody = 0,
      bRigidBodyActive = 0,
      bResting = 1,
      Density = -1,
      Mass = 20
    }
  end
  A0_7025.health = 1
  A0_7025.ents = {}
  A0_7025.disarmed = 0
  A0_7025.tmp = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_7025.tmp_2 = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_7025.tmp_3 = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_7025:OnReset()
end
L0_7012.OnInit = L1_7013
L0_7012 = Mine
function L1_7013(A0_7027, A1_7028)
  if A0_7027:GetState() ~= "Destroyed" and A0_7027:GetState() ~= "Disarmed" then
    A0_7027:GetPos(A0_7027.tmp_2)
    A1_7028:GetPos(A0_7027.tmp_3)
    SubVectors(A0_7027.tmp, A0_7027.tmp_2, A0_7027.tmp_3)
    if LengthVector(A0_7027.tmp) < A0_7027.Properties.Options.fDisarmDistance then
      return 2
    else
      return 0
    end
  else
    return 0
  end
end
L0_7012.IsUsable = L1_7013
L0_7012 = Mine
function L1_7013(A0_7029, A1_7030)
  local L2_7031
  L2_7031 = "Press USE to disarm!"
  return L2_7031
end
L0_7012.GetUsableMessage = L1_7013
L0_7012 = Mine
function L1_7013(A0_7032)
  A0_7032:GotoState("Disarmed")
end
L0_7012.OnUsed = L1_7013
L0_7012 = Mine
L0_7012 = L0_7012.Server
function L1_7013(A0_7033, A1_7034)
  local L2_7035, L3_7036
  L3_7036 = A0_7033
  L2_7035 = A0_7033.GetState
  L2_7035 = L2_7035(L3_7036)
  if L2_7035 ~= "Disarmed" then
    L3_7036 = A0_7033
    L2_7035 = A0_7033.GetState
    L2_7035 = L2_7035(L3_7036)
    if L2_7035 ~= "Destroyed" then
      L3_7036 = A0_7033
      L2_7035 = A0_7033.GetState
      L2_7035 = L2_7035(L3_7036)
    end
  elseif L2_7035 == "Deactivated" then
    return
  end
  L2_7035 = A0_7033.Properties
  L2_7035 = L2_7035.Vulnerability
  L3_7036 = A1_7034.damage
  L3_7036 = L3_7036 >= A0_7033.Properties.Vulnerability.fDamageTreshold
  if L3_7036 and A1_7034.explosion then
    L3_7036 = NumberToBool(L2_7035.bExplosion)
    if A1_7034.shooterId and System.GetEntityClass(A1_7034.shooterId) == "Mine" then
      L3_7036 = false
    end
  elseif L3_7036 and A1_7034.type == "collision" then
    L3_7036 = NumberToBool(L2_7035.bCollision)
  elseif L3_7036 and A1_7034.type == "bullet" then
    L3_7036 = NumberToBool(L2_7035.bBullet)
  elseif L3_7036 and A1_7034.type == "melee" then
    L3_7036 = NumberToBool(L2_7035.bMelee)
  else
    L3_7036 = L3_7036 and NumberToBool(L2_7035.bOther)
  end
  if L3_7036 then
    A0_7033.shooterId = A1_7034.shooterId
    A0_7033.health = A0_7033.health - A1_7034.damage
    if A0_7033.health <= 0 then
      A0_7033:GotoState("Destroyed")
    end
  end
end
L0_7012.OnHit = L1_7013
L0_7012 = Mine
function L1_7013(A0_7037)
  if A0_7037.health <= 0 then
    return true
  else
    return false
  end
end
L0_7012.IsDead = L1_7013
L0_7012 = Mine
function L1_7013(A0_7038, A1_7039)
  if A1_7039 == 0 then
    A0_7038:DrawSlot(0, 1)
    A0_7038:DrawSlot(1, 0)
  else
    A0_7038:DrawSlot(0, 0)
    A0_7038:DrawSlot(1, 1)
  end
  A0_7038.currentSlot = A1_7039
end
L0_7012.SetCurrentSlot = L1_7013
L0_7012 = Mine
function L1_7013(A0_7040)
  local L1_7041, L2_7042, L3_7043, L4_7044
  L2_7042 = A0_7040
  L1_7041 = A0_7040.Hide
  L3_7043 = 1
  L1_7041(L2_7042, L3_7043)
  L1_7041 = A0_7040.Properties
  L2_7042 = L1_7041.Destruction
  L3_7043 = L2_7042.Radius
  L4_7044 = L1_7041.FrogMine
  L4_7044 = L4_7044.bIsFrogMine
  if L4_7044 == 1 then
    L3_7043 = L3_7043 + 1.5
  end
  L4_7044 = L1_7041.Claymore
  L4_7044 = L4_7044.bIsClaymore
  if L4_7044 == 0 then
    L4_7044 = g_gameRules
    L4_7044 = L4_7044.CreateExplosion
    L4_7044(L4_7044, A0_7040.id, A0_7040.id, L2_7042.Damage, A0_7040:GetWorldPos(), L2_7042.Direction, L3_7043, nil, L2_7042.Pressure, L2_7042.HoleSize, L2_7042.ParticleEffect, L2_7042.EffectScale)
  else
    L4_7044 = L1_7041.Claymore
    L4_7044 = L4_7044.fCone
    L4_7044 = L4_7044 * g_Deg2Rad
    if L1_7041.Claymore.bCenterExplosion == 1 then
      g_gameRules:CreateExplosion(A0_7040.id, A0_7040.id, L2_7042.Damage, A0_7040:GetWorldPos(), L2_7042.Direction, 1, nil, 0, 0, "", L2_7042.EffectScale)
    end
    g_gameRules:CreateExplosion(A0_7040.id, A0_7040.id, L2_7042.Damage, A0_7040:GetWorldPos(), A0_7040:GetDirectionVector(1), L3_7043, L4_7044, L2_7042.Pressure, L2_7042.HoleSize, L2_7042.ParticleEffect, L2_7042.EffectScale)
  end
end
L0_7012.Explode = L1_7013
L0_7012 = Mine
function L1_7013(A0_7045)
  local L1_7046, L2_7047, L3_7048
  L1_7046 = EntityCommon
  L1_7046 = L1_7046.PhysicalizeRigid
  L2_7047 = A0_7045
  L3_7048 = 0
  L1_7046(L2_7047, L3_7048, A0_7045.physics, 1)
  L1_7046 = math
  L1_7046 = L1_7046.sqrt
  L2_7047 = A0_7045.Properties
  L2_7047 = L2_7047.FrogMine
  L2_7047 = L2_7047.fJumpHeight
  L2_7047 = 19.62 * L2_7047
  L1_7046 = L1_7046(L2_7047)
  L2_7047 = 20 * L1_7046
  L3_7048 = g_Vectors
  L3_7048 = L3_7048.v000
  CopyVector(L3_7048, A0_7045:GetPos())
  L3_7048.x = L3_7048.x + 0.005
  A0_7045:AddImpulse(-1, L3_7048, {
    x = 0,
    y = 0,
    z = 1
  }, L2_7047, 1)
  A0_7045:SetTimer(MINE_JUMP, A0_7045.Properties.FrogMine.fDetonationDelay * 1000)
end
L0_7012.Jump = L1_7013
L0_7012 = Mine
function L1_7013(A0_7049)
  local L1_7050, L2_7051, L3_7052, L4_7053, L5_7054, L6_7055, L7_7056, L8_7057, L9_7058, L10_7059
  L2_7051 = {}
  L2_7051.x = 0
  L2_7051.y = 0
  L2_7051.z = 0
  L3_7052 = nil
  L4_7053 = A0_7049.Properties
  L4_7053 = L4_7053.Options
  for L8_7057, L9_7058 in L5_7054(L6_7055) do
    if L9_7058 ~= nil then
      L10_7059 = L9_7058.GetMass
      L10_7059 = L10_7059(L9_7058)
      if L10_7059 < L4_7053.fMinTriggerWeight then
        break
      else
        L10_7059 = L4_7053.bNoVehicles
        if L10_7059 == 1 then
          L10_7059 = L9_7058.vehicle
          if L10_7059 ~= nil then
            break
          end
        end
      end
      L10_7059 = A0_7049.Properties
      L10_7059 = L10_7059.Options
      L10_7059 = L10_7059.bWaterMine
      if L10_7059 == 0 then
        L10_7059 = {}
        L10_7059.x = 0
        L10_7059.y = 0
        L10_7059.z = 0
        L9_7058:GetVelocity(L10_7059)
        L1_7050 = LengthVector(L10_7059)
        A0_7049:GetPos(A0_7049.tmp)
        L9_7058:GetPos(A0_7049.tmp_2)
        SubVectors(L2_7051, A0_7049.tmp_2, A0_7049.tmp_2)
        L3_7052 = LengthVector(L2_7051)
        if L1_7050 > 0.55 * (1 + L3_7052 / 2.5) then
          A0_7049:GotoState("Destroyed")
          break
        end
      else
        L10_7059 = L9_7058.IsEntityInside
        L10_7059 = L10_7059(L9_7058, A0_7049.id)
        if L10_7059 then
          L10_7059 = A0_7049.GotoState
          L10_7059(A0_7049, "Destroyed")
          break
        end
      end
    end
  end
  if L5_7054 ~= 0 then
    L8_7057 = 100
    L5_7054(L6_7055, L7_7056, L8_7057)
  end
end
L0_7012.CheckEntities = L1_7013
L0_7012 = Mine
function L1_7013(A0_7060)
  A0_7060:GotoState("Disarmed")
  BroadcastEvent(A0_7060, "Disarmed")
end
L0_7012.Event_Disarmed = L1_7013
L0_7012 = Mine
function L1_7013(A0_7061)
  A0_7061:GotoState("Destroyed")
  BroadcastEvent(A0_7061, "Detonated")
end
L0_7012.Event_Detonated = L1_7013
L0_7012 = Mine
function L1_7013(A0_7062)
  if A0_7062.disarmed == 0 then
    A0_7062:GotoState("Armed")
  end
  BroadcastEvent(A0_7062, "Activated")
end
L0_7012.Event_Activated = L1_7013
L0_7012 = Mine
function L1_7013(A0_7063)
  A0_7063:GotoState("Deactivated")
  BroadcastEvent(A0_7063, "Deactivated")
end
L0_7012.Event_Deactivated = L1_7013
L0_7012 = Mine
L0_7012 = L0_7012.Server
L1_7013 = {}
L0_7012.Deactivated = L1_7013
L0_7012 = Mine
L0_7012 = L0_7012.Server
L1_7013 = {}
function L1_7013.OnBeginState(A0_7064)
  if A0_7064.Properties.Claymore.bIsClaymore ~= 0 or A0_7064.Properties.Options.bWaterMine == 0 then
  end
  BroadcastEvent(A0_7064, "Armed")
end
function L1_7013.OnEnterArea(A0_7065, A1_7066, A2_7067)
  if A1_7066 and A1_7066:GetMass() >= A0_7065.Properties.Options.fMinTriggerWeight then
    if A1_7066.actor then
      table.insert(A0_7065.ents, A1_7066)
      A0_7065:SetTimer(MINE_CHECK, 100)
    else
      A0_7065:GotoState("Destroyed")
    end
  end
end
function L1_7013.OnLeaveArea(A0_7068, A1_7069, A2_7070)
  local L3_7071, L4_7072, L5_7073, L6_7074
  for L6_7074, _FORV_7_ in L3_7071(L4_7072) do
    if _FORV_7_ == A1_7069 then
      table.remove(A0_7068.ents, L6_7074)
      break
    end
  end
end
function L1_7013.OnTimer(A0_7075, A1_7076)
  if A1_7076 == MINE_CHECK then
    A0_7075:CheckEntities()
  end
end
L0_7012.Armed = L1_7013
L0_7012 = Mine
L0_7012 = L0_7012.Server
L1_7013 = {}
function L1_7013.OnBeginState(A0_7077)
  local L1_7078, L2_7079, L3_7080, L4_7081
  A0_7077.disarmed = 1
  for L4_7081, _FORV_5_ in L1_7078(L2_7079) do
    table.remove(A0_7077.ents, L4_7081)
  end
  L1_7078(L2_7079, L3_7080)
end
L0_7012.Disarmed = L1_7013
L0_7012 = Mine
L0_7012 = L0_7012.Server
L1_7013 = {}
function L1_7013.OnBeginState(A0_7082)
  local L1_7083
  L1_7083 = A0_7082.Properties
  L1_7083 = L1_7083.FrogMine
  if L1_7083.bIsFrogMine == 1 then
    if A0_7082:IsDead() then
      if not L1_7083.bJumpWhenShot then
        A0_7082:Explode()
      else
        A0_7082:Jump()
      end
    else
      A0_7082:Jump()
    end
  else
    A0_7082:Explode()
  end
  BroadcastEvent(A0_7082, "Detonated")
end
function L1_7013.OnTimer(A0_7084, A1_7085)
  if A1_7085 == MINE_JUMP then
    A0_7084:Explode()
  end
end
L0_7012.Destroyed = L1_7013
L0_7012 = Mine
L1_7013 = {}
L1_7013.Inputs = {
  Detonated = {
    Mine.Event_Detonated,
    "bool"
  },
  Disarmed = {
    Mine.Event_Disarmed,
    "bool"
  },
  Activated = {
    Mine.Event_Activated,
    "bool"
  },
  Deactivated = {
    Mine.Event_Deactivated,
    "bool"
  }
}
L1_7013.Outputs = {
  Detonated = "bool",
  Disarmed = "bool",
  Activated = "bool",
  Deactivated = "bool"
}
L0_7012.FlowEvents = L1_7013
