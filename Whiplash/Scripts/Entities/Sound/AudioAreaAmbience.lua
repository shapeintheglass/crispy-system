local L0_8352, L1_8353, L2_8354, L3_8355
L0_8352 = {}
L0_8352.type = "AudioAreaAmbience"
L1_8353 = {}
L1_8353.Model = "Editor/Objects/Sound.cgf"
L1_8353.Icon = "AudioAreaAmbience.bmp"
L0_8352.Editor = L1_8353
L1_8353 = {}
L1_8353.bEnabled = true
L1_8353.audioTriggerPlayTrigger = ""
L1_8353.audioTriggerStopTrigger = ""
L1_8353.audioRTPCRtpc = ""
L1_8353.audioEnvironmentEnvironment = ""
L1_8353.eiSoundObstructionType = 1
L1_8353.fRtpcDistance = 5
L1_8353.fEnvironmentDistance = 5
L0_8352.Properties = L1_8353
L0_8352.fFadeValue = 0
L0_8352.nState = 0
L0_8352.fFadeOnUnregister = 1
L0_8352.hOnTriggerID = nil
L0_8352.hOffTriggerID = nil
L0_8352.hRtpcID = nil
L0_8352.hEnvironmentID = nil
L1_8353 = {}
L0_8352.tObstructionType = L1_8353
L0_8352.bIsPlaying = false
AudioAreaAmbience = L0_8352
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8356)
  A0_8356.hOnTriggerID = AudioUtils.LookupTriggerID(A0_8356.Properties.audioTriggerPlayTrigger)
  A0_8356.hOffTriggerID = AudioUtils.LookupTriggerID(A0_8356.Properties.audioTriggerStopTrigger)
  A0_8356.hRtpcID = AudioUtils.LookupRtpcID(A0_8356.Properties.audioRTPCRtpc)
  A0_8356.hEnvironmentID = AudioUtils.LookupAudioEnvironmentID(A0_8356.Properties.audioEnvironmentEnvironment)
end
L0_8352._LookupControlIDs = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8357)
  A0_8357.tObstructionType = AudioUtils.LookupObstructionSwitchAndStates()
end
L0_8352._LookupObstructionSwitchIDs = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8358)
  local L1_8359, L2_8360, L3_8361, L5_8362
  L1_8359 = A0_8358.Properties
  L1_8359 = L1_8359.eiSoundObstructionType
  L1_8359 = L1_8359 + 1
  L2_8360 = A0_8358.tObstructionType
  L2_8360 = L2_8360.hSwitchID
  if L2_8360 ~= nil then
    L2_8360 = A0_8358.tObstructionType
    L2_8360 = L2_8360.tStateIDs
    L2_8360 = L2_8360[L1_8359]
    if L2_8360 ~= nil then
      L3_8361 = A0_8358
      L2_8360 = A0_8358.SetAudioSwitchState
      L5_8362 = A0_8358.tObstructionType
      L5_8362 = L5_8362.hSwitchID
      L2_8360(L3_8361, L5_8362, A0_8358.tObstructionType.tStateIDs[L1_8359], A0_8358:GetDefaultAuxAudioProxyID())
    end
  end
end
L0_8352._SetObstruction = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8363)
  local L1_8364, L2_8365, L3_8366, L5_8367
  L1_8364 = 1
  L2_8365 = A0_8363.tObstructionType
  L2_8365 = L2_8365.hSwitchID
  if L2_8365 ~= nil then
    L2_8365 = A0_8363.tObstructionType
    L2_8365 = L2_8365.tStateIDs
    L2_8365 = L2_8365[L1_8364]
    if L2_8365 ~= nil then
      L3_8366 = A0_8363
      L2_8365 = A0_8363.SetAudioSwitchState
      L5_8367 = A0_8363.tObstructionType
      L5_8367 = L5_8367.hSwitchID
      L2_8365(L3_8366, L5_8367, A0_8363.tObstructionType.tStateIDs[L1_8364], A0_8363:GetDefaultAuxAudioProxyID())
    end
  end
end
L0_8352._DisableObstruction = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8368)
  if A0_8368.Properties.bEnabled then
    A0_8368:Play()
  end
end
L0_8352._PlayFirstTime = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8369)
  if A0_8369.Properties.bEnabled then
    if A0_8369.hEnvironmentID ~= nil then
      A0_8369:SetAudioEnvironmentID(A0_8369.hEnvironmentID)
    end
  else
    A0_8369:SetAudioEnvironmentID(INVALID_AUDIO_ENVIRONMENT_ID)
  end
  A0_8369:SetFadeDistance(A0_8369.Properties.fRtpcDistance)
  A0_8369:SetEnvironmentFadeDistance(A0_8369.Properties.fEnvironmentDistance)
