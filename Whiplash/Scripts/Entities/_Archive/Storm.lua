local L0_1101, L1_1102
L0_1101 = {}
L0_1101.type = "StormController"
L1_1102 = {}
L1_1102.fRainAmount = 0.5
L1_1102.vWindDir = {
  0,
  1,
  0
}
L1_1102.nRandomFrequency = 50
L1_1102.nSoundDistortionTime = 3
L1_1102.nDistanceFromTerrain = 512
L0_1101.Properties = L1_1102
L1_1102 = {}
L1_1102.Model = "Objects/Editor/T.cgf"
L0_1101.Editor = L1_1102
L0_1101.bInside = 0
L0_1101.fLastFadeCoeff = 1
L0_1101.nCurrentPos = 0
L0_1101.fCurrentRain = 0.5
L1_1102 = {}
L1_1102.focus = 90
L1_1102.start_color = {
  1,
  1,
  1
}
L1_1102.end_color = {
  1,
  1,
  1
}
L1_1102.rotation = {
  x = 0,
  y = 0,
  z = 0
}
L1_1102.speed = 0
L1_1102.count = 1
L1_1102.size = 512
L1_1102.size_speed = 0
L1_1102.gravity = {
  x = 0,
  y = 0,
  z = 0
}
L1_1102.lifetime = 0.75
L1_1102.frames = 9
L1_1102.blend_type = 2
L1_1102.tid = System.LoadAnimatedTexture("textures/animated/lightning/lightning_y%02d.tga", 9)
L0_1101.LightningParticles = L1_1102
Storm = L0_1101
L0_1101 = Storm
function L1_1102(A0_1103)
  A0_1103.thunder_sounds = {
    Sound.Load3DSound("sounds\\thunder\\tclap1.wav", SOUND_UNSCALABLE, 0, 255, 7, 1000),
    Sound.Load3DSound("sounds\\thunder\\tclap2.wav", SOUND_UNSCALABLE, 0, 255, 7, 1000),
    Sound.Load3DSound("sounds\\thunder\\tclap3.wav", SOUND_UNSCALABLE, 0, 255, 7, 1000)
  }
  A0_1103:Activate(1)
  A0_1103:OnReset()
end
L0_1101.OnInit = L1_1102
L0_1101 = Storm
function L1_1102(A0_1104)
  A0_1104:OnReset()
end
L0_1101.OnPropertyChange = L1_1102
L0_1101 = Storm
function L1_1102(A0_1105)
  local L1_1106
  A0_1105.bInside = 0
  A0_1105.fLastFadeCoeff = 1
  A0_1105.nCurrentPos = 0
  L1_1106 = A0_1105.Properties
  L1_1106 = L1_1106.fRainAmount
  A0_1105.fCurrentRain = L1_1106
end
L0_1101.OnReset = L1_1102
L0_1101 = Storm
function L1_1102(A0_1107, A1_1108, A2_1109, A3_1110)
  A0_1107.fLastFadeCoeff = A3_1110
