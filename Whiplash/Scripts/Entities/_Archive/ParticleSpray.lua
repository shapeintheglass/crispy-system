local L0_763, L1_764, L2_765
L0_763 = {}
L1_764 = {}
L1_764.TimeDelay = 0.1
L1_764.fUpdateRadius = 100
L1_764.bActive = 1
L1_764.nType = 0
L1_764.Focus = 4
L2_765 = {
  1,
  1,
  1
}
L1_764.clrColorStart = L2_765
L2_765 = {
  1,
  1,
  1
}
L1_764.clrColorEnd = L2_765
L1_764.Speed = 1.2
L1_764.nCount = 1
L1_764.Size = 0.2
L1_764.SizeSpeed = 2.2
L1_764.LifeTime = 2
L1_764.FadeInTime = 0.5
L1_764.nFramesSpeed = 0
L1_764.nFrames = 0
L1_764.Tail = 0
L1_764.Bounciness = 0.5
L1_764.bPhysics = 0
L1_764.bAdditiveBlend = 0
L1_764.bColorBlend = 0
L1_764.nDrawOrder = 0
L2_765 = {}
L2_765.X = 0
L2_765.Y = 0
L2_765.Z = 1
L1_764.Gravity = L2_765
L2_765 = {}
L2_765.X = 0
L2_765.Y = 0
L2_765.Z = 0
L1_764.Rotation = L2_765
L2_765 = {}
L2_765.fileTex1 = "Textures\\carsmoke.tga"
L2_765.fileTex2 = ""
L2_765.fileTex3 = ""
L2_765.fileTex4 = ""
L2_765.fileTex5 = ""
L1_764.Textures = L2_765
L2_765 = {}
L2_765.objObject1 = ""
L2_765.objObject2 = ""
L2_765.objObject3 = ""
L2_765.objObject4 = ""
L2_765.objObject5 = ""
L1_764.Objects = L2_765
L1_764.turbulence_size = 0
L1_764.turbulence_speed = 0
L1_764.bLinearSizeSpeed = 0
L1_764.ShaderName = "ParticleLight"
L2_765 = {}
L2_765.X = 0
L2_765.Y = 0
L2_765.Z = 0
L1_764.SpaceLoopBoxSize = L2_765
L1_764.bBindToCamera = 0
L1_764.bNoIndoor = 0
L1_764.ChildSpawnPeriod = 0
L2_765 = {}
L2_765.nType = 0
L2_765.Focus = 0.7
L2_765.clrColorStart = {
  1,
  1,
  1
}
L2_765.clrColorEnd = {
  1,
  1,
  1
}
L2_765.Speed = 1.2
L2_765.nCount = 2
L2_765.Size = 1.2
L2_765.SizeSpeed = 0.2
L2_765.LifeTime = 1
L2_765.FadeInTime = 0.5
L2_765.nFrames = 0
L2_765.Tail = 0
L2_765.Bounciness = 0.5
L2_765.bPhysics = 0
L2_765.bAdditiveBlend = 0
L2_765.bColorBlend = 0
L2_765.nDrawOrder = 0
L2_765.Gravity = {
  X = 0,
  Y = 0,
  Z = 0
}
L2_765.Rotation = {
  X = 0,
  Y = 0,
  Z = 0
}
L2_765.fileTexture = ""
L2_765.objGeometry = ""
L2_765.SpaceLoopBoxSize = {
  X = 0,
  Y = 0,
  Z = 0
}
L2_765.bBindToCamera = 0
L2_765.bNoIndoor = 0
L1_764.ChildProcess = L2_765
L0_763.Properties = L1_764
L1_764 = {}
L1_764.Model = "Objects/Editor/Particles.cgf"
L0_763.Editor = L1_764
L0_763.TotDelta = 0
L0_763.CurrTid = 0
ParticleSpray = L0_763
L0_763 = ParticleSpray
function L1_764(A0_766)
  A0_766:RegisterState("Active")
  A0_766:RegisterState("Idle")
  A0_766.ParticleParams = {}
  A0_766.Textures = {}
  A0_766.TexturesId = {}
  A0_766.Objects = {}
  A0_766.Direction = {
    x = 0,
    y = 0,
    z = 1
  }
  A0_766:Activate(0)
  A0_766:SetRegisterInSectors(1)
  A0_766:SetRadius(0.01)
  A0_766:OnReset()
  A0_766:NetPresent(nil)
  A0_766:SetUpdateType(eUT_PotVisible)
