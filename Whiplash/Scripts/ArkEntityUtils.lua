local L0_10127, L1_10128
L0_10127 = {}
L1_10128 = Sound
L1_10128 = L1_10128.GetAudioTriggerID
L0_10127.audioTrigger = L1_10128
L1_10128 = Sound
L1_10128 = L1_10128.GetAudioSwitchID
L0_10127.audioSwitch = L1_10128
L1_10128 = Sound
L1_10128 = L1_10128.GetAudioSwitchStateID
L0_10127.audioSwitchState = L1_10128
L1_10128 = Sound
L1_10128 = L1_10128.GetAudioRtpcID
L0_10127.audioRTPC = L1_10128
L1_10128 = Sound
L1_10128 = L1_10128.GetAudioEnvironmentID
L0_10127.audioEnvironment = L1_10128
AudioGettersByPrefix = L0_10127
function L0_10127(A0_10129, A1_10130)
  local L2_10131, L3_10132, L4_10133, L5_10134, L6_10135, L7_10136, L8_10137, L9_10138
  L2_10131 = A1_10130 or {}
  L3_10132 = AudioGettersByPrefix
  for L7_10136, L8_10137 in L4_10133(L5_10134) do
    if L8_10137 ~= "" then
      L9_10138 = string
      L9_10138 = L9_10138.find
      L9_10138 = L9_10138(L7_10136, "_")
      if L9_10138 ~= nil then
        L9_10138 = L9_10138 - 1
        if L3_10132[string.sub(L7_10136, 1, L9_10138)] then
          L2_10131[L7_10136] = L3_10132[string.sub(L7_10136, 1, L9_10138)](L8_10137)
        end
      else
      end
    else
    end
  end
  return L2_10131
end
GetAudioIds = L0_10127
function L0_10127(A0_10139)
  local L1_10140, L2_10141
  L1_10140 = {}
  L2_10141 = A0_10139.x
  L1_10140.x = L2_10141
  L2_10141 = A0_10139.y
  L1_10140.y = L2_10141
  L2_10141 = A0_10139.z
  L1_10140.z = L2_10141
  return L1_10140
end
NewVector = L0_10127
function L0_10127(A0_10142, A1_10143, A2_10144)
  local L3_10145
  L3_10145 = mergef
  L3_10145(A0_10142, A1_10143, true)
  A0_10142.__super = A1_10143
  if A2_10144 then
    L3_10145 = {}
    mergef(L3_10145, A1_10143.Properties.Physics, false)
    A0_10142.Properties.Physics = L3_10145
  end
  return A0_10142
