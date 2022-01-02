Script.ReloadScript("scripts/Entities/Sound/Shared/AudioUtils.lua")
AudioTriggerSpot = {
  Editor = {
    Model = "Editor/Objects/Sound.cgf",
    Icon = "Sound.bmp"
  },
  Properties = {
    bEnabled = true,
    audioTriggerPlayTriggerName = "",
    audioTriggerStopTriggerName = "",
    bSerializePlayState = true,
    eiSoundObstructionType = 1,
    bPlayOnX = false,
    bPlayOnY = false,
    bPlayOnZ = false,
    fRadiusRandom = 10,
    bPlayRandom = false,
    fMinDelay = 1,
    fMaxDelay = 2
  },
  hOnTriggerID = nil,
  hOffTriggerID = nil,
  tObstructionType = {},
  bIsHidden = false,
  bIsPlaying = false,
  bHasMoved = false
}
function AudioTriggerSpot._LookupTriggerIDs(A0_8495)
  A0_8495.hOnTriggerID = AudioUtils.LookupTriggerID(A0_8495.Properties.audioTriggerPlayTriggerName)
  A0_8495.hOffTriggerID = AudioUtils.LookupTriggerID(A0_8495.Properties.audioTriggerStopTriggerName)
end
function AudioTriggerSpot._LookupObstructionSwitchIDs(A0_8496)
  A0_8496.tObstructionType = AudioUtils.LookupObstructionSwitchAndStates()
end
function AudioTriggerSpot._SetObstruction(A0_8497)
  local L1_8498, L2_8499, L3_8500, L5_8501
  L1_8498 = A0_8497.Properties
  L1_8498 = L1_8498.eiSoundObstructionType
  L1_8498 = L1_8498 + 1
  L2_8499 = A0_8497.tObstructionType
  L2_8499 = L2_8499.hSwitchID
  if L2_8499 ~= nil then
    L2_8499 = A0_8497.tObstructionType
    L2_8499 = L2_8499.tStateIDs
    L2_8499 = L2_8499[L1_8498]
    if L2_8499 ~= nil then
      L3_8500 = A0_8497
      L2_8499 = A0_8497.SetAudioSwitchState
      L5_8501 = A0_8497.tObstructionType
      L5_8501 = L5_8501.hSwitchID
      L2_8499(L3_8500, L5_8501, A0_8497.tObstructionType.tStateIDs[L1_8498], A0_8497:GetDefaultAuxAudioProxyID())
    end
  end
end
function AudioTriggerSpot._PlayFirstTime(A0_8502)
  A0_8502:_SetObstruction()
  A0_8502:SetCurrentAudioEnvironments()
  if A0_8502.Properties.bEnabled and not A0_8502.bIsHidden then
    A0_8502:Play()
  end
end
function AudioTriggerSpot._GenerateOffset(A0_8503)
  local L1_8504, L2_8505
  L1_8504 = {}
  L1_8504.x = 0
  L1_8504.y = 0
  L1_8504.z = 0
  L2_8505 = 0
  if A0_8503.Properties.bPlayOnX then
    L1_8504.x = randomF(-1, 1)
  end
  if A0_8503.Properties.bPlayOnY then
    L1_8504.y = randomF(-1, 1)
  end
  if A0_8503.Properties.bPlayOnZ then
    L1_8504.z = randomF(-1, 1)
  end
  NormalizeVector(L1_8504)
  ScaleVectorInPlace(L1_8504, randomF(0, A0_8503.Properties.fRadiusRandom))
  return L1_8504
end
function AudioTriggerSpot.OnSpawn(A0_8506)
  A0_8506:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
function AudioTriggerSpot.OnSave(A0_8507, A1_8508)
  local L2_8509
  L2_8509 = A0_8507.Properties
  A1_8508.Properties = L2_8509
  L2_8509 = A0_8507.bIsPlaying
  A1_8508.bIsPlaying = L2_8509
end
function AudioTriggerSpot.OnLoad(A0_8510, A1_8511)
  A0_8510:Stop()
  A0_8510.Properties = A1_8511.Properties
  A0_8510.bIsPlaying = A1_8511.bIsPlaying
end
function AudioTriggerSpot.OnPostLoad(A0_8512)
  A0_8512:_SetObstruction()
  A0_8512:SetCurrentAudioEnvironments()
  if A0_8512.bIsPlaying and A0_8512.Properties.bSerializePlayState then
    A0_8512.bIsPlaying = false
    A0_8512:Play()
  else
    A0_8512.bIsPlaying = false
  end
end
function AudioTriggerSpot._Init(A0_8513)
  A0_8513.bIsPlaying = false
  A0_8513:SetAudioProxyOffset(g_Vectors.v000, A0_8513:GetDefaultAuxAudioProxyID())
  A0_8513:NetPresent(0)