end
L0_763.OnInit = L1_764
L0_763 = ParticleSpray
function L1_764(A0_767, A1_768, A2_769)
  local L3_770, L4_771
  L3_770 = A2_769.Focus
  A1_768.focus = L3_770
  L3_770 = A2_769.Speed
  A1_768.speed = L3_770
  L3_770 = A2_769.nCount
  A1_768.count = L3_770
  L3_770 = A2_769.Size
  A1_768.size = L3_770
  L3_770 = A2_769.SizeSpeed
  L3_770 = L3_770 / 10
  A1_768.size_speed = L3_770
  L3_770 = A2_769.LifeTime
  A1_768.lifetime = L3_770
  L3_770 = A2_769.FadeInTime
  A1_768.fadeintime = L3_770
  L3_770 = A2_769.nFramesSpeed
  A1_768.frames = L3_770
  L3_770 = A2_769.Tail
  A1_768.tail_length = L3_770
  L3_770 = A2_769.Bounciness
  A1_768.bouncyness = L3_770
  L3_770 = A2_769.bPhysics
  A1_768.physics = L3_770
  L3_770 = A2_769.bBindToCamera
  A1_768.BindToCamera = L3_770
  L3_770 = A2_769.bNoIndoor
  A1_768.NoIndoor = L3_770
  L3_770 = A2_769.nDrawOrder
  A1_768.draw_last = L3_770
  L3_770 = A2_769.nType
  A1_768.particle_type = L3_770
  A1_768.blend_type = 0
  L3_770 = A2_769.bColorBlend
  if L3_770 ~= 0 then
    A1_768.blend_type = 1
  end
  L3_770 = A2_769.bAdditiveBlend
  if L3_770 ~= 0 then
    A1_768.blend_type = 2
  end
  L3_770 = {}
  A1_768.gravity = L3_770
  L3_770 = A1_768.gravity
  L4_771 = A2_769.Gravity
  L4_771 = L4_771.X
  L3_770.x = L4_771
  L3_770 = A1_768.gravity
  L4_771 = A2_769.Gravity
  L4_771 = L4_771.Y
  L3_770.y = L4_771
  L3_770 = A1_768.gravity
  L4_771 = A2_769.Gravity
  L4_771 = L4_771.Z
  L3_770.z = L4_771
  L3_770 = {}
  A1_768.SpaceLoopBoxSize = L3_770
  L3_770 = A1_768.SpaceLoopBoxSize
  L4_771 = A2_769.SpaceLoopBoxSize
  L4_771 = L4_771.X
  L3_770.x = L4_771
  L3_770 = A1_768.SpaceLoopBoxSize
  L4_771 = A2_769.SpaceLoopBoxSize
  L4_771 = L4_771.Y
  L3_770.y = L4_771
  L3_770 = A1_768.SpaceLoopBoxSize
  L4_771 = A2_769.SpaceLoopBoxSize
  L4_771 = L4_771.Z
  L3_770.z = L4_771
  L3_770 = {}
  A1_768.rotation = L3_770
  L3_770 = A1_768.rotation
  L4_771 = A2_769.Rotation
  L4_771 = L4_771.X
  L3_770.x = L4_771
  L3_770 = A1_768.rotation
  L4_771 = A2_769.Rotation
  L4_771 = L4_771.Y
  L3_770.y = L4_771
  L3_770 = A1_768.rotation
  L4_771 = A2_769.Rotation
  L4_771 = L4_771.Z
  L3_770.z = L4_771
  L3_770 = {}
  A1_768.start_color = L3_770
  L3_770 = A1_768.start_color
  L4_771 = A2_769.clrColorStart
  L4_771 = L4_771[1]
  L3_770[1] = L4_771
  L3_770 = A1_768.start_color
  L4_771 = A2_769.clrColorStart
  L4_771 = L4_771[2]
  L3_770[2] = L4_771
  L3_770 = A1_768.start_color
  L4_771 = A2_769.clrColorStart
  L4_771 = L4_771[3]
  L3_770[3] = L4_771
  L3_770 = {}
  A1_768.end_color = L3_770
  L3_770 = A1_768.end_color
  L4_771 = A2_769.clrColorEnd
  L4_771 = L4_771[1]
  L3_770[1] = L4_771
  L3_770 = A1_768.end_color
  L4_771 = A2_769.clrColorEnd
  L4_771 = L4_771[2]
  L3_770[2] = L4_771
  L3_770 = A1_768.end_color
  L4_771 = A2_769.clrColorEnd
  L4_771 = L4_771[3]
  L3_770[3] = L4_771
  L3_770 = A2_769.turbulence_size
  A1_768.turbulence_size = L3_770
  L3_770 = A2_769.turbulence_speed
  A1_768.turbulence_speed = L3_770
  L3_770 = A2_769.bLinearSizeSpeed
  A1_768.bLinearSizeSpeed = L3_770
  L3_770 = A2_769.ChildSpawnPeriod
  A1_768.ChildSpawnPeriod = L3_770
  L3_770 = A2_769.ShaderName
  A1_768.ShaderName = L3_770
end
L0_763.Property2ParticleTable = L1_764
L0_763 = ParticleSpray
function L1_764(A0_772)
  A0_772:OnReset()
  if A0_772.Properties.bActive ~= 0 then
    A0_772:CreateParticleEmitter(A0_772.ParticleParams, A0_772.Properties.TimeDelay)
  end
