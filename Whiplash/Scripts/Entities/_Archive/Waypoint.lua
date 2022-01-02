local L0_1217, L1_1218
L0_1217 = {}
L0_1217.type = "Trigger"
L0_1217.triggered = nil
L0_1217.time = 0
L0_1217.closed = nil
L0_1217.nTextureId = -1
L1_1218 = {}
L1_1218.Radius = 1.5
L1_1218.TextTrigger = "Waypoint*TxtTrg"
L1_1218.TextInstruction = "Waypoint*TxtInst"
L1_1218.NeededItem = ""
L1_1218.RepeatTime = 5
L1_1218.Objective = "Waypoint*Reached"
L1_1218.NextPoint = "Waypoint*"
L1_1218.ActiveByDefault = 1
L1_1218.LabelSize = 2
L1_1218.LabelText = "Waypoint*LblTxt"
L1_1218.LabelImage = "Textures/Hud/Icons/Waypoint.tga"
L1_1218.CutsceneName = "Cutscenes/"
L1_1218.TextTriggerTimeout = 15
L1_1218.Map = "0"
L0_1217.Properties = L1_1218
L0_1217.DialogId = -1
Waypoint = L0_1217
L0_1217 = Waypoint
function L1_1218(A0_1219)
  A0_1219:OnReset()
end
L0_1217.OnPropertyChange = L1_1218
L0_1217 = Waypoint
function L1_1218(A0_1220)
  A0_1220:SetRadius(A0_1220.Properties.Radius)
end
L0_1217.OnReset = L1_1218
L0_1217 = Waypoint
function L1_1218(A0_1221)
  A0_1221:OnReset()
  A0_1221:LoadObject("Objects/Editor/HUD/W.cgf", 0, 1)
  A0_1221:DrawObject(0, 1)
end
L0_1217.OnInit = L1_1218
L0_1217 = Waypoint
function L1_1218(A0_1222, A1_1223)
  local L2_1224
  L2_1224 = A0_1222.closed
  if L2_1224 ~= nil then
    return
  end
  L2_1224 = _localplayer
  if L2_1224 ~= A1_1223 then
    return
  end
  L2_1224 = A0_1222.triggered
  if L2_1224 == nil then
    A0_1222.triggered = 1
    A0_1222.time = 0
    L2_1224 = A0_1222.Properties
    L2_1224 = L2_1224.NeededItem
    if L2_1224 ~= "" then
      L2_1224 = A1_1223.MyInventory
      L2_1224 = L2_1224.HasItem
      L2_1224 = L2_1224(A1_1223.MyInventory, A0_1222.Properties.NeededItem)
      if L2_1224 then
        L2_1224 = Game
        L2_1224 = L2_1224.ShowIngameDialog
        L2_1224 = L2_1224(L2_1224, -1, "", "", 12, Language[A0_1222.Properties.TextTrigger])
        A0_1222.DialogId = L2_1224
        L2_1224 = Game
        L2_1224 = L2_1224.SetTimer
        L2_1224(L2_1224, A0_1222, A0_1222.Properties.TextTriggerTimeout * 1000)
        A0_1222.closed = 1
        L2_1224 = A0_1222.DeActivate
        L2_1224(A0_1222)
        L2_1224 = A0_1222.OnEvent
        L2_1224(A0_1222, ScriptEvent_DropItem)
        L2_1224 = System
        L2_1224 = L2_1224.LogToConsole
        L2_1224("Objective= " .. A0_1222.Properties.Objective)
        L2_1224 = Mission
        L2_1224 = L2_1224[A0_1222.Properties.Objective]
        if L2_1224 ~= nil then
          L2_1224 = Mission
          L2_1224[A0_1222.Properties.Objective] = 1
          L2_1224 = Mission
          L2_1224 = L2_1224.OnUpdate
          L2_1224(Mission)
          L2_1224 = System
          L2_1224 = L2_1224.LogToConsole
          L2_1224("mission objective set OK!!")
        else
          L2_1224 = System
          L2_1224 = L2_1224.LogToConsole
          L2_1224("Tried to set to true unexistant mission objective")
        end
      else
        L2_1224 = System
        L2_1224 = L2_1224.LogToConsole
        L2_1224(Language[A0_1222.Properties.TextInstruction])
      end
    else
      L2_1224 = Game
      L2_1224 = L2_1224.ShowIngameDialog
      L2_1224 = L2_1224(L2_1224, -1, "", "", 12, Language[A0_1222.Properties.TextTrigger])
      A0_1222.DialogId = L2_1224
      L2_1224 = Game
      L2_1224 = L2_1224.SetTimer
      L2_1224(L2_1224, A0_1222, A0_1222.Properties.TextTriggerTimeout * 1000)
      A0_1222.closed = 1
      L2_1224 = A0_1222.DeActivate
      L2_1224(A0_1222)
      L2_1224 = nil
      L2_1224 = System.GetEntityByName(A0_1222.Properties.NextPoint)
      if L2_1224 ~= nil then
        System.LogToConsole("Activating " .. A0_1222.Properties.NextPoint)
        L2_1224.Activate(L2_1224)
      end
      System.LogToConsole("Objective= " .. A0_1222.Properties.Objective)
      if Mission[A0_1222.Properties.Objective] ~= nil then
        Mission[A0_1222.Properties.Objective] = 1
        Mission.OnUpdate(Mission)
        System.LogToConsole("mission objective set OK!!")
      else
        System.LogToConsole("Tried to set to true unexistant mission objective")
      end
    end
  end