end
L0_1101.OnProceedFadeArea = L1_1102
L0_1101 = Storm
function L1_1102(A0_1111)
  local L1_1112, L2_1113, L3_1114
  L1_1112 = A0_1111.nCurrentPos
  if L1_1112 ~= 1 then
    L1_1112 = A0_1111.nCurrentPos
  elseif L1_1112 == 4 then
    L2_1113 = A0_1111
    L1_1112 = A0_1111.GetPos
    L1_1112 = L1_1112(L2_1113)
    L2_1113 = random
    L3_1114 = -20
    L2_1113 = L2_1113(L3_1114, 20)
    L1_1112.x = L2_1113
    L2_1113 = random
    L3_1114 = -20
    L2_1113 = L2_1113(L3_1114, 20)
    L1_1112.y = L2_1113
    L2_1113 = L1_1112.z
    L3_1114 = A0_1111.Properties
    L3_1114 = L3_1114.nDistanceFromTerrain
    L2_1113 = L2_1113 + L3_1114
    L1_1112.z = L2_1113
    L2_1113 = Particle
    L2_1113 = L2_1113.CreateParticle
    L3_1114 = L1_1112
    L2_1113(L3_1114, {
      x = 0,
      y = 0,
      z = 1
    }, A0_1111.LightningParticles)
  end
  L1_1112 = A0_1111.nCurrentPos
  if L1_1112 == 10 then
    L2_1113 = A0_1111
    L1_1112 = A0_1111.GetPos
    L1_1112 = L1_1112(L2_1113)
    L2_1113 = A0_1111.thunder_sounds
    L3_1114 = random
    L3_1114 = L3_1114(1, 3)
    L2_1113 = L2_1113[L3_1114]
    L3_1114 = Sound
    L3_1114 = L3_1114.SetSoundPosition
    L3_1114(L2_1113, L1_1112)
    L3_1114 = Sound
    L3_1114 = L3_1114.PlaySound
    L3_1114(L2_1113)
    L3_1114 = AI
    L3_1114 = L3_1114.ApplySoundDistortion
    L3_1114(L3_1114, A0_1111.Properties.nSoundDistortionTime * 1000)
    A0_1111.nCurrentPos = 0
    L3_1114 = random
    L3_1114 = L3_1114(0, 100 - A0_1111.Properties.nRandomFrequency)
    L3_1114 = L3_1114 * 100
    L3_1114 = L3_1114 * 2
    A0_1111:SetTimer(L3_1114)
    A0_1111.fCurrentRain = random(0, 16 * A0_1111.Properties.fRainAmount) / 16
    Game:ApplyStormToEnvironment(A0_1111.Properties.vWindDir, A0_1111.fCurrentRain)
  else
    L1_1112 = random
    L2_1113 = 0
    L3_1114 = A0_1111.Properties
    L3_1114 = L3_1114.nRandomFrequency
    L3_1114 = 100 - L3_1114
    L1_1112 = L1_1112(L2_1113, L3_1114)
    L1_1112 = L1_1112 * 10
    L2_1113 = A0_1111.nCurrentPos
    if L2_1113 ~= 0 then
      L2_1113 = A0_1111.nCurrentPos
    elseif L2_1113 == 6 then
      L2_1113 = Hud
      L3_1114 = L2_1113
      L2_1113 = L2_1113.OnLightning
      L2_1113(L3_1114)
    end
    L3_1114 = A0_1111
    L2_1113 = A0_1111.SetTimer
    L2_1113(L3_1114, L1_1112)
    L2_1113 = A0_1111.nCurrentPos
    L2_1113 = L2_1113 + 1
    A0_1111.nCurrentPos = L2_1113
  end
end
L0_1101.SetThunder = L1_1102
L0_1101 = Storm
function L1_1102(A0_1115, A1_1116, A2_1117)
  A0_1115:SetTimer(1000)
  A0_1115.bInside = 1
  A0_1115.nCurrentPos = 0
  Game:ApplyStormToEnvironment(A0_1115.Properties.vWindDir, A0_1115.Properties.fRainAmount)
end
L0_1101.OnEnterArea = L1_1102
L0_1101 = Storm
function L1_1102(A0_1118, A1_1119, A2_1120)
  A0_1118.bInside = 0
  Game:ApplyStormToEnvironment(A0_1118.Properties.vWindDir, 0)
  A0_1118.nCurrentPos = 0
end
L0_1101.OnLeaveArea = L1_1102
L0_1101 = Storm
function L1_1102(A0_1121)
  local L1_1122
  A0_1121.thunder_sounds = nil
end
L0_1101.OnShutDown = L1_1102
L0_1101 = Storm
function L1_1102(A0_1123)
  if A0_1123.bInside == 1 then
    A0_1123:SetThunder()
  end
end
L0_1101.Client_OnTimer = L1_1102
L0_1101 = Storm
L1_1102 = {}
L1_1102.OnTimer = Storm.Client_OnTimer
L0_1101.Client = L1_1102
