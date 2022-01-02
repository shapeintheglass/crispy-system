local L0_6341, L1_6342, L2_6343
L0_6341 = {}
L1_6342 = {}
L0_6341.Client = L1_6342
L1_6342 = {}
L0_6341.Server = L1_6342
L1_6342 = {}
L1_6342.fileModelOverride = ""
L1_6342.ModelSubObject = "main"
L1_6342.Radius = 10
L1_6342.teamName = ""
L0_6341.Properties = L1_6342
L1_6342 = {}
L1_6342.Icon = "Item.bmp"
L1_6342.IconOnTop = 1
L0_6341.Editor = L1_6342
L0_6341.HasFlag = false
L0_6341.InProximity = false
L0_6341.IsOpen = false
CTFBase = L0_6341
L0_6341 = 1
TIMER_ANIM_TRANSITION = L0_6341
L0_6341 = CTFBase
L0_6341.DEFAULT_FILE_MODEL = "engine/engineassets/objects/default.cgf"
L0_6341 = CTFBase
L0_6341 = L0_6341.Server
function L1_6342(A0_6344)
  Log("CTFBase.Server.OnInit")
  if not A0_6344.bInitialized then
    A0_6344:OnReset()
    A0_6344.bInitialized = 1
    A0_6344:SetViewDistRatio(255)
  end
  g_gameRules.game:SetTeam(g_gameRules.game:GetTeamId(A0_6344.Properties.teamName) or 0, A0_6344.id)
  A0_6344.inside = {}
end
L0_6341.OnInit = L1_6342
L0_6341 = CTFBase
L0_6341 = L0_6341.Client
function L1_6342(A0_6345)
  Log("CTFBase.Client.OnInit")
  if not A0_6345.bInitialized then
    A0_6345:OnReset()
    A0_6345.bInitialized = 1
    A0_6345:SetViewDistRatio(255)
  end
  A0_6345.inside = {}
end
L0_6341.OnInit = L1_6342
L0_6341 = CTFBase
function L1_6342(A0_6346)
  local L1_6347, L2_6348, L3_6349, L4_6350
  L1_6347 = Log
  L2_6348 = "CTFBase.OnReset"
  L1_6347(L2_6348)
  L1_6347 = A0_6346.DEFAULT_FILE_MODEL
  L2_6348 = A0_6346.Properties
  L2_6348 = L2_6348.fileModelOverride
  if L2_6348 then
    L2_6348 = A0_6346.Properties
    L2_6348 = L2_6348.fileModelOverride
    if L2_6348 ~= "" then
      L2_6348 = Log
      L3_6349 = "Override file model provided, using model '%s'"
      L4_6350 = A0_6346.Properties
      L4_6350 = L4_6350.fileModelOverride
      L2_6348(L3_6349, L4_6350)
      L2_6348 = A0_6346.Properties
      L1_6347 = L2_6348.fileModelOverride
    end
  end
  L3_6349 = A0_6346
  L2_6348 = A0_6346.LoadObject
  L4_6350 = 0
  L2_6348(L3_6349, L4_6350, L1_6347)
  L2_6348 = A0_6346.Properties
  L2_6348 = L2_6348.Radius
  L2_6348 = L2_6348 / 2
  L3_6349 = {}
  L4_6350 = -L2_6348
  L3_6349.x = L4_6350
  L4_6350 = -L2_6348
  L3_6349.y = L4_6350
  L4_6350 = -L2_6348
  L3_6349.z = L4_6350
  L4_6350 = {}
  L4_6350.x = L2_6348
  L4_6350.y = L2_6348
  L4_6350.z = L2_6348
  A0_6346:SetTriggerBBox(L3_6349, L4_6350)
  A0_6346:SetViewDistRatio(255)
  A0_6346:Physicalize(0, PE_STATIC, {mass = 0})
  A0_6346:SetFlags(ENTITY_FLAG_ON_RADAR, 0)
  A0_6346:StartAnimation(0, "base_idle", 0, 0.4, 1, 1)
end
L0_6341.OnReset = L1_6342
L0_6341 = CTFBase
function L1_6342(A0_6351, A1_6352, A2_6353)
  local L3_6354
  L3_6354 = Log
  L3_6354("CTFBase:ObjectiveAttached")
  L3_6354 = A0_6351.HasFlag
  if L3_6354 ~= A2_6353 then
    A0_6351.HasFlag = A2_6353
    L3_6354 = nil
    if A2_6353 then
      A0_6351:SetAttachmentObject(0, "flag_attachment", A1_6352, -1, 0)
      L3_6354 = "base_idle"
      BroadcastEvent(A0_6351, "Scored")
    else
      A0_6351:ResetAttachment(0, "flag_attachment")
      L3_6354 = "base_idle"
      BroadcastEvent(A0_6351, "Taken")
    end
    Log("CTFBase:ObjectiveAttached anim %s %d", L3_6354, A0_6351:StartAnimation(0, L3_6354, 0, 0.4, 1, 0) * 1000)
    A0_6351:SetTimer(TIMER_ANIM_TRANSITION, A0_6351:StartAnimation(0, L3_6354, 0, 0.4, 1, 0) * 1000)
  end
end
L0_6341.ObjectiveAttached = L1_6342
L0_6341 = CTFBase
function L1_6342(A0_6355, A1_6356)
  local L2_6357
  L2_6357 = Log
  L2_6357("CTFBase:SetInProximity")
  L2_6357 = A0_6355.InProximity
  if L2_6357 ~= A1_6356 then
    A0_6355.InProximity = A1_6356
    L2_6357 = A0_6355.HasFlag
    if L2_6357 then
      L2_6357 = nil
      if A1_6356 then
        L2_6357 = "base_idle"
      else
        L2_6357 = "base_idle"
      end
      Log("CTFBase:InProximity anim %s %d", L2_6357, A0_6355:StartAnimation(0, L2_6357, 0, 0.4, 1, 0) * 1000)
      A0_6355:SetTimer(TIMER_ANIM_TRANSITION, A0_6355:StartAnimation(0, L2_6357, 0, 0.4, 1, 0) * 1000)
    end
  end
end
L0_6341.SetInProximity = L1_6342
L0_6341 = CTFBase
L0_6341 = L0_6341.Client
function L1_6342(A0_6358, A1_6359, A2_6360)
  local L3_6361
  L3_6361 = Log
  L3_6361("CTFBase:OnTimer %d", A1_6359)
  L3_6361 = TIMER_ANIM_TRANSITION
  if A1_6359 == L3_6361 then
    L3_6361 = nil
    if A0_6358.HasFlag then
      if A0_6358.InProximity then
        L3_6361 = "base_idle"
      else
        L3_6361 = "base_idle"
      end
    else
      L3_6361 = "base_idle"
    end
    Log("CTFBase:OnTimer anim %s", L3_6361)
    A0_6358:StartAnimation(0, L3_6361, 0, 0.4, 1, 1)
  end
end
L0_6341.OnTimer = L1_6342
L0_6341 = CTFBase
L1_6342 = {}
L2_6343 = {}
L1_6342.Inputs = L2_6343
L2_6343 = {}
L2_6343.Taken = "bool"
L2_6343.Scored = "bool"
L1_6342.Outputs = L2_6343
L0_6341.FlowEvents = L1_6342
