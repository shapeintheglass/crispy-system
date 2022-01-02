local L0_8431, L1_8432, L2_8433, L3_8434
L0_8431 = {}
L0_8431.type = "AudioAreaEntity"
L1_8432 = {}
L1_8432.Model = "Editor/Objects/Sound.cgf"
L1_8432.Icon = "AudioAreaEntity.bmp"
L0_8431.Editor = L1_8432
L1_8432 = {}
L1_8432.bEnabled = true
L1_8432.audioEnvironmentEnvironment = ""
L1_8432.eiSoundObstructionType = 1
L1_8432.fFadeDistance = 5
L1_8432.fEnvironmentDistance = 5
L0_8431.Properties = L1_8432
L0_8431.fFadeValue = 0
L0_8431.nState = 0
L0_8431.fFadeOnUnregister = 1
L0_8431.hEnvironmentID = nil
L1_8432 = {}
L0_8431.tObstructionType = L1_8432
AudioAreaEntity = L0_8431
L0_8431 = AudioAreaEntity
function L1_8432(A0_8435, A1_8436, A2_8437)
  if A0_8435.Properties.bEnabled then
    A0_8435:ActivateOutput(A1_8436, A2_8437)
  end
end
L0_8431._ActivateOutput = L1_8432
L0_8431 = AudioAreaEntity
function L1_8432(A0_8438)
  A0_8438.hEnvironmentID = AudioUtils.LookupAudioEnvironmentID(A0_8438.Properties.audioEnvironmentEnvironment)
  if A0_8438.hEnvironmentID ~= nil then
    A0_8438:SetAudioEnvironmentID(A0_8438.hEnvironmentID)
  end
  A0_8438:SetFadeDistance(A0_8438.Properties.fFadeDistance)
  A0_8438:SetEnvironmentFadeDistance(A0_8438.Properties.fEnvironmentDistance)
end
L0_8431._UpdateParameters = L1_8432
L0_8431 = AudioAreaEntity
function L1_8432(A0_8439)
  A0_8439.tObstructionType = AudioUtils.LookupObstructionSwitchAndStates()
end
L0_8431._LookupObstructionSwitchIDs = L1_8432
L0_8431 = AudioAreaEntity
function L1_8432(A0_8440)
  local L1_8441, L2_8442, L3_8443, L5_8444
  L1_8441 = A0_8440.Properties
  L1_8441 = L1_8441.eiSoundObstructionType
  L1_8441 = L1_8441 + 1
  L2_8442 = A0_8440.tObstructionType
  L2_8442 = L2_8442.hSwitchID
  if L2_8442 ~= nil then
    L2_8442 = A0_8440.tObstructionType
    L2_8442 = L2_8442.tStateIDs
    L2_8442 = L2_8442[L1_8441]
    if L2_8442 ~= nil then
      L3_8443 = A0_8440
      L2_8442 = A0_8440.SetAudioSwitchState
      L5_8444 = A0_8440.tObstructionType
      L5_8444 = L5_8444.hSwitchID
      L2_8442(L3_8443, L5_8444, A0_8440.tObstructionType.tStateIDs[L1_8441], A0_8440:GetDefaultAuxAudioProxyID())
    end
  end
end
L0_8431._SetObstruction = L1_8432
L0_8431 = AudioAreaEntity
function L1_8432(A0_8445)
  A0_8445:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_8431.OnSpawn = L1_8432
L0_8431 = AudioAreaEntity
function L1_8432(A0_8446, A1_8447)
  A0_8446.Properties = A1_8447.Properties
  A0_8446.fFadeOnUnregister = A1_8447.fFadeOnUnregister
  A0_8446:_SetObstruction()
  A0_8446.nState = 0
  A0_8446.fFadeValue = 0
end
L0_8431.OnLoad = L1_8432
L0_8431 = AudioAreaEntity
function L1_8432(A0_8448)
  A0_8448:_UpdateParameters()
