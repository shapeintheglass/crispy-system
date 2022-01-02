local L0_1156, L1_1157, L2_1158, L3_1159
L0_1156 = {}
L1_1157 = {}
L1_1157.object_Model = "Objects/Outdoor/props/PORTABLE_TV/portable_TV.cgf"
L1_1157.object_ModelDestroyed = ""
L1_1157.nDamage = 5
L1_1157.fSndRadius = 25
L1_1157.fSndVolume = 255
L2_1158 = {}
L2_1158.sndFilename = ""
L2_1158.InnerRadius = 1
L2_1158.OuterRadius = 10
L2_1158.nVolume = 255
L1_1157.AliveSoundLoop = L2_1158
L2_1158 = {}
L2_1158.sndFilename = ""
L2_1158.InnerRadius = 1
L2_1158.OuterRadius = 10
L2_1158.nVolume = 255
L1_1157.DeadSoundLoop = L2_1158
L2_1158 = {}
L2_1158.sndFilename = ""
L2_1158.InnerRadius = 1
L2_1158.OuterRadius = 10
L2_1158.nVolume = 255
L1_1157.DyingSound = L2_1158
L0_1156.PropertiesInstance = L1_1157
L1_1157 = {}
L1_1157.mass = 5
L0_1156.Properties = L1_1157
TV = L0_1156
L0_1156 = TV
function L1_1157(A0_1160)
  A0_1160:Activate(0)
  AI:RegisterWithAI(A0_1160.id, AIOBJECT_SNDSUPRESSOR, A0_1160.Properties)
  A0_1160:SetAICustomFloat(A0_1160.PropertiesInstance.fSndRadius)
  A0_1160:OnReset()
end
L0_1156.OnInit = L1_1157
L0_1156 = TV
function L1_1157(A0_1161)
  A0_1161:OnReset()
end
L0_1156.OnPropertyChange = L1_1157
L0_1156 = TV
function L1_1157(A0_1162)
  local L1_1163
end
L0_1156.OnShutDown = L1_1157
L0_1156 = TV
function L1_1157(A0_1164)
  if A0_1164.PropertiesInstance.object_Model ~= A0_1164.CurrModel then
    A0_1164.CurrModel = A0_1164.PropertiesInstance.object_Model
    A0_1164:LoadObject(A0_1164.PropertiesInstance.object_Model, 0, 1)
    A0_1164:DrawObject(0, 1)
    A0_1164:CreateStaticEntity(10, 100)
    A0_1164:CreateRigidBody(0, A0_1164.Properties.Mass, 0)
  end
  if A0_1164.PropertiesInstance.object_ModelDestroyed ~= "" and A0_1164.PropertiesInstance.object_ModelDestroyed ~= A0_1164.CurrDestroyedModel then
    A0_1164.CurrDestroyedModel = A0_1164.PropertiesInstance.object_ModelDestroyed
    A0_1164:LoadObject(A0_1164.PropertiesInstance.object_ModelDestroyed, 1, 1)
    A0_1164:DrawObject(1, 0)
    A0_1164:CreateStaticEntity(10, 100)
  end
  if A0_1164.DyingSoundLoop and Sound.IsPlaying(A0_1164.DyingSound) then
    Sound.StopSound(A0_1164.DyingSound)
  end
  if A0_1164.DeadSoundLoop and Sound.IsPlaying(A0_1164.DeadSoundLoop) then
    Sound.StopSound(A0_1164.DeadSoundLoop)
  end
  if A0_1164.AliveSoundLoop and Sound.IsPlaying(A0_1164.AliveSoundLoop) then
    Sound.StopSound(A0_1164.AliveSoundLoop)
  end
  if A0_1164.PropertiesInstance.AliveSoundLoop.sndFilename ~= "" then
    A0_1164.AliveSoundLoop = Sound.Load3DSound(A0_1164.PropertiesInstance.AliveSoundLoop.sndFilename, 0)
    if A0_1164.AliveSoundLoop then
      Sound.SetSoundPosition(A0_1164.AliveSoundLoop, A0_1164:GetPos())
      Sound.SetSoundLoop(A0_1164.AliveSoundLoop, 1)
      Sound.SetSoundVolume(A0_1164.AliveSoundLoop, A0_1164.PropertiesInstance.AliveSoundLoop.nVolume)
      Sound.SetMinMaxDistance(A0_1164.AliveSoundLoop, A0_1164.PropertiesInstance.AliveSoundLoop.InnerRadius, A0_1164.PropertiesInstance.AliveSoundLoop.OuterRadius)
    end
  else
    A0_1164.AliveSoundLoop = nil
  end
  if A0_1164.PropertiesInstance.DeadSoundLoop.sndFilename ~= "" then
    A0_1164.DeadSoundLoop = Sound.Load3DSound(A0_1164.PropertiesInstance.DeadSoundLoop.sndFilename, 0)
    if A0_1164.DeadSoundLoop then
      Sound.SetSoundPosition(A0_1164.DeadSoundLoop, A0_1164:GetPos())
      Sound.SetSoundLoop(A0_1164.DeadSoundLoop, 1)
      Sound.SetSoundVolume(A0_1164.DeadSoundLoop, A0_1164.PropertiesInstance.DeadSoundLoop.nVolume)
      Sound.SetMinMaxDistance(A0_1164.DeadSoundLoop, A0_1164.PropertiesInstance.DeadSoundLoop.InnerRadius, A0_1164.PropertiesInstance.DeadSoundLoop.OuterRadius)
    end
  else
    A0_1164.DeadSoundLoop = nil
  end
  if A0_1164.PropertiesInstance.DyingSound.sndFilename ~= "" then
    A0_1164.DyingSound = Sound.Load3DSound(A0_1164.PropertiesInstance.DyingSound.sndFilename, 0)
    if A0_1164.DyingSound then
      Sound.SetSoundPosition(A0_1164.DyingSound, A0_1164:GetPos())
      Sound.SetSoundVolume(A0_1164.DyingSound, A0_1164.PropertiesInstance.DyingSound.nVolume)
      Sound.SetMinMaxDistance(A0_1164.DyingSound, A0_1164.PropertiesInstance.DyingSound.InnerRadius, A0_1164.PropertiesInstance.DyingSound.OuterRadius)
    end
  else
    A0_1164.DyingSound = nil
  end
  A0_1164.curr_damage = A0_1164.PropertiesInstance.nDamage
  System.Log("---RESET TV")
  A0_1164:GoAlive()
