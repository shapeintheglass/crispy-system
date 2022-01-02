local L0_6160, L1_6161
L0_6160 = {}
L1_6161 = {}
L0_6160.Client = L1_6161
L1_6161 = {}
L0_6160.Server = L1_6161
L1_6161 = {}
L1_6161.objModel = "objects/weapons/us/av_mine/avmine.cgf"
L1_6161.Health = 200
L1_6161.MainExplosion = {
  Effect = "explosions.rocket.soil",
  EffectScale = 0.4,
  Radius = 25,
  Pressure = 500,
  Damage = 250,
  Decal = "textures/decal/explo_decal.dds",
  DecalScale = 1,
  Direction = {
    x = 0,
    y = 0,
    z = -1
  },
  SoundEffect = "Sounds/physics:explosions:explo_big_01"
}
L1_6161.HugeExplosion = {
  Effect = "explosions.TAC.mushroom",
  EffectScale = 0.4,
  Radius = 500,
  Pressure = 800,
  Damage = 800,
  Decal = "textures/decal/explo_decal.dds",
  DecalScale = 1,
  Direction = {
    x = 0,
    y = 0,
    z = -1
  },
  SoundEffect = "Sounds/physics:explosions:explo_big_01"
}
L0_6160.Properties = L1_6161
L1_6161 = {}
L1_6161.Icon = "Item.bmp"
L1_6161.IconOnTop = 1
L0_6160.Editor = L1_6161
L0_6160.AttachedEntity = nil
L0_6160.ModelSlot = 0
L0_6160.SmokeSlot = -1
L1_6161 = {
  "Idle",
  "Carried",
  "Active",
  "Armed",
  "Destroyed"
}
L0_6160.States = L1_6161
L0_6160.ArmedBeepSound = "Sounds/crysiswars2:interface:multiplayer/mp_match_timer_beep"
L0_6160.ARMED_BEEP_TIME = 1000
L0_6160.ARMED_BEEP = 1
BTBBomb = L0_6160
L0_6160 = BTBBomb
L0_6160 = L0_6160.Server
function L1_6161(A0_6162)
  Log("BTBBomb.Server.OnInit")
  if not A0_6162.bInitialized then
    A0_6162:OnReset()
    A0_6162.bInitialized = 1
  end
end
L0_6160.OnInit = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Client
function L1_6161(A0_6163)
  Log("BTBBomb.Client.OnInit")
  if not A0_6163.bInitialized then
    A0_6163:OnReset()
    A0_6163.bInitialized = 1
  end
  A0_6163:CacheResources()
end
L0_6160.OnInit = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6164)
  A0_6164:PreLoadParticleEffect("smoke_and_fire.Jeep.hull_smoke")
end
L0_6160.CacheResources = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6165)
  local L1_6166, L2_6167, L3_6168
  L1_6166 = Log
  L2_6167 = "BTBBomb.OnReset"
  L1_6166(L2_6167)
  L2_6167 = A0_6165
  L1_6166 = A0_6165.LoadCorrectGeometry
  L1_6166(L2_6167)
  L1_6166 = 1
  L2_6167 = {}
  L3_6168 = -L1_6166
  L2_6167.x = L3_6168
  L3_6168 = -L1_6166
  L2_6167.y = L3_6168
  L3_6168 = -L1_6166
  L2_6167.z = L3_6168
  L3_6168 = {}
  L3_6168.x = L1_6166
  L3_6168.y = L1_6166
  L3_6168.z = L1_6166
  A0_6165:SetTriggerBBox(L2_6167, L3_6168)
  A0_6165:Physicalize(A0_6165.ModelSlot, PE_RIGID, {mass = 0})
  A0_6165:SetScale(3)
  A0_6165.health = A0_6165.Properties.Health
  A0_6165.inside = {}
  if A0_6165.SmokeSlot ~= -1 then
    A0_6165:FreeSlot(A0_6165.SmokeSlot)
    A0_6165.SmokeSlot = -1
  end
  A0_6165:DrawSlot(A0_6165.ModelSlot, 1)
  A0_6165:GotoState("Idle")
end
L0_6160.OnReset = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6169)
  Log("BTBBomb:Reset()")
  A0_6169:OnReset()
end
L0_6160.Reset = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6170)
  CryAction.CreateGameObjectForEntity(A0_6170.id)
  CryAction.BindGameObjectToNetwork(A0_6170.id)
  CryAction.ForceGameObjectUpdate(A0_6170.id, true)
  A0_6170:Activate(1)
  A0_6170:OnReset()
end
L0_6160.OnSpawn = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6171, A1_6172, A2_6173)
  Log("BTBBomb:LoadGeometry() model = \"" .. A2_6173 .. "\"")
  if string.len(A2_6173) > 0 then
    if string.lower(string.sub(A2_6173, -4)) == ".chr" or string.lower(string.sub(A2_6173, -4)) == ".cdf" or string.lower(string.sub(A2_6173, -4)) == ".cga" then
      A0_6171:LoadCharacter(A1_6172, A2_6173)
    else
      A0_6171:LoadObject(A1_6172, A2_6173)
    end
  end