end
ArkMakeDerivedEntityOverride = L0_10127
function L0_10127(A0_10146)
  local L1_10147, L2_10148
  function L1_10147(A0_10149, A1_10150)
    if A0_10149.m_bVerbose then
      if A1_10150 ~= nil then
        System.Log(A0_10149:GetName() .. " with entityId " .. tostring(A0_10149:GetRawId()) .. ":: " .. tostring(A1_10150))
      else
        LogWarning(A0_10149:GetName() .. " with entityId " .. tostring(A0_10149:GetRawId()) .. ":: Log request rejected due to nil string parameter.")
      end
    end
  end
  A0_10146.Log = L1_10147
  function L1_10147(A0_10151, A1_10152)
    A0_10151:Log("Init not overridden")
  end
  A0_10146.Init = L1_10147
  function L1_10147(A0_10153, A1_10154)
    return A0_10153:ToGlobal(0, (SumVectors(A0_10153:ToLocal(0, A0_10153:GetCenterOfMassPos()), A1_10154)))
  end
  A0_10146.CreateOffsetPos = L1_10147
  function L1_10147(A0_10155, A1_10156)
    if A1_10156 then
      Script.KillTimer(A1_10156)
    end
  end
  A0_10146.KillTimer = L1_10147
  function L1_10147(A0_10157, A1_10158)
    local L2_10159, L3_10160
    L2_10159 = A0_10157.Properties
    L3_10160 = A1_10158 or L2_10159.object_Model
    if L3_10160 ~= nil then
      A0_10157:LoadObject(0, L3_10160)
    else
      LogError(A0_10157:GetName() .. " is missing a model!")
    end
    if L2_10159.Physics ~= nil and L2_10159.Physics.bPhysicalize == 1 then
      A0_10157:PhysicalizeThis()
    end
  end
  A0_10146.SetupModelAndPhysics = L1_10147
  function L1_10147(A0_10161)
    local L1_10162
    L1_10162 = A0_10161.Properties
    L1_10162 = L1_10162.Physics
    if L1_10162 ~= nil then
      L1_10162 = A0_10161.Properties
      L1_10162 = L1_10162.Physics
      EntityCommon.PhysicalizeRigid(A0_10161, 0, L1_10162, A0_10161.bRigidBodyActive)
    end
  end
  A0_10146.PhysicalizeThis = L1_10147
  function L1_10147(A0_10163)
    local L1_10164
    L1_10164 = A0_10163.Properties
    if L1_10164.object_Model == "" then
      return
    end
    A0_10163:SetupModelAndPhysics()
    if L1_10164.bCanTriggerAreas == 1 then
      A0_10163:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
    else
      A0_10163:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
    end
  end
  A0_10146.SetFromProperties = L1_10147
  function L1_10147(A0_10165)
    local L1_10166
    L1_10166 = A0_10165.Properties
    L1_10166 = L1_10166.Effects
    L1_10166 = L1_10166.particleeffect_Camera
    L1_10166 = L1_10166 ~= ""
    return L1_10166
  end
  A0_10146.IsCameraVfxEnabled = L1_10147
  function L1_10147(A0_10167, A1_10168, A2_10169, A3_10170, A4_10171, A5_10172)
    Particle.SpawnEffect(A3_10170, g_Vectors.v000, g_Vectors.v000, 1)
    A0_10167[A1_10168] = false
    A0_10167[A2_10169] = Script.SetTimer(A4_10171, A5_10172)
  end
  A0_10146.DoCameraFX = L1_10147
  function L1_10147(A0_10173, A1_10174)
    return string.sub(A1_10174, 5)
  end
  A0_10146.GetGUIDString = L1_10147
  function L1_10147(A0_10175)
    A0_10175:Log("OnSpawn not overridden")
    A0_10175:SetFromProperties()
  end
  A0_10146.OnSpawn = L1_10147
  function L1_10147(A0_10176)
    A0_10176:Log("OnInit not overridden")
    if System.IsEditor() then
      A0_10176:Init()
      if A0_10176.States then
        A0_10176:GotoState("")
      end
    end
  end
  A0_10146.OnInit = L1_10147
  function L1_10147(A0_10177, A1_10178)
    A0_10177:Log("OnReset not overridden")
    if A0_10177.Properties.Physics ~= nil and A0_10177.Properties.Physics.bPhysicalize == 1 then
      A0_10177:PhysicalizeThis()
      A0_10177:AwakePhysics(0)
    end
  end
  A0_10146.OnReset = L1_10147
  function L1_10147(A0_10179)
    A0_10179:Log("OnStartGame" .. A0_10179:GetState() or "")
    if System.IsEditor() then
      A0_10179:Init(true)
    end
  end
  A0_10146.OnStartGame = L1_10147
  function L1_10147(A0_10180)
    A0_10180:Log("OnStartLevel " .. A0_10180:GetState() or "")
    if not System.IsEditor() then
      A0_10180:Init(true)
    end
  end
  A0_10146.OnStartLevel = L1_10147
  function L1_10147(A0_10181)
    A0_10181:Log("OnPropertyChange not overridden")
    A0_10181:SetFromProperties()
  end
  A0_10146.OnPropertyChange = L1_10147
  function L1_10147(A0_10182)
    A0_10182:Log("OnUsed not overridden")
  end
  A0_10146.OnUsed = L1_10147
  function L1_10147(A0_10183, A1_10184)
  end
  A0_10146.OnCollision = L1_10147
  function L1_10147(A0_10185, A1_10186)
    A0_10185:Log("OnHit. Hit by " .. tostring(A1_10186.shooter.id) .. " not overridden")
  end
  A0_10146.OnHit = L1_10147
  function L1_10147(A0_10187)
    A0_10187:Log("OnDestroy not overridden")
  end
  A0_10146.OnDestroy = L1_10147
  function L1_10147(A0_10188)
    A0_10188:Log("OnShutDown not overridden")
  end
  A0_10146.OnShutDown = L1_10147
  function L1_10147(A0_10189)
    A0_10189:PhysicalizeThis()
  end
  A0_10146.OnUnHidden = L1_10147
  L1_10147 = A0_10146.Properties
  L1_10147 = L1_10147.ei_ObjectMapIcon
  if L1_10147 ~= nil then
    function L1_10147(A0_10190)
      return tonumber(A0_10190.Properties.ei_ObjectMapIcon)
    end
    A0_10146.GetMapIconId = L1_10147
  end
  L1_10147 = A0_10146.Server
  if L1_10147 ~= nil then
    L1_10147 = A0_10146.Server
    L2_10148 = A0_10146.OnStartLevel
    L1_10147.OnStartLevel = L2_10148
    L1_10147 = A0_10146.Server
    L2_10148 = A0_10146.OnStartGame
    L1_10147.OnStartGame = L2_10148
    L1_10147 = A0_10146.Server
    L2_10148 = A0_10146.OnHit
    L1_10147.OnHit = L2_10148
    L1_10147 = A0_10146.Server
    L2_10148 = A0_10146.OnInit
    L1_10147.OnInit = L2_10148
    L1_10147 = A0_10146.Server
    L2_10148 = A0_10146.OnUpdate
    L1_10147.OnUpdate = L2_10148
  end