end
L0_1156.OnReset = L1_1157
L0_1156 = TV
function L1_1157(A0_1165)
  A0_1165:EnablePhysics(1)
  A0_1165:DrawObject(0, 1)
  A0_1165:DrawObject(1, 0)
  if A0_1165.DeadSoundLoop then
    Sound.StopSound(A0_1165.DeadSoundLoop)
    System.Log("stopping dead-loop")
  end
  A0_1165:GotoState("Active")
end
L0_1156.GoAlive = L1_1157
L0_1156 = TV
function L1_1157(A0_1166)
  if A0_1166.DyingSound and not Sound.IsPlaying(A0_1166.DyingSound) then
    Sound.PlaySound(A0_1166.DyingSound)
    System.Log("starting dying")
  end
  if A0_1166.DeadSoundLoop and not Sound.IsPlaying(A0_1166.DeadSoundLoop) then
    Sound.PlaySound(A0_1166.DeadSoundLoop)
    System.Log("starting dead-loop")
  end
  A0_1166:GotoState("Dead")
end
L0_1156.GoDead = L1_1157
L0_1156 = TV
L1_1157 = {}
function L2_1158(A0_1167)
  A0_1167:Event_On()
end
L1_1157.OnBeginState = L2_1158
function L2_1158(A0_1168, A1_1169)
  A0_1168.curr_damage = A0_1168.curr_damage - A1_1169.damage
  if A0_1168.curr_damage <= 0 then
    A0_1168:GoDead()
  end
end
L1_1157.OnDamage = L2_1158
L0_1156.Active = L1_1157
L0_1156 = TV
L1_1157 = {}
function L2_1158(A0_1170)
  System.Log("enter dead")
  A0_1170:Event_Off()
  A0_1170:DrawObject(0, 0)
  if A0_1170.PropertiesInstance.object_ModelDestroyed ~= "" then
    A0_1170:DrawObject(1, 1)
  else
    A0_1170:EnablePhysics(0)
  end
end
L1_1157.OnBeginState = L2_1158
L0_1156.Dead = L1_1157
L0_1156 = TV
function L1_1157(A0_1171, A1_1172)
  BroadcastEvent(A0_1171, "OnDamage")
end
L0_1156.Event_OnDamage = L1_1157
L0_1156 = TV
function L1_1157(A0_1173, A1_1174)
  A0_1173:TriggerEvent(AIEVENT_ENABLE)
  if A0_1173.AliveSoundLoop and not Sound.IsPlaying(A0_1173.AliveSoundLoop) then
    Sound.PlaySound(A0_1173.AliveSoundLoop)
    System.Log("starting alive-loop")
  end
end
L0_1156.Event_On = L1_1157
L0_1156 = TV
function L1_1157(A0_1175, A1_1176)
  A0_1175:TriggerEvent(AIEVENT_DISABLE)
  if A0_1175.AliveSoundLoop then
    Sound.StopSound(A0_1175.AliveSoundLoop)
    System.Log("stopping alive-loop")
  end
end
L0_1156.Event_Off = L1_1157
L0_1156 = TV
L1_1157 = {}
L2_1158 = {}
L3_1159 = {
  TV.Event_Disable,
  "bool"
}
L2_1158.Off = L3_1159
L3_1159 = {
  TV.Event_Enable,
  "bool"
}
L2_1158.On = L3_1159
L3_1159 = {
  TV.Event_Enable,
  "bool"
}
L2_1158.OnDamage = L3_1159
L1_1157.Inputs = L2_1158
L2_1158 = {}
L2_1158.Off = "bool"
L2_1158.On = "bool"
L2_1158.OnDamage = "bool"
L1_1157.Outputs = L2_1158
L0_1156.FlowEvents = L1_1157