end
L0_6160.LoadGeometry = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6174)
  Log("BTBBomb.LoadCorrectGeometry()")
  A0_6174:LoadGeometry(A0_6174.ModelSlot, A0_6174.Properties.objModel)
end
L0_6160.LoadCorrectGeometry = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Server
function L1_6161(A0_6175, A1_6176)
  A0_6175:OnHit(A1_6176, true)
end
L0_6160.OnHit = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Client
function L1_6161(A0_6177, A1_6178)
  A0_6177:OnHit(A1_6178, false)
end
L0_6160.OnHit = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6179, A1_6180, A2_6181)
  if A0_6179:GetState() ~= "Active" then
    Log("BTBBomb:OnHit Can only be shot when active")
  end
  if A1_6180.shooter == A0_6179 then
    Log("BTBBomb:OnHit Can't damage self!")
    return
  end
  A0_6179.health = A0_6179.health - A1_6180.damage
  if A0_6179.health < A0_6179.Properties.Health * 0.25 and A0_6179.SmokeSlot == -1 then
    A0_6179.SmokeSlot = A0_6179:LoadParticleEffect(-1, "smoke_and_fire.Jeep.hull_smoke", {})
  end
  if A0_6179.health <= 0 and A2_6181 == true and g_gameRules.Server.BombZeroHealth ~= nil then
    g_gameRules.Server.BombZeroHealth(g_gameRules)
  end
  Log("HIT BOMB! health :%d", A0_6179.health)
end
L0_6160.OnHit = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6182)
  A0_6182:GotoState("Armed")
end
L0_6160.Armed = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6183)
  A0_6183:GotoState("Carried")
end
L0_6160.Carried = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6184)
  A0_6184:GotoState("Active")
end
L0_6160.Active = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6185)
  A0_6185:GotoState("Destroyed")
end
L0_6160.Destroyed = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6186)
  A0_6186:OnReset()
end
L0_6160.OnPropertyChange = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6187, A1_6188, A2_6189)
  Log("BTBBomb.OnEnterArea")
  if A1_6188 and A1_6188.actor and A1_6188.actor:IsPlayer() then
    InsertIntoTable(A0_6187.inside, A1_6188.id)
    if g_gameRules.Server.EntityEnterBombArea ~= nil then
      g_gameRules.Server.EntityEnterBombArea(g_gameRules, A1_6188, A0_6187)
    end
  end
end
L0_6160.OnEnterArea = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6190, A1_6191, A2_6192)
  Log("BTBBomb.OnLeaveArea")
  if A1_6191 and A1_6191.actor and A1_6191.actor:IsPlayer() then
    RemoveFromTable(A0_6190.inside, A1_6191.id)
  end
end
L0_6160.OnLeaveArea = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6193, A1_6194)
  if A0_6193.AttachedEntity ~= nil then
    A0_6193:DetachThis(1, 0)
    A0_6193:SetAngles({
      x = 0,
      y = 0,
      z = 0
    })
    A0_6193:EnablePhysics(true)
  end
  A0_6193.AttachedEntity = A1_6194
  if A1_6194 ~= nil then
    A0_6193:EnablePhysics(false)
    A0_6193:SetPos(A1_6194:GetPos())
    A1_6194:AttachChild(A0_6193.id, 1)
  end
end
L0_6160.AttachTo = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6195, A1_6196)
  A0_6195:Explode(A0_6195.Properties.MainExplosion, A1_6196)
end
L0_6160.ExplodeMain = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6197, A1_6198)
  A0_6197:Explode(A0_6197.Properties.HugeExplosion, A1_6198)
end
L0_6160.ExplodeHuge = L1_6161
L0_6160 = BTBBomb
function L1_6161(A0_6199, A1_6200, A2_6201)
  local L3_6202
  L3_6202 = Log
  L3_6202("BTBBomb:Explode %s", tostring(A2_6201))
  if A2_6201 then
    L3_6202 = A1_6200.Radius
    g_gameRules:CreateExplosion(A0_6199.id, A0_6199.id, A1_6200.Damage, A0_6199:GetPos(), A1_6200.Direction, L3_6202, nil, A1_6200.Pressure, A1_6200.HoleSize, A1_6200.Effect, A1_6200.EffectScale)
  end
  L3_6202 = Sound
  L3_6202 = L3_6202.Play
  L3_6202(A1_6200.SoundEffect, A0_6199:GetPos(), SOUND_DEFAULT_3D, SOUND_SEMANTIC_MECHANIC_ENTITY)
  L3_6202 = A0_6199.GotoState
  L3_6202(A0_6199, "Destroyed")