end
GetArkEntityUtils = L0_10127
function L0_10127(A0_10191)
  local L1_10192
  function L1_10192(A0_10193, A1_10194)
    if A0_10193.m_savedState ~= nil then
      A0_10193.m_savedState = A0_10193:GetState()
    end
    if A0_10193.m_referenceTable then
      for _FORV_5_, _FORV_6_ in pairs(A0_10193.m_referenceTable) do
        A1_10194[_FORV_5_] = A0_10193[_FORV_5_]
      end
    end
  end
  A0_10191.OnSave = L1_10192
  function L1_10192(A0_10195, A1_10196)
    for _FORV_5_, _FORV_6_ in pairs(A1_10196) do
      A0_10195[_FORV_5_] = _FORV_6_
    end
  end
  A0_10191.OnLoad = L1_10192
  function L1_10192(A0_10197)
    A0_10197:Log("OnPostLoad not overriden")
  end
  A0_10191.OnPostLoad = L1_10192
end
ArkMakeSaveable = L0_10127
function L0_10127(A0_10198)
  local L1_10199
  function L1_10199(A0_10200, A1_10201)
    A1_10201.PropertiesInstance = {}
    for _FORV_5_, _FORV_6_ in pairs(A0_10200.PropertiesInstance) do
      A1_10201.PropertiesInstance[_FORV_5_] = _FORV_6_
    end
  end
  A0_10198.OnSave = L1_10199
  function L1_10199(A0_10202, A1_10203)
    A0_10202:Log("OnLoad()")
    for _FORV_5_, _FORV_6_ in pairs(A1_10203) do
      A0_10202[_FORV_5_] = _FORV_6_
    end
  end
  A0_10198.OnLoad = L1_10199
