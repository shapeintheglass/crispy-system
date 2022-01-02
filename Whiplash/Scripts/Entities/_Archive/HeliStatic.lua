local L0_669, L1_670
L0_669 = {}
L0_669.temp_ModelName = "none"
L0_669.pathStep = 0
L0_669.dropState = 0
L1_670 = {}
L1_670.mass = 900
L1_670.height = 0.1
L1_670.eyeheight = 0.1
L1_670.sphereheight = 0.1
L1_670.radius = 0.5
L1_670.gravity = 0
L1_670.aircontrol = 1
L0_669.V22PhysParams = L1_670
L0_669.damage = 0
L0_669.bExploded = 0
L1_670 = {}
L0_669.pieces = L1_670
L0_669.explosionImpulse = 10
L1_670 = {}
L1_670.fDmgScaleBullet = 0.1
L1_670.fDmgScaleExplosion = 1.7
L1_670.max_health = 100
L1_670.bRigidBodyActive = 0
L1_670.Mass = 5000
L1_670.fileModel = "objects/vehicles/troopgunship/troopgunship_inflight.cgf"
L1_670.ExplosionParams = {
  nDamage = 100,
  fRadiusMin = 20,
  fRadiusMax = 20.5,
  fRadius = 20,
  fImpulsivePressure = 100600
}
L1_670.sound_engine_file = "SOUNDS/Ambient/E3/hele/heleLP1.wav"
L0_669.Properties = L1_670
L1_670 = {}
L1_670.focus = 1.8
L1_670.speed = 1.55
L1_670.count = 1
L1_670.size = 0.04
L1_670.size_speed = 0.1
L1_670.gravity = {
  x = 0,
  y = 0,
  z = 0.3
}
L1_670.rotation = {
  x = 0,
  y = 0,
  z = 1.75
}
L1_670.lifetime = 2
L1_670.tid = System.LoadTexture("textures/clouda.dds")
L1_670.frames = 0
L1_670.color_based_blending = 0
L0_669.DamageParticles1 = L1_670
L1_670 = {}
L1_670.focus = 1.8
L1_670.speed = 0.6
L1_670.count = 1
L1_670.size = 0.3
L1_670.size_speed = 0.5
L1_670.gravity = {
  x = 0.3,
  y = 0,
  z = 0.3
}
L1_670.rotation = {
  x = 1.75,
  y = 1,
  z = 1.75
}
L1_670.lifetime = 4
L1_670.tid = System.LoadTexture("textures\\cloud_black1.dds")
L1_670.frames = 0
L1_670.color_based_blending = 0
L0_669.DamageParticles2 = L1_670
L0_669.sound_engine = nil
HeliStatic = L0_669
L0_669 = HeliStatic
L1_670 = {}
function L1_670.OnInit(A0_671)
  System.Log("Client HeliStatic onInit")
  A0_671:InitClient()
end
function L1_670.OnContact(A0_672, A1_673)
  A0_672:OnContactClient(A1_673)
end
function L1_670.OnUpdate(A0_674, A1_675)
  A0_674:UpdateClient(A1_675)
end
L0_669.Client = L1_670
L0_669 = HeliStatic
L1_670 = {}
function L1_670.OnInit(A0_676)
  System.Log("Server HeliStatic onInit")
  A0_676:InitServer()
end
function L1_670.OnContact(A0_677, A1_678)
  A0_677:OnContactServer(A1_678)
end
function L1_670.OnEvent(A0_679, A1_680, A2_681)
  A0_679:OnEventServer(A1_680, A2_681)
end
function L1_670.OnShutDown(A0_682)
  A0_682:OnShutDownServer(A0_682)
end
function L1_670.OnUpdate(A0_683, A1_684)
  A0_683:UpdateServer(A1_684)
end
function L1_670.OnDamage(A0_685, A1_686)
  A0_685:OnDamageServer(A1_686)
end
L0_669.Server = L1_670
L0_669 = HeliStatic
function L1_670(A0_687)
  A0_687.damage = 0
  A0_687.sound_engine = Sound.Load3DSound(A0_687.Properties.sound_engine_file, bor(SOUND_OUTDOOR, SOUND_UNSCALABLE), 0, 255, 1, 100)
end
L0_669.OnReset = L1_670
L0_669 = HeliStatic
function L1_670(A0_688)
  A0_688:OnReset()
  A0_688:LoadModel()
  Sound.SetSoundLoop(A0_688.sound_engine, 1)