end
L0_8431.OnPostLoad = L1_8432
L0_8431 = AudioAreaEntity
function L1_8432(A0_8449, A1_8450)
  local L2_8451
  L2_8451 = A0_8449.Properties
  A1_8450.Properties = L2_8451
  L2_8451 = A0_8449.fFadeOnUnregister
  A1_8450.fFadeOnUnregister = L2_8451
end
L0_8431.OnSave = L1_8432
L0_8431 = AudioAreaEntity
function L1_8432(A0_8452)
  A0_8452:_UpdateParameters()
  if A0_8452.Properties.eiSoundObstructionType < 0 then
    A0_8452.Properties.eiSoundObstructionType = 0
  elseif A0_8452.Properties.eiSoundObstructionType > 1 then
    A0_8452.Properties.eiSoundObstructionType = 2
  end
  A0_8452:_SetObstruction()
end
L0_8431.OnPropertyChange = L1_8432
L0_8431 = AudioAreaEntity
function L1_8432(A0_8453)
  A0_8453.nState = 0
  A0_8453.fFadeValue = 0
  A0_8453.fFadeOnUnregister = 1
  A0_8453:SetFlags(ENTITY_FLAG_VOLUME_SOUND, 0)
  A0_8453:_UpdateParameters()
end
L0_8431.CliSrv_OnInit = L1_8432
L0_8431 = AudioAreaEntity
function L1_8432(A0_8454, A1_8455, A2_8456, A3_8457)
  local L4_8458
  L4_8458 = A0_8454.Properties
  L4_8458 = L4_8458.bEnabled
  if not L4_8458 or A2_8456 == 0 and A3_8457 == 0 then
    L4_8458 = A0_8454.fFadeValue
    if L4_8458 ~= 0 then
      L4_8458 = A0_8454._ActivateOutput
      L4_8458(A0_8454, "FadeValue", 0)
    end
    A0_8454.fFadeValue = 0
    return
  end
  L4_8458 = A0_8454.Properties
  L4_8458 = L4_8458.fFadeDistance
  if L4_8458 > 0 then
    L4_8458 = A0_8454.nState
    if L4_8458 == 2 then
      L4_8458 = A0_8454.fFadeValue
      if L4_8458 ~= A2_8456 then
        L4_8458 = math
        L4_8458 = L4_8458.abs
        L4_8458 = L4_8458(A2_8456)
        A0_8454.fFadeValue = L4_8458
        L4_8458 = A0_8454._ActivateOutput
        L4_8458(A0_8454, "FadeValue", A0_8454.fFadeValue)
      end
    else
      L4_8458 = math
      L4_8458 = L4_8458.sqrt
      L4_8458 = L4_8458(A3_8457)
      L4_8458 = L4_8458 / A0_8454.Properties.fFadeDistance
      L4_8458 = 1 - L4_8458
      A0_8454.fFadeValue = math.max(0, L4_8458)
      A0_8454:_ActivateOutput("FadeValue", A0_8454.fFadeValue)
    end
  end
end
L0_8431.UpdateFadeValue = L1_8432
L0_8431 = AudioAreaEntity
L1_8432 = {}
function L2_8433(A0_8459)
  A0_8459:CliSrv_OnInit()
end
L1_8432.OnInit = L2_8433
function L2_8433(A0_8460)
  local L1_8461
end
L1_8432.OnShutDown = L2_8433
L0_8431.Server = L1_8432
L0_8431 = AudioAreaEntity
L1_8432 = {}
function L2_8433(A0_8462)
  A0_8462:RegisterForAreaEvents(1)
  A0_8462:_LookupObstructionSwitchIDs()
  A0_8462:CliSrv_OnInit()
end
L1_8432.OnInit = L2_8433
function L2_8433(A0_8463)
  A0_8463.nState = 0
  A0_8463:RegisterForAreaEvents(0)