end
ArkMakeInstanceObjectSaveable = L0_10127
function L0_10127(A0_10204)
  local L1_10205
  function L1_10205(A0_10206, A1_10207, A2_10208, A3_10209, A4_10210, A5_10211)
    local L6_10212, L7_10213, L8_10214, L9_10215, L10_10216, L11_10217, L12_10218
    L7_10213 = A0_10206
    L6_10212 = A0_10206.GetBoneTable
    L8_10214 = A3_10209
    L6_10212 = L6_10212(L7_10213, L8_10214)
    L7_10213 = A0_10206.Properties
    L7_10213 = L7_10213.archetype_Keypad
    L8_10214 = "ArkKeypad"
    L9_10215 = System
    L9_10215 = L9_10215.GetEntityLayer
    L10_10216 = A0_10206.id
    L9_10215 = L9_10215(L10_10216)
    if A1_10207 then
      L10_10216 = A0_10206.Properties
      L7_10213 = L10_10216.archetype_KeycardReader
      L8_10214 = "ArkKeycardReader"
    end
    L10_10216 = A0_10206.m_outsideController
    if L10_10216 then
      L10_10216 = System
      L10_10216 = L10_10216.RemoveEntity
      L11_10217 = A0_10206.m_outsideController
      L11_10217 = L11_10217.id
      L10_10216(L11_10217)
      A0_10206.m_outsideController = false
    end
    if A2_10208 >= 1 then
      L11_10217 = A0_10206
      L10_10216 = A0_10206.GetBonePos
      L12_10218 = L6_10212.outside
      L10_10216 = L10_10216(L11_10217, L12_10218)
      L12_10218 = A0_10206
      L11_10217 = A0_10206.GetBoneDir
      L11_10217 = L11_10217(L12_10218, L6_10212.outside)
      L12_10218 = A0_10206.GetBoneUp
      L12_10218 = L12_10218(A0_10206, L6_10212.outside)
      if L10_10216 then
        A0_10206.m_outsideController = A0_10206:SpawnAccessController(L7_10213, L8_10214, L9_10215, L10_10216, L11_10217, L12_10218)
        A0_10206:AttachChild(A0_10206.m_outsideController.id, 1)
        A0_10206.m_outsideController:InitDoorAccessController(A0_10206)
      else
        LogError(A0_10206:GetName() .. " wants to attach a keypad to missing bone " .. L6_10212.outside)
      end
    end
    if A4_10210 then
      L10_10216 = A0_10206.Properties
      L7_10213 = L10_10216.archetype_FreeExitButton
      L8_10214 = "ArkInteractiveObject"
    end
    L10_10216 = A0_10206.m_insideController
    if L10_10216 then
      L10_10216 = System
      L10_10216 = L10_10216.RemoveEntity
      L11_10217 = A0_10206.m_insideController
      L11_10217 = L11_10217.id
      L10_10216(L11_10217)
      A0_10206.m_insideController = false
    end
    if A2_10208 > 1 or A4_10210 then
      L11_10217 = A0_10206
      L10_10216 = A0_10206.GetBonePos
      L12_10218 = L6_10212.inside
      L10_10216 = L10_10216(L11_10217, L12_10218)
      L12_10218 = A0_10206
      L11_10217 = A0_10206.GetBoneDir
      L11_10217 = L11_10217(L12_10218, L6_10212.inside)
      L12_10218 = A0_10206.GetBoneUp
      L12_10218 = L12_10218(A0_10206, L6_10212.inside)
      if L10_10216 then
        if A5_10211 ~= nil then
          L10_10216 = A0_10206:ToGlobal(0, (SumVectors(A0_10206:ToLocal(0, L10_10216), A5_10211)))
        else
          LogError(A0_10206:GetName() .. " trying to load a Free Exit Offset with value NIL. Entity instance in level needs to be fixed.")
        end
        A0_10206.m_insideController = A0_10206:SpawnAccessController(L7_10213, L8_10214, L9_10215, L10_10216, L11_10217, L12_10218)
        A0_10206:AttachChild(A0_10206.m_insideController.id, 1)
        A0_10206.m_insideController:InitDoorAccessController(A0_10206)
      else
        LogError(A0_10206:GetName() .. " wants to attach a keypad or free exit button to missing bone " .. L6_10212.inside)
      end
    end
  end
  A0_10204.SetupAccessControl = L1_10205
  function L1_10205(A0_10219, A1_10220)
    local L2_10221
    if A1_10220 then
      L2_10221 = A0_10219.Properties
      L2_10221 = L2_10221.KeypadBoneNames
      L2_10221 = L2_10221.left
      return L2_10221
    else
      L2_10221 = A0_10219.Properties
      L2_10221 = L2_10221.KeypadBoneNames
      L2_10221 = L2_10221.right
      return L2_10221
    end
  end
  A0_10204.GetBoneTable = L1_10205
  function L1_10205(A0_10222, A1_10223, A2_10224, A3_10225, A4_10226, A5_10227, A6_10228)
    local L7_10229
    L7_10229 = A0_10222.Log
    L7_10229(A0_10222, "Spawning Access Controller")
    L7_10229 = {}
    L7_10229.class = A2_10224
    L7_10229.archetype = A1_10223
    L7_10229.name = A0_10222:GetName() .. A2_10224
    L7_10229.layer = A3_10225
    L7_10229.position = A4_10226
    L7_10229.orientation = A5_10227
    System.SpawnEntity(L7_10229):SetWorldPos(A4_10226)
    System.SpawnEntity(L7_10229):SetDirectionVector(A5_10227, A6_10228)
    return (System.SpawnEntity(L7_10229))
  end
  A0_10204.SpawnAccessController = L1_10205
  function L1_10205(A0_10230, A1_10231, A2_10232, A3_10233, A4_10234)
    local L5_10235, L6_10236, L7_10237, L8_10238
    L5_10235 = System
    L5_10235 = L5_10235.IsEditor
    L5_10235 = L5_10235()
    if L5_10235 then
      L5_10235 = A0_10230.Properties
      L5_10235 = L5_10235.object_KeypadModel
      L7_10237 = A0_10230
      L6_10236 = A0_10230.GetBoneTable
      L8_10238 = A2_10232
      L6_10236 = L6_10236(L7_10237, L8_10238)
      if A1_10231 >= 1 then
        L8_10238 = A0_10230
        L7_10237 = A0_10230.GetBonePos
        L7_10237 = L7_10237(L8_10238, L6_10236.outside)
        L8_10238 = A0_10230.GetBoneDir
        L8_10238 = L8_10238(A0_10230, L6_10236.outside)
        if L7_10237 then
          A0_10230:LoadObject(1, L5_10235)
          A0_10230:SetSlotWorldTM(1, L7_10237, L8_10238)
        else
          LogError(A0_10230:GetName() .. " wants to attach a keypad to missing bone " .. L6_10236.outside)
          A0_10230:FreeSlot(1)
        end
      else
        L8_10238 = A0_10230
        L7_10237 = A0_10230.FreeSlot
        L7_10237(L8_10238, 1)
      end
      if A3_10233 then
        L7_10237 = A0_10230.Properties
        L5_10235 = L7_10237.object_FreeExitModel
      end
      if A1_10231 > 1 or A3_10233 then
        L8_10238 = A0_10230
        L7_10237 = A0_10230.GetBonePos
        L7_10237 = L7_10237(L8_10238, L6_10236.inside)
        vecBonePos = L7_10237
        L8_10238 = A0_10230
        L7_10237 = A0_10230.GetBoneDir
        L7_10237 = L7_10237(L8_10238, L6_10236.inside)
        vecKeypadDir = L7_10237
        L7_10237 = vecBonePos
        if L7_10237 then
          if A4_10234 ~= nil then
            L8_10238 = A0_10230
            L7_10237 = A0_10230.ToGlobal
            L7_10237 = L7_10237(L8_10238, 0, (SumVectors(A0_10230:ToLocal(0, vecBonePos), A4_10234)))
            vecBonePos = L7_10237
          else
            L7_10237 = LogError
            L8_10238 = A0_10230.GetName
            L8_10238 = L8_10238(A0_10230)
            L8_10238 = L8_10238 .. " trying to load a Free Exit Offset with value NIL. Entity instance in level needs to be fixed."
            L7_10237(L8_10238)
          end
          L8_10238 = A0_10230
          L7_10237 = A0_10230.LoadObject
          L7_10237(L8_10238, 2, L5_10235)
          L8_10238 = A0_10230
          L7_10237 = A0_10230.SetSlotWorldTM
          L7_10237(L8_10238, 2, vecBonePos, vecKeypadDir)
        else
          L7_10237 = LogError
          L8_10238 = A0_10230.GetName
          L8_10238 = L8_10238(A0_10230)
          L8_10238 = L8_10238 .. " wants to attach a keypad or free exit button to missing bone " .. L6_10236.inside
          L7_10237(L8_10238)
          L8_10238 = A0_10230
          L7_10237 = A0_10230.FreeSlot
          L7_10237(L8_10238, 2)
        end
      else
        L8_10238 = A0_10230
        L7_10237 = A0_10230.FreeSlot
        L7_10237(L8_10238, 2)
      end
    else
      L6_10236 = A0_10230
      L5_10235 = A0_10230.FreeSlot
      L7_10237 = 1
      L5_10235(L6_10236, L7_10237)
      L6_10236 = A0_10230
      L5_10235 = A0_10230.FreeSlot
      L7_10237 = 2
      L5_10235(L6_10236, L7_10237)
    end
  end
  A0_10204.LoadAccessControllersForEditor = L1_10205