end
L0_8352._UpdateParameters = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8370)
  local L2_8371, L3_8372, L4_8373
  L2_8371 = A0_8370.hRtpcID
  if L2_8371 ~= nil then
    L3_8372 = A0_8370
    L2_8371 = A0_8370.SetAudioRtpcValue
    L4_8373 = A0_8370.hRtpcID
    L2_8371(L3_8372, L4_8373, A0_8370.fFadeValue, A0_8370:GetDefaultAuxAudioProxyID())
  end
end
L0_8352._UpdateRtpc = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8374)
  A0_8374:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_8352.OnSpawn = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8375, A1_8376)
  A0_8375.Properties = A1_8376.Properties
  A0_8375.fFadeValue = A1_8376.fFadeValue
  A0_8375.nState = A1_8376.nState
  A0_8375.fFadeOnUnregister = A1_8376.fFadeOnUnregister
  A0_8375:_SetObstruction()
end
L0_8352.OnLoad = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8377, A1_8378)
  local L2_8379
  L2_8379 = A0_8377.Properties
  A1_8378.Properties = L2_8379
  L2_8379 = A0_8377.fFadeValue
  A1_8378.fFadeValue = L2_8379
  L2_8379 = A0_8377.nState
  A1_8378.nState = L2_8379
  L2_8379 = A0_8377.fFadeOnUnregister
  A1_8378.fFadeOnUnregister = L2_8379
end
L0_8352.OnSave = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8380)
  A0_8380:Stop()
  A0_8380:_LookupControlIDs()
  A0_8380:_UpdateParameters()
  if A0_8380.Properties.eiSoundObstructionType < 0 then
    A0_8380.Properties.eiSoundObstructionType = 0
  elseif A0_8380.Properties.eiSoundObstructionType > 2 then
    A0_8380.Properties.eiSoundObstructionType = 2
  end
  A0_8380:SetAudioProxyOffset(g_Vectors.v000, A0_8380:GetDefaultAuxAudioProxyID())
  if A0_8380.nState == 1 then
    A0_8380:_SetObstruction()
    A0_8380:_PlayFirstTime()
  elseif A0_8380.nState == 2 then
    A0_8380:_DisableObstruction()
    A0_8380:_PlayFirstTime()
  end
end
L0_8352.OnPropertyChange = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8381)
  A0_8381:_UpdateParameters()
end
L0_8352.OnReset = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8382)
  if A0_8382.Properties.bEnabled and A0_8382.hOnTriggerID ~= nil then
    A0_8382:Stop()
    A0_8382:SetCurrentAudioEnvironments()
    A0_8382:ExecuteAudioTrigger(A0_8382.hOnTriggerID, A0_8382:GetDefaultAuxAudioProxyID())
    A0_8382.bIsPlaying = true
  end
end
L0_8352.Play = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8383)
  local L1_8384, L2_8385, L3_8386
  L1_8384 = A0_8383.bIsPlaying
  if L1_8384 then
    L1_8384 = A0_8383.hOffTriggerID
    if L1_8384 ~= nil then
      L2_8385 = A0_8383
      L1_8384 = A0_8383.ExecuteAudioTrigger
      L3_8386 = A0_8383.hOffTriggerID
      L1_8384(L2_8385, L3_8386, A0_8383:GetDefaultAuxAudioProxyID())
    else
      L2_8385 = A0_8383
      L1_8384 = A0_8383.StopAudioTrigger
      L3_8386 = A0_8383.hOnTriggerID
      L1_8384(L2_8385, L3_8386, A0_8383:GetDefaultAuxAudioProxyID())
    end
    A0_8383.bIsPlaying = false
  end
end
L0_8352.Stop = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8387)
  A0_8387.nState = 0
  A0_8387.fFadeValue = 0
  A0_8387.fFadeOnUnregister = 1
  A0_8387:SetFlags(ENTITY_FLAG_VOLUME_SOUND, 0)
  A0_8387:_UpdateParameters()
  A0_8387.bIsPlaying = false
  A0_8387:NetPresent(0)
end
L0_8352.CliSrv_OnInit = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8388, A1_8389, A2_8390, A3_8391)
  local L4_8392
  L4_8392 = A0_8388.Properties
  L4_8392 = L4_8392.bEnabled
  if not L4_8392 or A2_8390 == 0 and A3_8391 == 0 then
    A0_8388.fFadeValue = 0
    L4_8392 = A0_8388._UpdateRtpc
    L4_8392(A0_8388)
    return
  end
  L4_8392 = A0_8388.Properties
  L4_8392 = L4_8392.fRtpcDistance
  if L4_8392 > 0 then
    L4_8392 = A0_8388.nState
    if L4_8392 == 2 then
      L4_8392 = A0_8388.fFadeValue
      if L4_8392 ~= A2_8390 then
        L4_8392 = math
        L4_8392 = L4_8392.abs
        L4_8392 = L4_8392(A2_8390)
        A0_8388.fFadeValue = L4_8392
        L4_8392 = A0_8388._UpdateRtpc
        L4_8392(A0_8388)
      end
    else
      L4_8392 = math
      L4_8392 = L4_8392.sqrt
      L4_8392 = L4_8392(A3_8391)
      L4_8392 = L4_8392 / A0_8388.Properties.fRtpcDistance
      L4_8392 = 1 - L4_8392
      A0_8388.fFadeValue = math.max(0, L4_8392)
      A0_8388:_UpdateRtpc()
    end
  end
