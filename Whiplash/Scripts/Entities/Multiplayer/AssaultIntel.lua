AssaultIntel = {
  Client = {},
  Server = {},
  Properties = {
    fileModelOverride = "",
    ControlRadius = 3,
    ControlHeight = 3,
    ControlOffsetZ = 0,
    teamName = "",
    DebugDraw = 0
  },
  Editor = {Icon = "Item.bmp", IconOnTop = 1},
  previousUploadProgress = -20,
  previousTeam = 0
}
AssaultIntel.DEFAULT_FILE_MODEL = "objects/multiplayer/props/cw2_assault_mod_monitor/cw2_assault_mod_monitor.cgf"
Net.Expose({
  Class = AssaultIntel,
  ClientMethods = {},
  ServerMethods = {},
  ServerProperties = {UploadProgress = FLOAT, UploadInProgress = BOOL}
})
function AssaultIntel.Server.OnInit(A0_6119)
  if not A0_6119.bInitialized then
    A0_6119:OnReset()
    A0_6119.bInitialized = 1
    A0_6119:SetViewDistRatio(255)
  end
  A0_6119.inside = {}
  A0_6119.synched.UploadProgress = 0
  A0_6119.synched.UploadInProgress = false
end
function AssaultIntel.Client.OnInit(A0_6120)
  A0_6120.ClAlarmActive = false
  A0_6120.ClAlarmSoundID = nil
  if not A0_6120.bInitialized then
    A0_6120:OnReset()
    A0_6120.bInitialized = 1
    A0_6120:SetViewDistRatio(255)
  end
  A0_6120.inside = {}
end
function AssaultIntel.Client.WarningAlarm(A0_6121, A1_6122)
  if A1_6122 then
    A0_6121.ClAlarmActive = true
    if not A0_6121.ClAlarmSoundID then
      A0_6121.ClAlarmSoundID = Sound.Play("Sounds/crysiswar2:interface:multiplayer/mp_alarm_ambience_loop", A0_6121:GetWorldPos(), SOUND_DEFAULT_3D, SOUND_SEMANTIC_MECHANIC_ENTITY)
    end
  else
    A0_6121.ClAlarmActive = false
    if A0_6121.ClAlarmSoundID then
      Sound.StopSound(A0_6121.ClAlarmSoundID)
      A0_6121.ClAlarmSoundID = nil
    end
  end
end
function AssaultIntel.Client.OnUpdate(A0_6123, A1_6124)
  if g_localActorId and g_gameRules then
    if A0_6123.synched.UploadInProgress == true and A0_6123.ClAlarmActive == false then
      A0_6123.Client.WarningAlarm(A0_6123, true)
    elseif A0_6123.synched.UploadInProgress == false and A0_6123.ClAlarmActive == true then
      A0_6123.Client.WarningAlarm(A0_6123, false)
    end
  end
end
function AssaultIntel.OnReset(A0_6125)
  local L1_6126, L2_6127, L3_6128, L4_6129, L5_6130, L6_6131
  L1_6126 = A0_6125.DEFAULT_FILE_MODEL
  L2_6127 = A0_6125.Properties
  L2_6127 = L2_6127.fileModelOverride
  if L2_6127 then
    L2_6127 = A0_6125.Properties
    L2_6127 = L2_6127.fileModelOverride
    if L2_6127 ~= "" then
      L2_6127 = A0_6125.Properties
      L1_6126 = L2_6127.fileModelOverride
    end
  end
  L3_6128 = A0_6125
  L2_6127 = A0_6125.LoadObject
  L4_6129 = 0
  L5_6130 = L1_6126
  L2_6127(L3_6128, L4_6129, L5_6130)
  L3_6128 = A0_6125
  L2_6127 = A0_6125.Physicalize
  L4_6129 = 0
  L5_6130 = PE_STATIC
  L6_6131 = {}
  L6_6131.mass = 0
  L2_6127(L3_6128, L4_6129, L5_6130, L6_6131)
  L2_6127 = A0_6125.Properties
  L2_6127 = L2_6127.ControlRadius
  L3_6128 = A0_6125.Properties
  L3_6128 = L3_6128.ControlOffsetZ
  L4_6129 = A0_6125.Properties
  L4_6129 = L4_6129.ControlHeight
  L5_6130 = {}
  L6_6131 = -L2_6127
  L5_6130.x = L6_6131
  L6_6131 = -L2_6127
  L5_6130.y = L6_6131
  L5_6130.z = L3_6128
  L6_6131 = {}
  L6_6131.x = L2_6127
  L6_6131.y = L2_6127
  L6_6131.z = L4_6129 + L3_6128
  A0_6125:SetTriggerBBox(L5_6130, L6_6131)
  A0_6125:SetViewDistRatio(255)
  A0_6125:SetFlags(ENTITY_FLAG_ON_RADAR, 0)
  if A0_6125.isClient and A0_6125.ClAlarmActive == true then
    A0_6125.Client.WarningAlarm(A0_6125, false)
  end
  if System.IsEditor() then
    if A0_6125.Properties.DebugDraw ~= 0 then
      A0_6125:Activate(1)
    else
      A0_6125:Activate(0)
    end
  end