end
ArkMakeLockable = L0_10127
function L0_10127(A0_10239)
  local L1_10240, L2_10241
  function L1_10240(A0_10242)
    A0_10242:Log("_entity:HackSuccess() not overridden")
  end
  A0_10239.HackSuccess = L1_10240
  function L1_10240(A0_10243)
    A0_10243:Log("_entity:HackFail() not overridden")
  end
  A0_10239.HackFail = L1_10240
  function L1_10240(A0_10244)
    local L1_10245
    L1_10245 = A0_10244.Properties
    L1_10245 = L1_10245.nHackDifficulty
    if A0_10244.PropertiesInstance.nHackDifficultyOverride ~= -1 then
      L1_10245 = A0_10244.PropertiesInstance.nHackDifficultyOverride
    end
    L1_10245 = L1_10245 + 1
    A0_10244:CallUIElementFunction("setHackingLevel", L1_10245)
  end
  A0_10239.UpdateHackLevelDisplay = L1_10240
  L1_10240 = A0_10239.FlowEvents
  if not L1_10240 then
    L1_10240 = {}
    A0_10239.FlowEvents = L1_10240
  end
  L1_10240 = A0_10239.FlowEvents
  L2_10241 = L1_10240.Inputs
  L2_10241 = L2_10241 or {}
  L1_10240.Inputs = L2_10241
  L2_10241 = L1_10240.Outputs
  L2_10241 = L2_10241 or {}
  L1_10240.Outputs = L2_10241
  L2_10241 = L1_10240.Outputs
  L2_10241.HackSuccess = "bool"
  L2_10241 = L1_10240.Outputs
  L2_10241.HackFail = "bool"