end
L0_8352.UpdateFadeValue = L1_8353
L0_8352 = AudioAreaAmbience
L1_8353 = {}
function L2_8354(A0_8393)
  A0_8393:CliSrv_OnInit()
end
L1_8353.OnInit = L2_8354
function L2_8354(A0_8394)
  local L1_8395
end
L1_8353.OnShutDown = L2_8354
L0_8352.Server = L1_8353
L0_8352 = AudioAreaAmbience
L1_8353 = {}
function L2_8354(A0_8396)
  A0_8396:RegisterForAreaEvents(1)
  A0_8396:_LookupControlIDs()
  A0_8396:_LookupObstructionSwitchIDs()
  A0_8396:CliSrv_OnInit()
end
L1_8353.OnInit = L2_8354
function L2_8354(A0_8397)
  A0_8397.nState = 0
  A0_8397:RegisterForAreaEvents(0)
  A0_8397:Stop()
end
L1_8353.OnShutDown = L2_8354
function L2_8354(A0_8398, A1_8399, A2_8400, A3_8401)
  if A0_8398.nState == 0 then
    A0_8398:_PlayFirstTime()
    A0_8398.nState = 1
    A0_8398.fFadeValue = 0
    A0_8398:_UpdateRtpc()
  end
end
L1_8353.OnAudioListenerEnterNearArea = L2_8354
function L2_8354(A0_8402, A1_8403, A2_8404, A3_8405, A4_8406)
  A0_8402.nState = 1
  A0_8402:UpdateFadeValue(A1_8403, A3_8405, A4_8406)
end
L1_8353.OnAudioListenerMoveNearArea = L2_8354
function L2_8354(A0_8407, A1_8408, A2_8409, A3_8410)
  if A0_8407.nState == 0 then
    A0_8407:_PlayFirstTime()
  end
  A0_8407.nState = 2
  A0_8407.fFadeValue = 1
  A0_8407:_UpdateRtpc()
  A0_8407:_DisableObstruction()
end
L1_8353.OnAudioListenerEnterArea = L2_8354
function L2_8354(A0_8411, A1_8412, A2_8413, A3_8414)
  if A3_8414 > 0 then
    A0_8411.nState = 2
    A0_8411:UpdateFadeValue(A1_8412, A3_8414, 0)
  else
    A0_8411:UpdateFadeValue(A1_8412, 0, 0)
  end
end
L1_8353.OnAudioListenerProceedFadeArea = L2_8354
function L2_8354(A0_8415, A1_8416, A2_8417, A3_8418)
  A0_8415.nState = 1
  A0_8415:_SetObstruction()
end
L1_8353.OnAudioListenerLeaveArea = L2_8354
function L2_8354(A0_8419, A1_8420, A2_8421, A3_8422)
  A0_8419:Stop()
  A0_8419.nState = 0
  A0_8419.fFadeValue = 0
  A0_8419:_UpdateRtpc()
end
L1_8353.OnAudioListenerLeaveNearArea = L2_8354
function L2_8354(A0_8423)
  local L1_8424
  A0_8423.nState = 0
end
L1_8353.OnUnBindThis = L2_8354
function L2_8354(A0_8425, A1_8426)
  if A0_8425.hOnTriggerID == A1_8426 then
    A0_8425:ActivateOutput("Done", true)
  end
end
L1_8353.OnSoundDone = L2_8354
L0_8352.Client = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8427, A1_8428)
  A0_8427.Properties.bEnabled = true
  A0_8427:OnPropertyChange()
end
L0_8352.Event_Enable = L1_8353
L0_8352 = AudioAreaAmbience
function L1_8353(A0_8429, A1_8430)
  A0_8429.Properties.bEnabled = false
  A0_8429:OnPropertyChange()
end
L0_8352.Event_Disable = L1_8353
L0_8352 = AudioAreaAmbience
L1_8353 = {}
L2_8354 = {}
L3_8355 = {
  AudioAreaAmbience.Event_Enable,
  "bool"
}
L2_8354.Enable = L3_8355
L3_8355 = {
  AudioAreaAmbience.Event_Disable,
  "bool"
}
L2_8354.Disable = L3_8355
L1_8353.Inputs = L2_8354
L2_8354 = {}
L2_8354.Done = "bool"
L1_8353.Outputs = L2_8354
L0_8352.FlowEvents = L1_8353