end
function AssaultIntel.OnPropertyChange(A0_6132)
  A0_6132:OnReset()
end
function AssaultIntel.Client.OnEnterArea(A0_6133, A1_6134, A2_6135)
  for _FORV_7_, _FORV_8_ in ipairs(A0_6133.inside) do
    if _FORV_8_ == A1_6134.id then
      break
    end
  end
  if not true then
    table.insert(A0_6133.inside, A1_6134.id)
  end
end
function AssaultIntel.Client.OnLeaveArea(A0_6136, A1_6137, A2_6138)
  local L3_6139, L4_6140, L5_6141, L6_6142
  for L6_6142, _FORV_7_ in L3_6139(L4_6140) do
    if _FORV_7_ == A1_6137.id then
      table.remove(A0_6136.inside, L6_6142)
      break
    end
  end
end
function AssaultIntel.EntityInsideArea(A0_6143, A1_6144)
  for _FORV_5_, _FORV_6_ in ipairs(A0_6143.inside) do
    if _FORV_6_ == A1_6144 then
      return true
    end
  end
  return false
end
function AssaultIntel.Server.OnEnterArea(A0_6145, A1_6146, A2_6147)
  if A1_6146 and A1_6146.actor and A1_6146.actor:IsPlayer() then
    for _FORV_7_, _FORV_8_ in ipairs(A0_6145.inside) do
      if _FORV_8_ == A1_6146.id then
        break
      end
    end
    if not true then
      table.insert(A0_6145.inside, A1_6146.id)
    end
    if g_gameRules.Server.EntityEnterIntelPoint ~= nil then
      g_gameRules.Server.EntityEnterIntelPoint(g_gameRules, A0_6145, A1_6146)
    end
  end
end
function AssaultIntel.Server.OnLeaveArea(A0_6148, A1_6149, A2_6150)
  local L3_6151, L4_6152, L5_6153, L6_6154
  if A1_6149 then
    if L3_6151 then
      if L3_6151 then
        for L6_6154, _FORV_7_ in L3_6151(L4_6152) do
          if _FORV_7_ == A1_6149.id then
            table.remove(A0_6148.inside, L6_6154)
            break
          end
        end
        if L3_6151 ~= nil then
          L6_6154 = A1_6149
          L3_6151(L4_6152, L5_6153, L6_6154)
        end
      end
    end
  end
end
function AssaultIntel.Server.OnUpdate(A0_6155, A1_6156)
  local L2_6157, L3_6158, L4_6159
  L2_6157 = A0_6155.Properties
  L2_6157 = L2_6157.DebugDraw
  if L2_6157 ~= 0 then
    L3_6158 = A0_6155
    L2_6157 = A0_6155.GetWorldPos
    L2_6157 = L2_6157(L3_6158)
    L3_6158 = A0_6155.Properties
    L3_6158 = L3_6158.ControlRadius
    L4_6159 = A0_6155.Properties
    L4_6159 = L4_6159.ControlHeight
    L2_6157.z = L2_6157.z + L4_6159 * 0.5 + A0_6155.Properties.ControlOffsetZ
    Game.DebugDrawCylinder(L2_6157.x, L2_6157.y, L2_6157.z, L3_6158, L4_6159, 60, 60, 255, 100)
  end
end