end
ArkMakeHackable = L0_10127
function L0_10127(A0_10246)
  local L1_10247
  L1_10247 = {}
  L1_10247.listeners = {}
  A0_10246.Container = L1_10247
  function L1_10247(A0_10248)
    for _FORV_4_, _FORV_5_ in pairs(A0_10248.Container.listeners) do
      _FORV_5_:OnMyContainerClose()
    end
    A0_10248.Container.listeners = {}
  end
  A0_10246.OnCloseInventory = L1_10247
  function L1_10247(A0_10249, A1_10250)
    table.insert(A0_10249.Container.listeners, A1_10250)
  end
  A0_10246.RegisterListenerForOnMyContainerClose = L1_10247
end
ArkMakeContainerLite = L0_10127
function L0_10127(A0_10251)
  local L1_10252, L2_10253, L3_10254
  L1_10252 = A0_10251.Properties
  L2_10253 = {}
  L2_10253.es_ContainerSize = ""
  L2_10253.bPreventStorage = false
  L3_10254 = {}
  L3_10254.anim_open = ""
  L3_10254.anim_close = ""
  L2_10253.Animation = L3_10254
  L3_10254 = {}
  L3_10254.audioTrigger_Open = ""
  L3_10254.audioTrigger_Close = ""
  L2_10253.Sound = L3_10254
  L1_10252.ContainerInfo = L2_10253
  L1_10252 = {}
  L2_10253 = {}
  L1_10252.listeners = L2_10253
  L1_10252.m_bSearched = false
  L1_10252.m_bEmpty = false
  L1_10252.m_lastState = false
  A0_10251.Container = L1_10252
  L1_10252 = A0_10251.PropertiesInstance
  if not L1_10252 then
    L1_10252 = {}
    A0_10251.PropertiesInstance = L1_10252
  end
  L1_10252 = A0_10251.PropertiesInstance
  L1_10252.loottables_LootTableOverride = ""
  function L1_10252(A0_10255)
    local L1_10256
    L1_10256 = A0_10255.inventory
    if L1_10256 == nil then
      L1_10256 = CryAction
      L1_10256 = L1_10256.AcquireExtensionForGameObject
      L1_10256(A0_10255.id, "ArkInventory")
      L1_10256 = CryAction
      L1_10256 = L1_10256.ActivateExtensionForGameObject
      L1_10256(A0_10255.id, "ArkInventory", true)
      L1_10256 = INVENTORY_SIZE_MEDIUM
      if A0_10255.Properties.ContainerInfo.es_ContainerSize == "LARGE" then
        L1_10256 = INVENTORY_SIZE_LARGE
      elseif A0_10255.Properties.ContainerInfo.es_ContainerSize == "SMALL" then
        L1_10256 = INVENTORY_SIZE_SMALL
      elseif A0_10255.Properties.ContainerInfo.es_ContainerSize == "TINY" then
        L1_10256 = INVENTORY_SIZE_TINY
      end
      A0_10255.inventory:SetDimensions(L1_10256)
      A0_10255.inventory:SetPreventStorage(A0_10255.Properties.ContainerInfo.bPreventStorage)
      A0_10255.Container.m_bSearched = false
    end
  end
  A0_10251.InitInventory = L1_10252
  function L1_10252(A0_10257, A1_10258, A2_10259, A3_10260)
    local L4_10261
    L4_10261 = math
    L4_10261 = L4_10261.random
    L4_10261 = L4_10261(A2_10259, A3_10260)
    if L4_10261 > 0 then
      ItemSystem.GiveItem(A1_10258, A0_10257:GetRawId(), L4_10261)
    end
  end
  A0_10251.SpawnLootInside = L1_10252
  function L1_10252(A0_10262)
    local L1_10263, L2_10264, L3_10265, L4_10266
    L1_10263 = {}
    L2_10264 = A0_10262.PropertiesInstance
    L2_10264 = L2_10264.loottables_LootTableOverride
    L3_10265 = A0_10262.Properties
    L3_10265 = L3_10265.loottables_defaultLootTable
    if L2_10264 ~= "" then
      L4_10266(L2_10264, "([^,]+)", function(A0_10267)
        local L2_10268
        L2_10268 = _UPVALUE0_
        L2_10268[#_UPVALUE0_ + 1] = A0_10267
      end)
    elseif L3_10265 ~= "" then
      L4_10266(L3_10265, "([^,]+)", function(A0_10269)
        local L2_10270
        L2_10270 = _UPVALUE0_
        L2_10270[#_UPVALUE0_ + 1] = A0_10269
      end)
    else
      L4_10266(A0_10262, "No loot tables assigned to Container: " .. A0_10262:GetName())
    end
    if L4_10266 > 0 then
      if L4_10266 then
        if Ark.GenerateRandomValueInRange(L4_10266, 1, 100) > A0_10262.Properties.nChanceEmpty then
          Ark.SpawnLootFromTable(L1_10263[Ark.GenerateRandomValueInRange(L4_10266, 1, #L1_10263)], A0_10262.id)
        end
      else
        for _FORV_7_ = 1, #L1_10263 do
          Ark.SpawnLootFromTable(L1_10263[_FORV_7_], A0_10262.id)
        end
      end
    end
  end
  A0_10251.SpawnLootFromTable = L1_10252
  function L1_10252(A0_10271)
    A0_10271:PlaySFX(A0_10271.Properties.ContainerInfo.Sound.audioTrigger_Open)
    Ark.OpenExternalInventory(A0_10271.id)
    A0_10271.Container.m_bSearched = true
    BroadcastEvent(A0_10271, "OnOpen")
  end
  A0_10251.OpenExternalInventory = L1_10252
  function L1_10252(A0_10272)
    A0_10272.Container.m_bEmpty = A0_10272.inventory:IsEmpty()
    A0_10272:PlaySFX(A0_10272.Properties.ContainerInfo.Sound.audioTrigger_Close)
    for _FORV_4_, _FORV_5_ in pairs(A0_10272.Container.listeners) do
      _FORV_5_:OnMyContainerClose()
    end
    A0_10272.Container.listeners = {}
  end
  A0_10251.OnCloseInventory = L1_10252
  function L1_10252(A0_10273, A1_10274)
  end
  A0_10251.OnQuickLooted = L1_10252
  function L1_10252(A0_10275, A1_10276)
    table.insert(A0_10275.Container.listeners, A1_10276)
  end
  A0_10251.RegisterListenerForOnMyContainerClose = L1_10252
  function L1_10252(A0_10277)
    return A0_10277.Container.m_bSearched
  end
  A0_10251.IsSearched = L1_10252
  function L1_10252(A0_10278)
    local L1_10279
    L1_10279 = A0_10278.Container
    L1_10279 = L1_10279.m_bEmpty
    if L1_10279 then
      L1_10279 = A0_10278.Container
      L1_10279 = L1_10279.m_bSearched
    end
    return L1_10279
  end
  A0_10251.IsEmpty = L1_10252
  function L1_10252(A0_10280)
    local L1_10281
    L1_10281 = A0_10280.Container
    L1_10281.m_bSearched = false
    L1_10281 = A0_10280.Container
    L1_10281.m_bEmpty = false
  end
  A0_10251.ResetContainer = L1_10252
  function L1_10252(A0_10282, A1_10283)
    local L2_10284
    if A1_10283 ~= "" then
      L2_10284 = Sound
      L2_10284 = L2_10284.GetAudioTriggerID
      L2_10284 = L2_10284(A1_10283)
      g_localActor:ExecuteAudioTrigger(L2_10284, A0_10282:GetDefaultAuxAudioProxyID())
    end
  end
  A0_10251.PlaySFX = L1_10252
end
ArkMakeContainer = L0_10127
function L0_10127(A0_10285)
  local L1_10286
  L1_10286 = {}
  A0_10285.ShadowCasterTypeFilter = L1_10286
  L1_10286 = A0_10285.ShadowCasterTypeFilter
  for _FORV_5_, _FORV_6_ in pairs(g_ShadowCasterTypeFilters) do
    L1_10286[_FORV_5_] = 1
  end
end
SetupShadowCasterTypeFiltering = L0_10127
function L0_10127(A0_10287)
  local L1_10288, L2_10289
  L1_10288 = 0
  L2_10289 = A0_10287.ShadowCasterTypeFilter
  for _FORV_6_, _FORV_7_ in pairs(L2_10289) do
    if g_ShadowCasterTypeFilters[_FORV_6_] ~= nil and _FORV_7_ == 1 then
      L1_10288 = L1_10288 + g_ShadowCasterTypeFilters[_FORV_6_]
    end
  end
  return L1_10288
end
GetShadowCasterTypeFiltering = L0_10127