end
L0_763.OnPropertyChange = L1_764
L0_763 = ParticleSpray
function L1_764(A0_773)
  A0_773:Property2ParticleTable(A0_773.ParticleParams, A0_773.Properties)
  A0_773.ParticleParams.ChildSpawnPeriod = A0_773.Properties.ChildSpawnPeriod
  if A0_773.Properties.ChildProcess.fileTexture ~= "" or A0_773.Properties.ChildProcess.objGeometry ~= "" then
    A0_773.ParticleParams.ChildProcess = {}
    A0_773:Property2ParticleTable(A0_773.ParticleParams.ChildProcess, A0_773.Properties.ChildProcess)
  else
    A0_773.ParticleParams.ChildProcess = nil
  end
  for _FORV_5_, _FORV_6_ in pairs(A0_773.Properties.Textures) do
  end
  if 1 then
    A0_773.ReloadTexures(A0_773)
  end
  A0_773.ParticleParams.tid = A0_773:GetRandomTextureId()
  A0_773:Activate(1)
  A0_773:SetUpdateRadius(A0_773.Properties.fUpdateRadius)
  A0_773:GotoState("")
  if A0_773.Properties.bActive ~= 0 then
    A0_773:GotoState("Active")
  else
    A0_773:GotoState("Idle")
  end
end
L0_763.OnReset = L1_764
L0_763 = ParticleSpray
function L1_764(A0_774, A1_775)
end
L0_763.OnSave = L1_764
L0_763 = ParticleSpray
function L1_764(A0_776, A1_777)
end
L0_763.OnLoad = L1_764
L0_763 = ParticleSpray
function L1_764(A0_778)
  A0_778:GotoState("Active")
end
L0_763.Event_Enable = L1_764
L0_763 = ParticleSpray
function L1_764(A0_779)
  A0_779:GotoState("Idle")
end
L0_763.Event_Disable = L1_764
L0_763 = ParticleSpray
function L1_764(A0_780)
  local L1_781, L2_782, L3_783, L4_784, L5_785, L6_786
  L1_781 = 1
  A0_780.TextureIds = L2_782
  for L5_785, L6_786 in L2_782(L3_783) do
    if L6_786 ~= "" then
      if A0_780.Properties.nFrames > 0 then
        A0_780.TexturesId[L1_781] = System.LoadAnimatedTexture(L6_786, A0_780.Properties.nFrames)
      else
        A0_780.TexturesId[L1_781] = System.LoadTexture(L6_786)
      end
      L1_781 = L1_781 + 1
    end
    A0_780.Textures[L5_785] = L6_786
  end
  if L2_782 == "" then
    L2_782.ChildProcess = nil
  else
    A0_780.ChildTexture = L2_782
    L2_782.ChildProcess = L3_783
    L5_785 = A0_780.Properties
    L5_785 = L5_785.ChildProcess
    L2_782(L3_783, L4_784, L5_785)
    L2_782.tid = L3_783
  end
end
L0_763.ReloadTexures = L1_764
L0_763 = ParticleSpray
function L1_764(A0_787)
  A0_787.ObjectIds = {}
  for _FORV_5_, _FORV_6_ in pairs(A0_787.Properties.Objects) do
    A0_787.Objects[_FORV_5_] = _FORV_6_
  end
end
L0_763.ReloadObjects = L1_764
L0_763 = ParticleSpray
function L1_764(A0_788)
  local L1_789, L2_790
  L1_789 = A0_788.TexturesId
  L2_790 = getn
  L2_790 = L2_790(L1_789)
  if L2_790 > 0 then
    return L1_789[random(1, L2_790)]
  else
    return nil
  end
end
L0_763.GetRandomTextureId = L1_764
L0_763 = ParticleSpray
L1_764 = {}
function L2_765(A0_791)
  A0_791:Activate(1)
  A0_791:CreateParticleEmitter(A0_791.ParticleParams, A0_791.Properties.TimeDelay)
  A0_791.bHaveEmitter = 1
end
L1_764.OnBeginState = L2_765
function L2_765(A0_792)
  A0_792.bHaveEmitter = nil
  A0_792:DeleteParticleEmitter()
  A0_792:Activate(0)
end
L1_764.OnEndState = L2_765
L0_763.Active = L1_764
L0_763 = ParticleSpray
L1_764 = {}
function L2_765(A0_793)
  A0_793:Activate(0)
  if A0_793.bHaveEmitter then
    A0_793:DeleteParticleEmitter(0)
    A0_793.bHaveEmitter = nil
  end
end
L1_764.OnBeginState = L2_765
L0_763.Idle = L1_764
L0_763 = ParticleSpray
function L1_764(A0_794)
  local L1_795
end
L0_763.OnShutDown = L1_764
L0_763 = ParticleSpray
L1_764 = {}
L2_765 = {}
L2_765.Disable = {
  ParticleSpray.Event_Disable,
  "bool"
}
L2_765.Enable = {
  ParticleSpray.Event_Enable,
  "bool"
}
L1_764.Inputs = L2_765
L2_765 = {}
L2_765.Disable = "bool"
L2_765.Enable = "bool"
L1_764.Outputs = L2_765
L0_763.FlowEvents = L1_764