end
function AudioTriggerSpot.OnPropertyChange(A0_8514)
  A0_8514:Stop()
  A0_8514:_LookupTriggerIDs()
  if A0_8514.Properties.eiSoundObstructionType < 0 then
    A0_8514.Properties.eiSoundObstructionType = 0
  elseif A0_8514.Properties.eiSoundObstructionType > 1 then
    A0_8514.Properties.eiSoundObstructionType = 2
  end
  A0_8514:SetAudioProxyOffset(g_Vectors.v000, A0_8514:GetDefaultAuxAudioProxyID())
  A0_8514:_PlayFirstTime()
end
function AudioTriggerSpot.OnReset(A0_8515)
  A0_8515:Stop()
  A0_8515:_PlayFirstTime()
end
AudioTriggerSpot.Server = {
  OnInit = function(A0_8516)
    A0_8516:_Init()
  end,
  OnShutDown = function(A0_8517)
    local L1_8518
  end
}
AudioTriggerSpot.Client = {
  OnInit = function(A0_8519)
    A0_8519:_Init()
    A0_8519:_LookupObstructionSwitchIDs()
    A0_8519:_LookupTriggerIDs()
    A0_8519:_PlayFirstTime()
  end,
  OnShutDown = function(A0_8520)
    A0_8520:Stop()
  end,
  OnSoundDone = function(A0_8521, A1_8522)
    if A0_8521.hOnTriggerID == A1_8522 then
      A0_8521:ActivateOutput("Done", true)
      A0_8521.bIsPlaying = false
    end
  end,
  OnTimer = function(A0_8523, A1_8524, A2_8525)
    if A1_8524 == 0 then
      A0_8523:Play()
    end
  end,
  OnHidden = function(A0_8526)
    A0_8526:Stop()
    A0_8526.bIsHidden = true
  end,
  OnUnHidden = function(A0_8527)
    A0_8527.bIsHidden = false
    A0_8527:_PlayFirstTime()
  end,
  OnMove = function(A0_8528)
    local L1_8529
    A0_8528.bHasMoved = true
  end
}
function AudioTriggerSpot.Play(A0_8530)
  local L1_8531
  L1_8531 = A0_8530.hOnTriggerID
  if L1_8531 ~= nil then
    L1_8531 = A0_8530.Properties
    L1_8531 = L1_8531.bEnabled
    if L1_8531 then
      L1_8531 = A0_8530.Stop
      L1_8531(A0_8530)
      L1_8531 = A0_8530._GenerateOffset
      L1_8531 = L1_8531(A0_8530)
      if LengthSqVector(L1_8531) > 1.0E-5 then
        A0_8530:SetAudioProxyOffset(L1_8531, A0_8530:GetDefaultAuxAudioProxyID())
        A0_8530:SetCurrentAudioEnvironments()
      elseif A0_8530.bHasMoved then
        A0_8530:SetCurrentAudioEnvironments()
      end
      A0_8530:ExecuteAudioTrigger(A0_8530.hOnTriggerID, A0_8530:GetDefaultAuxAudioProxyID())
      A0_8530.bIsPlaying = true
      A0_8530.bHasMoved = false
      if A0_8530.Properties.bPlayRandom then
        A0_8530:SetTimer(0, 1000 * randomF(A0_8530.Properties.fMinDelay, A0_8530.Properties.fMaxDelay))
      end
    end
  end
end
function AudioTriggerSpot.Stop(A0_8532)
  if A0_8532.bIsPlaying then
    if A0_8532.hOffTriggerID ~= nil then
      A0_8532:ExecuteAudioTrigger(A0_8532.hOffTriggerID, A0_8532:GetDefaultAuxAudioProxyID())
    else
      A0_8532:StopAudioTrigger(A0_8532.hOnTriggerID, A0_8532:GetDefaultAuxAudioProxyID())
    end
    A0_8532.bIsPlaying = false
    A0_8532:KillTimer(0)
  end
end
function AudioTriggerSpot.Event_Enable(A0_8533, A1_8534)
  if not A0_8533.Properties.bEnabled then
    A0_8533.Properties.bEnabled = true
    A0_8533:Play()
  end
end
function AudioTriggerSpot.Event_Disable(A0_8535, A1_8536)
  A0_8535:Stop()
  A0_8535.Properties.bEnabled = false
end
AudioTriggerSpot.FlowEvents = {
  Inputs = {
    Enable = {
      AudioTriggerSpot.Event_Enable,
      "bool"
    },
    Disable = {
      AudioTriggerSpot.Event_Disable,
      "bool"
    }
  },
  Outputs = {Done = "bool"}
}