end
L1_8432.OnShutDown = L2_8433
function L2_8433(A0_8464, A1_8465, A2_8466, A3_8467)
  if A0_8464.nState == 0 then
    A0_8464:_SetObstruction()
    A0_8464:_ActivateOutput("OnFarToNear", true)
  elseif A0_8464.nState == 2 then
    A0_8464:_ActivateOutput("OnInsideToNear", true)
  end
  A0_8464.nState = 1
  A0_8464.fFadeValue = 0
  A0_8464:_ActivateOutput("FadeValue", A0_8464.fFadeValue)
end
L1_8432.OnAudioListenerEnterNearArea = L2_8433
function L2_8433(A0_8468, A1_8469, A2_8470, A3_8471, A4_8472)
  A0_8468.nState = 1
  A0_8468:UpdateFadeValue(A1_8469, A3_8471, A4_8472)
end
L1_8432.OnAudioListenerMoveNearArea = L2_8433
function L2_8433(A0_8473, A1_8474, A2_8475, A3_8476)
  if A0_8473.nState == 0 then
    A0_8473:_SetObstruction()
    A0_8473:_ActivateOutput("OnFarToNear", true)
  end
  A0_8473.nState = 2
  A0_8473.fFadeValue = 1
  A0_8473:_ActivateOutput("OnNearToInside", true)
  A0_8473:_ActivateOutput("FadeValue", A0_8473.fFadeValue)
end
L1_8432.OnAudioListenerEnterArea = L2_8433
function L2_8433(A0_8477, A1_8478, A2_8479, A3_8480)
  if A3_8480 > 0 then
    A0_8477.nState = 2
    A0_8477:UpdateFadeValue(A1_8478, A3_8480, 0)
  else
    A0_8477:UpdateFadeValue(A1_8478, 0, 0)
  end
end
L1_8432.OnAudioListenerProceedFadeArea = L2_8433
function L2_8433(A0_8481, A1_8482, A2_8483, A3_8484)
  A0_8481.nState = 1
  A0_8481:_ActivateOutput("OnInsideToNear", true)
end
L1_8432.OnAudioListenerLeaveArea = L2_8433
function L2_8433(A0_8485, A1_8486, A2_8487, A3_8488)
  A0_8485.nState = 0
  A0_8485.fFadeValue = 0
  A0_8485:_ActivateOutput("OnNearToFar", true)
  A0_8485:_ActivateOutput("FadeValue", A0_8485.fFadeValue)
end
L1_8432.OnAudioListenerLeaveNearArea = L2_8433
function L2_8433(A0_8489)
  local L1_8490
  A0_8489.nState = 0
end
L1_8432.OnUnBindThis = L2_8433
L0_8431.Client = L1_8432
L0_8431 = AudioAreaEntity
function L1_8432(A0_8491, A1_8492)
  A0_8491.Properties.bEnabled = true
  A0_8491:OnPropertyChange()
end
L0_8431.Event_Enable = L1_8432
L0_8431 = AudioAreaEntity
function L1_8432(A0_8493, A1_8494)
  A0_8493.Properties.bEnabled = false
  A0_8493:OnPropertyChange()
end
L0_8431.Event_Disable = L1_8432
L0_8431 = AudioAreaEntity
L1_8432 = {}
L2_8433 = {}
L3_8434 = {
  AudioAreaEntity.Event_Enable,
  "bool"
}
L2_8433.Enable = L3_8434
L3_8434 = {
  AudioAreaEntity.Event_Disable,
  "bool"
}
L2_8433.Disable = L3_8434
L1_8432.Inputs = L2_8433
L2_8433 = {}
L2_8433.FadeValue = "float"
L2_8433.OnFarToNear = "bool"
L2_8433.OnNearToInside = "bool"
L2_8433.OnInsideToNear = "bool"
L2_8433.OnNearToFar = "bool"
L1_8432.Outputs = L2_8433
L0_8431.FlowEvents = L1_8432