end
L0_6160.Explode = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Server
L1_6161 = {}
function L1_6161.OnBeginState(A0_6203)
  A0_6203:EnablePhysics(false)
end
function L1_6161.OnEnterArea(A0_6204, A1_6205, A2_6206)
  A0_6204:OnEnterArea(A1_6205, A2_6206)
end
function L1_6161.OnLeaveArea(A0_6207, A1_6208, A2_6209)
  A0_6207:OnLeaveArea(A1_6208, A2_6209)
end
L0_6160.Idle = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Client
L1_6161 = {}
function L1_6161.OnBeginState(A0_6210)
  A0_6210:EnablePhysics(false)
end
L0_6160.Idle = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Server
L1_6161 = {}
function L1_6161.OnBeginState(A0_6211)
  A0_6211:EnablePhysics(false)
end
function L1_6161.OnEnterArea(A0_6212, A1_6213, A2_6214)
  A0_6212:OnEnterArea(A1_6213, A2_6214)
end
function L1_6161.OnLeaveArea(A0_6215, A1_6216, A2_6217)
  A0_6215:OnLeaveArea(A1_6216, A2_6217)
end
L0_6160.Carried = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Client
L1_6161 = {}
function L1_6161.OnBeginState(A0_6218)
  A0_6218:EnablePhysics(false)
end
L0_6160.Carried = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Server
L1_6161 = {}
function L1_6161.OnBeginState(A0_6219)
  A0_6219:EnablePhysics(true)
  if A0_6219.health < 100 and A0_6219.SmokeSlot == -1 then
    A0_6219.SmokeSlot = A0_6219:LoadParticleEffect(-1, "smoke_and_fire.Jeep.hull_smoke", {})
  end
end
function L1_6161.OnEnterArea(A0_6220, A1_6221, A2_6222)
  A0_6220:OnEnterArea(A1_6221, A2_6222)
end
function L1_6161.OnLeaveArea(A0_6223, A1_6224, A2_6225)
  A0_6223:OnLeaveArea(A1_6224, A2_6225)
end
function L1_6161.OnEndState(A0_6226)
  if A0_6226.SmokeSlot ~= -1 then
    A0_6226:FreeSlot(A0_6226.SmokeSlot)
    A0_6226.SmokeSlot = -1
  end
end
L0_6160.Active = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Client
L1_6161 = {}
function L1_6161.OnBeginState(A0_6227)
  A0_6227:EnablePhysics(true)
  if A0_6227.health < 100 and A0_6227.SmokeSlot == -1 then
    A0_6227.SmokeSlot = A0_6227:LoadParticleEffect(-1, "smoke_and_fire.Jeep.hull_smoke", {})
  end
end
function L1_6161.OnEndState(A0_6228)
  if A0_6228.SmokeSlot ~= -1 then
    A0_6228:FreeSlot(A0_6228.SmokeSlot)
    A0_6228.SmokeSlot = -1
  end
end
L0_6160.Active = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Server
L1_6161 = {}
function L1_6161.OnBeginState(A0_6229)
  A0_6229:EnablePhysics(false)
  A0_6229:DrawSlot(A0_6229.ModelSlot, 0)
end
L0_6160.Destroyed = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Client
L1_6161 = {}
function L1_6161.OnBeginState(A0_6230)
  A0_6230:EnablePhysics(false)
  A0_6230:DrawSlot(A0_6230.ModelSlot, 0)
end
L0_6160.Destroyed = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Server
L1_6161 = {}
function L1_6161.OnBeginState(A0_6231)
  A0_6231:EnablePhysics(false)
end
function L1_6161.OnTimer(A0_6232, A1_6233)
end
function L1_6161.OnEndState(A0_6234)
  local L1_6235
end
L0_6160.Armed = L1_6161
L0_6160 = BTBBomb
L0_6160 = L0_6160.Client
L1_6161 = {}
function L1_6161.OnBeginState(A0_6236)
  A0_6236:SetTimer(A0_6236.ARMED_BEEP, A0_6236.ARMED_BEEP_TIME)
  Sound.Play(A0_6236.ArmedBeepSound, A0_6236:GetPos(), SOUND_DEFAULT_3D, SOUND_SEMANTIC_MECHANIC_ENTITY)
  A0_6236:EnablePhysics(false)
end
function L1_6161.OnTimer(A0_6237, A1_6238)
  if A1_6238 == A0_6237.ARMED_BEEP then
    Sound.Play(A0_6237.ArmedBeepSound, A0_6237:GetPos(), SOUND_DEFAULT_3D, SOUND_SEMANTIC_MECHANIC_ENTITY)
    A0_6237:SetTimer(A0_6237.ARMED_BEEP, A0_6237.ARMED_BEEP_TIME)
  end
end
function L1_6161.OnEndState(A0_6239)
  A0_6239:KillTimer(A0_6239.ARMED_BEEP)
end
L0_6160.Armed = L1_6161