end
L0_1217.OnContact = L1_1218
L0_1217 = Waypoint
function L1_1218(A0_1225, A1_1226)
  local L2_1227, L3_1228
  L2_1227 = A0_1225.closed
  if L2_1227 ~= nil then
    return
  end
  L3_1228 = A0_1225
  L2_1227 = A0_1225.GetPos
  L2_1227 = L2_1227(L3_1228)
  L3_1228 = L2_1227.z
  L3_1228 = L3_1228 + 2
  L2_1227.z = L3_1228
  L3_1228 = Game
  L3_1228 = L3_1228.DrawLabel
  L3_1228(L3_1228, L2_1227, A0_1225.Properties.LabelSize, Language[A0_1225.Properties.LabelText])
  L3_1228 = A0_1225.nTextureId
  if L3_1228 ~= nil then
    L3_1228 = System
    L3_1228 = L3_1228.DrawLabelImage
    L3_1228(L2_1227, A0_1225.Properties.LabelSize, A0_1225.nTextureId)
  end
  L3_1228 = A0_1225.GetAngles
  L3_1228 = L3_1228(A0_1225)
  L3_1228.z = L3_1228.z + 8
  A0_1225:SetAngles(L3_1228)
  if A0_1225.triggered ~= nil then
    A0_1225.time = A0_1225.time + System.GetFrameTime()
    if A0_1225.time > A0_1225.Properties.RepeatTime then
      A0_1225.triggered = nil
    end
  end
end
L0_1217.OnUpdate = L1_1218
L0_1217 = Waypoint
function L1_1218(A0_1229, A1_1230, A2_1231)
  if A1_1230 == ScriptEvent_Reset then
    A0_1229:SetRadius(A0_1229.Properties.Radius)
    A0_1229.nTextureId = System.LoadTexture(A0_1229.Properties.LabelImage)
    if A0_1229.Properties.ActiveByDefault == 1 then
      A0_1229:Activate()
    else
      A0_1229:DeActivate()
    end
  elseif A1_1230 == ScriptEvent_Activate then
    A0_1229:Activate()
  elseif A1_1230 == ScriptEvent_Timer then
    Game:HideIngameDialog(A0_1229.DialogId)
  end
end
L0_1217.OnEvent = L1_1218
L0_1217 = Waypoint
function L1_1218(A0_1232)
  local L1_1233
end
L0_1217.OnShutDown = L1_1218
L0_1217 = Waypoint
function L1_1218(A0_1234)
  System.LogToConsole("Activating " .. A0_1234:GetName())
  A0_1234:Activate(1)
  A0_1234.closed = nil
  A0_1234:DrawObject(0, 1)
end
L0_1217.Activate = L1_1218
L0_1217 = Waypoint
function L1_1218(A0_1235)
  System.LogToConsole("DEActivating " .. A0_1235:GetName())
  A0_1235:Activate(nil)
  A0_1235.closed = 1
  A0_1235:DrawObject(0, 0)
end
L0_1217.DeActivate = L1_1218
L0_1217 = Waypoint
function L1_1218(A0_1236, A1_1237)
  A1_1237:WriteBool(A0_1236.triggered)
  A1_1237:WriteBool(A0_1236.closed)
  A1_1237:WriteFloat(A0_1236.Properties.Radius)
  A1_1237:WriteString(A0_1236.Properties.TextTrigger)
  A1_1237:WriteString(A0_1236.Properties.TextInstruction)
  A1_1237:WriteString(A0_1236.Properties.NeededItem)
  A1_1237:WriteInt(A0_1236.Properties.RepeatTime)
  A1_1237:WriteString(A0_1236.Properties.Objective)
  A1_1237:WriteString(A0_1236.Properties.NextPoint)
  A1_1237:WriteInt(A0_1236.Properties.ActiveByDefault)
  A1_1237:WriteInt(A0_1236.Properties.LabelSize)
  A1_1237:WriteString(A0_1236.Properties.LabelText)
  A1_1237:WriteString(A0_1236.Properties.LabelImage)
  A1_1237:WriteString(A0_1236.Properties.CutsceneName)
  A1_1237:WriteInt(A0_1236.Properties.TextTriggerTimeout)
  A1_1237:WriteString(A0_1236.Properties.Map)
end
L0_1217.OnSave = L1_1218
L0_1217 = Waypoint
function L1_1218(A0_1238, A1_1239)
  A0_1238.triggered = A1_1239:ReadBool()
  A0_1238.closed = A1_1239:ReadBool()
  if A0_1238.closed ~= nil then
    A0_1238:DeActivate()
  end
  A0_1238.Properties.Radius = A1_1239:ReadFloat()
  A0_1238.Properties.TextTrigger = A1_1239:ReadString()
  A0_1238.Properties.TextInstruction = A1_1239:ReadString()
  A0_1238.Properties.NeededItem = A1_1239:ReadString()
  A0_1238.Properties.RepeatTime = A1_1239:ReadInt()
  A0_1238.Properties.Objective = A1_1239:ReadString()
  A0_1238.Properties.NextPoint = A1_1239:ReadString()
  A0_1238.Properties.ActiveByDefault = A1_1239:ReadInt()
  A0_1238.Properties.LabelSize = A1_1239:ReadInt()
  A0_1238.Properties.LabelText = A1_1239:ReadString()
  A0_1238.Properties.LabelImage = A1_1239:ReadString()
  if A0_1238.Properties.LabelImage then
    A0_1238.nTextureId = System.LoadImage(A0_1238.Properties.LabelImage)
  end
  A0_1238.Properties.CutsceneName = A1_1239:ReadString()
  A0_1238.Properties.TextTriggerTimeout = A1_1239:ReadInt()
  A0_1238.Properties.Map = A1_1239:ReadString()
end
L0_1217.OnLoad = L1_1218