end
L0_669.OnPropertyChange = L1_670
L0_669 = HeliStatic
function L1_670(A0_689)
  local L1_690, L2_691
  L1_690 = A0_689.temp_ModelName
  L2_691 = A0_689.Properties
  L2_691 = L2_691.fileModel
  if L1_690 ~= L2_691 then
    L2_691 = A0_689
    L1_690 = A0_689.LoadObject
    L1_690(L2_691, A0_689.Properties.fileModel, 0, 1)
    L1_690 = A0_689.Properties
    L1_690 = L1_690.bRigidBodyActive
    if L1_690 == 1 then
      L2_691 = A0_689
      L1_690 = A0_689.CreateRigidBody
      L1_690(L2_691, 1000, 5000, 0)
    else
      L2_691 = A0_689
      L1_690 = A0_689.CreateStaticEntity
      L1_690(L2_691, 5000, 0)
      L2_691 = A0_689
      L1_690 = A0_689.EnablePhysics
      L1_690(L2_691, 1)
      L2_691 = A0_689
      L1_690 = A0_689.DrawObject
      L1_690(L2_691, 0, 1)
    end
    L1_690 = A0_689.Properties
    L1_690 = L1_690.fileModel
    A0_689.temp_ModelName = L1_690
    L1_690 = 1
    L2_691 = 1
    while true do
      if L2_691 == 1 and Server:SpawnEntity("Piece") then
        System.Log("loading Piece #" .. L1_690)
        A0_689.pieces[L1_690] = Server:SpawnEntity("Piece")
        L2_691 = A0_689.pieces[L1_690].Load(A0_689.pieces[L1_690], A0_689.Properties.fileModel, L1_690)
        L1_690 = L1_690 + 1
        break
      end
    end
    A0_689.pieces[L1_690 - 1] = nil
  end
  L1_690 = A0_689.Properties
  L1_690 = L1_690.fileModel
  A0_689.temp_ModelName = L1_690
end
L0_669.LoadModel = L1_670
L0_669 = HeliStatic
function L1_670(A0_692)
  A0_692:LoadModel()
  A0_692:OnReset()
  Sound.SetSoundLoop(A0_692.sound_engine, 1)
  A0_692.ExplosionSound = Sound.Load3DSound("sounds\\weapons\\explosions\\mbarrel.wav", 0, 0, 0, 7, 100)
end
L0_669.InitClient = L1_670
L0_669 = HeliStatic
function L1_670(A0_693)
  A0_693:OnReset()
  A0_693:Activate(1)
  A0_693:LoadModel()
end
L0_669.InitServer = L1_670
L0_669 = HeliStatic
function L1_670(A0_694, A1_695)
  if A1_695.type ~= "Player" then
    return
  end
end
L0_669.OnContactServer = L1_670
L0_669 = HeliStatic
function L1_670(A0_696, A1_697)
  if A1_697.type ~= "Player" then
    return
  end
end
L0_669.OnContactClient = L1_670
L0_669 = HeliStatic
function L1_670(A0_698, A1_699)
end
L0_669.UpdateServer = L1_670
L0_669 = HeliStatic
function L1_670(A0_700, A1_701)
  local L2_702
  L2_702 = A0_700.GetPos
  L2_702 = L2_702(A0_700)
  L2_702.z = L2_702.z - 5
  System.ApplyForceToEnvironment(L2_702, 50, 1)
  if _localplayer and _localplayer.id and A0_700.sound_engine ~= nil then
    if System.IsPointIndoors(_localplayer:GetPos()) then
      if Sound.IsPlaying(A0_700.sound_engine) then
        Sound.StopSound(A0_700.sound_engine)
      end
    else
      Sound.SetSoundPosition(A0_700.sound_engine, L2_702)
      if Sound.IsPlaying(A0_700.sound_engine) == nil then
        Sound.PlaySound(A0_700.sound_engine)
      end
    end
  end
  A0_700:ExecuteDamageModel()
end
L0_669.UpdateClient = L1_670
L0_669 = HeliStatic
function L1_670(A0_703, A1_704)
  System.LogToConsole("Damage  " .. A1_704.damage .. " total " .. A0_703.damage)
  if A0_703.damage < 0 then
    return
  end
  if A1_704.explosion then
    A0_703.damage = A0_703.damage + A1_704.damage * A0_703.Properties.fDmgScaleExplosion
  else
    A0_703.damage = A0_703.damage + A1_704.damage * A0_703.Properties.fDmgScaleBullet
  end
end
L0_669.OnDamageServer = L1_670
L0_669 = HeliStatic
function L1_670(A0_705)
  System.LogToConsole("HeliStatic OnShutDOWN ---------------------------")
  for _FORV_4_, _FORV_5_ in pairs(A0_705.pieces) do
    Server:RemoveEntity(_FORV_5_.id)
  end
