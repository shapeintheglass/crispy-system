local L0_7978, L1_7979, L2_7980, L3_7981
L0_7978 = {}
L0_7978.type = "WindController"
L1_7979 = {}
L2_7980 = {}
L2_7980.x = 1
L2_7980.y = 0
L2_7980.z = 0
L1_7979.vVelocity = L2_7980
L1_7979.fFadeTime = 1
L0_7978.Properties = L1_7979
L1_7979 = {}
L1_7979.Icon = "Tornado.bmp"
L0_7978.Editor = L1_7979
Wind = L0_7978
L0_7978 = Wind
function L1_7979(A0_7982)
  A0_7982.oldVelocity = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_7982.occupied = 0
  A0_7982.lasttime = 0
  A0_7982:OnReset()
  A0_7982:RegisterForAreaEvents(1)
end
L0_7978.OnInit = L1_7979
L0_7978 = Wind
function L1_7979(A0_7983)
  A0_7983:OnReset()
end
L0_7978.OnPropertyChange = L1_7979
L0_7978 = Wind
function L1_7979(A0_7984)
  A0_7984:RegisterForAreaEvents(1)
end
L0_7978.OnReset = L1_7979
L0_7978 = Wind
function L1_7979(A0_7985, A1_7986)
  local L2_7987
  L2_7987 = A0_7985.bTriggered
  A1_7986.bTriggered = L2_7987
  L2_7987 = A0_7985.oldVelocity
  A1_7986.oldVelocity = L2_7987
  L2_7987 = A0_7985.fadeamt
  A1_7986.fadeamt = L2_7987
  L2_7987 = A0_7985.Who
  A1_7986.Who = L2_7987
end
L0_7978.OnSave = L1_7979
L0_7978 = Wind
function L1_7979(A0_7988, A1_7989)
  local L2_7990
  L2_7990 = A1_7989.bTriggered
  A0_7988.bTriggered = L2_7990
  L2_7990 = A1_7989.oldVelocity
  A0_7988.oldVelocity = L2_7990
  L2_7990 = A1_7989.fadeamt
  A0_7988.fadamt = L2_7990
  L2_7990 = A1_7989.Who
  A0_7988.Who = L2_7990
end
L0_7978.OnLoad = L1_7979
L0_7978 = Wind
function L1_7979(A0_7991, A1_7992, A2_7993, A3_7994)
  A0_7991:Fade(A3_7994)
end
L0_7978.OnProceedFadeArea = L1_7979
L0_7978 = Wind
function L1_7979(A0_7995)
  System.SetWind(A0_7995.oldVelocity)
end
L0_7978.ResetValues = L1_7979
L0_7978 = Wind
function L1_7979(A0_7996, A1_7997, A2_7998)
  if A1_7997 and not A1_7997.actor:IsPlayer() or A0_7996.occupied == 1 then
    return
  end
  A0_7996.oldVelocity = System.GetWind()
  A0_7996.occupied = 1
end
L0_7978.OnEnterArea = L1_7979
L0_7978 = Wind
function L1_7979(A0_7999, A1_8000, A2_8001)
  if A1_8000 and not A1_8000.actor:IsPlayer() then
    return
  end
  A0_7999:ResetValues()
  A0_7999.occupied = 0
end
L0_7978.OnLeaveArea = L1_7979
L0_7978 = Wind
function L1_7979(A0_8002)
  A0_8002:RegisterForAreaEvents(0)
end
L0_7978.OnShutDown = L1_7979
L0_7978 = Wind
function L1_7979(A0_8003, A1_8004)
  if A0_8003.occupied == 0 then
    if A0_8003.fadeamt and A0_8003.fadeamt < 1 then
      A0_8003:ResetValues()
    end
    A0_8003:OnEnterArea()
    A0_8003.fadeamt = 0
    A0_8003.lasttime = _time
    A0_8003.exitfrom = nil
  end
  A0_8003:SetTimer(0, 1)
  BroadcastEvent(A0_8003, "Enable")
end
L0_7978.Event_Enable = L1_7979
L0_7978 = Wind
function L1_7979(A0_8005, A1_8006)
  if A0_8005.occupied == 1 then
    A0_8005.occupied = 0
    A0_8005.fadeamt = 0
    A0_8005.lasttime = _time
    A0_8005.exitfrom = 1
  end
  A0_8005:SetTimer(0, 1)
  BroadcastEvent(A0_8005, "Disable")
end
L0_7978.Event_Disable = L1_7979
L0_7978 = Wind
function L1_7979(A0_8007)
  local L1_8008, L2_8009
  L2_8009 = A0_8007
  L1_8008 = A0_8007.SetTimer
  L1_8008(L2_8009, 0, 1)
  L1_8008 = A0_8007.fadeamt
  if L1_8008 then
    L1_8008 = _time
    L2_8009 = A0_8007.lasttime
    L1_8008 = L1_8008 - L2_8009
    L2_8009 = _time
    A0_8007.lasttime = L2_8009
    L2_8009 = A0_8007.fadeamt
    L2_8009 = L2_8009 + L1_8008 / A0_8007.Properties.fFadeTime
    A0_8007.fadeamt = L2_8009
    L2_8009 = A0_8007.fadeamt
    if L2_8009 >= 1 then
      A0_8007.fadeamt = 1
      L2_8009 = A0_8007.KillTimer
      L2_8009(A0_8007, 0)
    end
    L2_8009 = A0_8007.fadeamt
    if A0_8007.exitfrom then
      L2_8009 = 1 - L2_8009
    end
    L2_8009 = math.sqrt(L2_8009)
    L2_8009 = math.sqrt(L2_8009)
    A0_8007:Fade(L2_8009)
  else
    L2_8009 = A0_8007
    L1_8008 = A0_8007.KillTimer
    L1_8008(L2_8009, 0)
  end
end
L0_7978.OnTimer = L1_7979
L0_7978 = Wind
function L1_7979(A0_8010, A1_8011)
  System.SetWind(LerpColors(A0_8010.oldVelocity, A0_8010.Properties.vVelocity, A1_8011))
end
L0_7978.Fade = L1_7979
L0_7978 = Wind
L1_7979 = {}
L2_7980 = {}
L3_7981 = {
  Wind.Event_Disable,
  "bool"
}
L2_7980.Disable = L3_7981
L3_7981 = {
  Wind.Event_Enable,
  "bool"
}
L2_7980.Enable = L3_7981
L1_7979.Inputs = L2_7980
L2_7980 = {}
L2_7980.Disable = "bool"
L2_7980.Enable = "bool"
L1_7979.Outputs = L2_7980
L0_7978.FlowEvents = L1_7979