end
L0_669.OnShutDownServer = L1_670
L0_669 = HeliStatic
function L1_670(A0_706, A1_707)
end
L0_669.OnSave = L1_670
L0_669 = HeliStatic
function L1_670(A0_708, A1_709)
end
L0_669.OnLoad = L1_670
L0_669 = HeliStatic
function L1_670(A0_710, A1_711, A2_712)
end
L0_669.OnEventServer = L1_670
L0_669 = HeliStatic
function L1_670(A0_713, A1_714)
end
L0_669.OnWrite = L1_670
L0_669 = HeliStatic
function L1_670(A0_715, A1_716)
end
L0_669.OnRead = L1_670
L0_669 = HeliStatic
function L1_670(A0_717)
  local L1_718
  L1_718 = A0_717.damage
  if L1_718 > A0_717.Properties.max_health * 0.2 then
    L1_718 = A0_717.GetHelperPos
    L1_718 = L1_718(A0_717, "vehicle_damage1", 0)
    Particle.CreateParticle(L1_718, {
      x = 0,
      y = 0,
      z = 1
    }, A0_717.DamageParticles1)
    if A0_717.damage > A0_717.Properties.max_health then
      L1_718 = A0_717:GetHelperPos("vehicle_damage2", 0)
      Particle.CreateParticle(L1_718, {
        x = 0,
        y = 0,
        z = 1
      }, A0_717.DamageParticles2)
      HeliStatic.BlowUp(A0_717)
    end
  end
end
L0_669.ExecuteDamageModel = L1_670
L0_669 = HeliStatic
function L1_670(A0_719)
  local L1_720, L2_721
  L1_720 = A0_719.bExploded
  if L1_720 == 1 then
    return
  end
  L1_720 = {}
  L1_720.x = 0
  L1_720.y = 0
  L1_720.z = 1
  L2_721 = ExecuteMaterial
  L2_721(A0_719:GetPos(), L1_720, HeliExplosion, 1)
  L2_721 = {}
  L2_721.pos = A0_719:GetPos()
  L2_721.damage = A0_719.Properties.ExplosionParams.nDamage
  L2_721.rmin = A0_719.Properties.ExplosionParams.fRadiusMin
  L2_721.rmax = A0_719.Properties.ExplosionParams.fRadiusMax
  L2_721.radius = A0_719.Properties.ExplosionParams.fRadius
  L2_721.impulsive_pressure = A0_719.Properties.ExplosionParams.fImpulsivePressure
  L2_721.shooter = A0_719
  L2_721.weapon = A0_719
  Game:CreateExplosion(L2_721)
  L2_721.pos = A0_719:GetHelperPos("vehicle_damage2", 0)
  Game:CreateExplosion(L2_721)
  if A0_719.ExplosionSound ~= nil then
    Sound.SetSoundPosition(A0_719.ExplosionSound, A0_719:GetPos())
    Sound.PlaySound(A0_719.ExplosionSound)
  end
  A0_719:BreakOnPieces()
  A0_719.bExploded = 1
end
L0_669.BlowUp = L1_670
L0_669 = HeliStatic
function L1_670(A0_722)
  local L1_723, L2_724, L3_725, L4_726, L5_727, L6_728, L7_729, L8_730
  L2_724 = A0_722
  L1_723 = A0_722.GetPos
  L1_723 = L1_723(L2_724)
  L3_725 = A0_722
  L2_724 = A0_722.GetAngles
  L2_724 = L2_724(L3_725)
  L3_725 = A0_722.DrawObject
  L3_725(L4_726, L5_727, L6_728)
  L3_725 = System
  L3_725 = L3_725.Log
  L3_725(L4_726)
  L3_725 = {}
  L3_725.x = 0
  L3_725.y = 0
  L3_725.z = 1
  for L7_729, L8_730 in L4_726(L5_727) do
    System.Log(" Piece #" .. L7_729)
    L8_730:DrawObject(0, 1)
    L8_730:EnablePhysics(1)
    L8_730:SetPos(L1_723)
    L8_730:SetAngles(L2_724)
    L3_725.x = 2 - random(0, 4)
    L3_725.y = 2 - random(0, 4)
    L3_725.z = 2
    L8_730:Activate(L8_730)
  end
  if L4_726 then
    L4_726(L5_727)
  end
  L4_726(L5_727, L6_728)
end
L0_669.BreakOnPieces = L1_670
