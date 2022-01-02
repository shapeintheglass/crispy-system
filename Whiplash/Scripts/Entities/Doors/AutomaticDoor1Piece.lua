local L0_4940, L1_4941, L2_4942, L3_4943
L0_4940 = {}
L1_4941 = {}
L1_4941.soclasses_SmartObjectClass = "Door,AutomaticDoor"
L1_4941.MapVisMask = 0
L2_4942 = {}
L2_4942.X = 0
L2_4942.Y = 0
L2_4942.Z = 1
L1_4941.Direction = L2_4942
L1_4941.CloseDelay = 1.5
L2_4942 = {}
L2_4942.X = 3
L2_4942.Y = 3
L2_4942.Z = 2
L1_4941.BBOX_Size = L2_4942
L1_4941.MovingDistance = 2.4
L1_4941.MovingSpeed = 4
L1_4941.bPlayerBounce = 1
L1_4941.bPlayerOnly = 0
L1_4941.fileModel = "Objects/Indoor/doors/default_200w250h.cgf"
L1_4941.soundOpenSound = "Sounds/doors/open.wav"
L1_4941.soundCloseSound = "Sounds/doors/close.wav"
L1_4941.bAutomatic = 1
L1_4941.bCloseTimer = 1
L1_4941.bEnabled = 1
L1_4941.nNeededKey = -1
L0_4940.Properties = L1_4941
L0_4940.CurrModel = "Objects/lift/lift.cgf"
L1_4941 = {}
L1_4941.x = 0
L1_4941.y = 0
L1_4941.z = 0
L0_4940.temp_vec = L1_4941
L0_4940.Distance = 0
L0_4940.EndReached = nil
L0_4940.OpeningTime = 0
L0_4940.bLocked = false
L0_4940.bInitialized = nil
AutomaticDoor1Piece = L0_4940
L0_4940 = AutomaticDoor1Piece
function L1_4941(A0_4944)
  A0_4944:OnReset()
  if A0_4944.Properties.fileOpenSound ~= A0_4944.CurrOpenSound then
    A0_4944.CurrOpenSound = A0_4944.Properties.fileOpenSound
  end
  if A0_4944.Properties.fileCloseSound ~= A0_4944.CurrCloseSound then
    A0_4944.CurrCloseSound = A0_4944.Properties.fileCloseSound
  end
end
L0_4940.OnPropertyChange = L1_4941
L0_4940 = AutomaticDoor1Piece
function L1_4941(A0_4945)
  A0_4945:LoadObject(A0_4945.Properties.fileModel, 0, 0)
  A0_4945:DrawObject(0, 1)
  A0_4945:CreateStaticEntity(100, 0)
  A0_4945.CurrOpenSound = A0_4945.Properties.fileOpenSound
  A0_4945.CurrCloseSound = A0_4945.Properties.fileCloseSound
  A0_4945:SetBBox({
    x = -(A0_4945.Properties.BBOX_Size.X * 0.5),
    y = -(A0_4945.Properties.BBOX_Size.Y * 0.5),
    z = -(A0_4945.Properties.BBOX_Size.Z * 0.5)
  }, {
    x = A0_4945.Properties.BBOX_Size.X * 0.5,
    y = A0_4945.Properties.BBOX_Size.Y * 0.5,
    z = A0_4945.Properties.BBOX_Size.Z * 0.5
  })
  A0_4945:RegisterState("Opened")
  A0_4945:RegisterState("Closed")
  if A0_4945.Properties.nNeededKey ~= -1 then
    A0_4945.bLocked = 1
  else
    A0_4945.bLocked = 0
  end
  A0_4945:GotoState("Closed")
  if A0_4945.MovingSpeed == 0 then
    A0_4945.MovingSpeed = 0.01
  end
  A0_4945.OpeningTime = A0_4945.Properties.MovingDistance / A0_4945.Properties.MovingSpeed
  A0_4945.Timer = 0
  System.ActivatePortal(A0_4945:GetPos(), 0, A0_4945.id)
end
L0_4940.OnReset = L1_4941
L0_4940 = AutomaticDoor1Piece
function L1_4941(A0_4946)
  A0_4946:Activate(0)
  A0_4946:TrackColliders(1)
  if A0_4946.bInitialized == nil then
    A0_4946:OnReset()
    A0_4946:NetPresent(nil)
    A0_4946.bInitialized = 1
  end
end
L0_4940.OnInit = L1_4941
L0_4940 = AutomaticDoor1Piece
function L1_4941(A0_4947, A1_4948)
  if A0_4947.Properties.bEnabled == 0 then
    return
  end
  A0_4947:GotoState("Opened")
  BroadcastEvent(A0_4947, "Open")
  System.ActivatePortal(A0_4947:GetPos(), 1, A0_4947.id)
end
L0_4940.Event_Open = L1_4941
L0_4940 = AutomaticDoor1Piece
function L1_4941(A0_4949, A1_4950)
  if A0_4949.Properties.bEnabled == 0 then
    return
  end
  A0_4949:GotoState("Closed")
  BroadcastEvent(A0_4949, "Close")
end
L0_4940.Event_Close = L1_4941
L0_4940 = AutomaticDoor1Piece
function L1_4941(A0_4951, A1_4952)
  if A0_4951.Properties.bEnabled == 0 then
    return
  end
  A0_4951:Activate(0)
  BroadcastEvent(A0_4951, "Opened")
end
L0_4940.Event_Opened = L1_4941
L0_4940 = AutomaticDoor1Piece
function L1_4941(A0_4953, A1_4954)
  if A0_4953.Properties.bEnabled == 0 then
    return
  end
  A0_4953:Activate(0)
  BroadcastEvent(A0_4953, "Closed")
  System.ActivatePortal(A0_4953:GetPos(), 0, A0_4953.id)
end
L0_4940.Event_Closed = L1_4941
L0_4940 = AutomaticDoor1Piece
function L1_4941(A0_4955, A1_4956)
  A0_4955.Properties.bEnabled = 1
end
L0_4940.Event_Enable = L1_4941
L0_4940 = AutomaticDoor1Piece
function L1_4941(A0_4957, A1_4958)
  A0_4957.Properties.bEnabled = 0
end
L0_4940.Event_Disable = L1_4941
L0_4940 = AutomaticDoor1Piece
L1_4941 = {}
L2_4942 = AutomaticDoor1Piece
L2_4942 = L2_4942.OnInit
L1_4941.OnInit = L2_4942
L2_4942 = {}
function L3_4943(A0_4959)
  if A0_4959.Properties.bCloseTimer == 1 then
    A0_4959:SetTimer(A0_4959.Properties.CloseDelay * 1000)
  end
  if A0_4959.Timer ~= 0 then
    Game:KillTimer(A0_4959.Timer)
  end
  A0_4959.Timer = Game:SetTimer(A0_4959, A0_4959.OpeningTime)
  A0_4959.EventSent = nil
end
L2_4942.OnBeginState = L3_4943
function L3_4943(A0_4960)
  Game:KillTimer(A0_4960.Timer)
  A0_4960.Timer = 0
end
L2_4942.OnEndState = L3_4943
function L3_4943(A0_4961, A1_4962)
  if A0_4961.Properties.bCloseTimer == 1 then
    if A0_4961.Properties.bPlayerOnly == 1 and A1_4962.type ~= "Player" then
      return
    end
    A0_4961:SetTimer(A0_4961.Properties.CloseDelay * 1000)
  end
end
L2_4942.OnContact = L3_4943
function L3_4943(A0_4963)
  A0_4963:GotoState("Closed")
  A0_4963:Event_Close(A0_4963)
end
L2_4942.OnTimer = L3_4943
function L3_4943(A0_4964, A1_4965)
  if A1_4965 == ScriptEvent_OnTimer then
    A0_4964.temp_vec.x = A0_4964.Properties.Direction.X * A0_4964.Properties.MovingDistance
    A0_4964.temp_vec.y = A0_4964.Properties.Direction.Y * A0_4964.Properties.MovingDistance
    A0_4964.temp_vec.z = A0_4964.Properties.Direction.Z * A0_4964.Properties.MovingDistance
    A0_4964:SetObjectPos(0, A0_4964.temp_vec)
  end
end
L2_4942.OnEvent = L3_4943
L1_4941.Opened = L2_4942
L2_4942 = {}
function L3_4943(A0_4966)
  if A0_4966.Timer ~= 0 then
    Game:KillTimer(A0_4966.Timer)
  end
  A0_4966.Timer = Game:SetTimer(A0_4966, A0_4966.OpeningTime)
  A0_4966.EventSent = nil
  A0_4966.EndReached = nil
end
L2_4942.OnBeginState = L3_4943
function L3_4943(A0_4967)
  Game:KillTimer(A0_4967.Timer)
  A0_4967.Timer = 0
end
L2_4942.OnEndState = L3_4943
function L3_4943(A0_4968, A1_4969)
  if A0_4968.Properties.bAutomatic == 1 then
    if A0_4968.bLocked ~= 0 then
      if A1_4969 and A1_4969.cnt and A1_4969.cnt.KeyCardAvailable then
        if A1_4969.cnt:KeyCardAvailable(A0_4968.Properties.nNeededKey) then
          A1_4969.cnt:SetKeyCard(A0_4968.Properties.nNeededKey, 0)
          A0_4968.bLocked = 0
          Hud:AddMessage("Door Unlocked.")
        else
          if not A0_4968.MsgShown and KeyCardInfo and KeyCardInfo[A0_4968.Properties.nNeededKey] then
            Game:ShowIngameDialog(-1, "", "", 12, "You need the " .. KeyCardInfo[A0_4968.Properties.nNeededKey].Desc .. " to open this door...", 3)
            Hud:AddMessage("You need the " .. KeyCardInfo[A0_4968.Properties.nNeededKey].Desc .. " to open this door...")
            A0_4968.MsgShown = 1
          end
          A0_4968:SetTimer(100)
          return
        end
      else
        Hud:AddMessage("This door is locked.")
        return
      end
    end
    if A0_4968.Properties.bPlayerOnly == 1 and A1_4969.type ~= "Player" then
      return
    end
    if A0_4968.EndReached == nil then
      A0_4968:Event_Open(A0_4968)
    end
  end
end
L2_4942.OnContact = L3_4943
function L3_4943(A0_4970)
  local L1_4971
  A0_4970.MsgShown = nil
end
L2_4942.OnTimer = L3_4943
function L3_4943(A0_4972, A1_4973)
  if A1_4973 == ScriptEvent_OnTimer then
    A0_4972:SetObjectPos(0, g_Vectors.v000)
  end
end
L2_4942.OnEvent = L3_4943
L1_4941.Closed = L2_4942
L0_4940.Server = L1_4941
L0_4940 = AutomaticDoor1Piece
L1_4941 = {}
L2_4942 = AutomaticDoor1Piece
L2_4942 = L2_4942.OnInit
L1_4941.OnInit = L2_4942
L2_4942 = {}
function L3_4943(A0_4974)
  A0_4974:StartAnimation(0, "open")
  if A0_4974.OpenSound then
  end
  A0_4974:Activate(1)
end
L2_4942.OnBeginState = L3_4943
function L3_4943(A0_4975, A1_4976)
  A0_4975.Distance = A0_4975.Distance + A1_4976 * A0_4975.Properties.MovingSpeed
  if A0_4975.Distance > A0_4975.Properties.MovingDistance then
    A0_4975.Distance = A0_4975.Properties.MovingDistance
    if not A0_4975.EventSent then
      A0_4975.Event_Opened(A0_4975)
    end
    A0_4975.EventSent = 1
  end
  A0_4975.temp_vec.x = A0_4975.Properties.Direction.X * A0_4975.Distance
  A0_4975.temp_vec.y = A0_4975.Properties.Direction.Y * A0_4975.Distance
  A0_4975.temp_vec.z = A0_4975.Properties.Direction.Z * A0_4975.Distance
  A0_4975:SetObjectPos(0, A0_4975.temp_vec)
end
L2_4942.OnUpdate = L3_4943
L1_4941.Opened = L2_4942
L2_4942 = {}
function L3_4943(A0_4977)
  A0_4977:StartAnimation(0, "close")
  if A0_4977.CloseSound then
  end
  A0_4977:Activate(1)
end
L2_4942.OnBeginState = L3_4943
function L3_4943(A0_4978, A1_4979)
  A0_4978.Distance = A0_4978.Distance - A1_4979 * A0_4978.Properties.MovingSpeed
  if A0_4978.Distance < 0 then
    A0_4978.Distance = 0
    if not A0_4978.EventSent then
      A0_4978.Event_Closed(A0_4978)
    end
    A0_4978.EventSent = 1
  end
  A0_4978.temp_vec.x = A0_4978.Properties.Direction.X * A0_4978.Distance
  A0_4978.temp_vec.y = A0_4978.Properties.Direction.Y * A0_4978.Distance
  A0_4978.temp_vec.z = A0_4978.Properties.Direction.Z * A0_4978.Distance
  A0_4978:SetObjectPos(0, A0_4978.temp_vec)
end
L2_4942.OnUpdate = L3_4943
L1_4941.Closed = L2_4942
L0_4940.Client = L1_4941
L0_4940 = AutomaticDoor1Piece
function L1_4941(A0_4980)
  local L1_4981
end
L0_4940.OnShutDown = L1_4941
L0_4940 = AutomaticDoor1Piece
L1_4941 = {}
L2_4942 = {}
L3_4943 = {
  AutomaticDoor1Piece.Event_Close,
  "bool"
}
L2_4942.Close = L3_4943
L3_4943 = {
  AutomaticDoor1Piece.Event_Closed,
  "bool"
}
L2_4942.Closed = L3_4943
L3_4943 = {
  AutomaticDoor1Piece.Event_Disable,
  "bool"
}
L2_4942.Disable = L3_4943
L3_4943 = {
  AutomaticDoor1Piece.Event_Enable,
  "bool"
}
L2_4942.Enable = L3_4943
L3_4943 = {
  AutomaticDoor1Piece.Event_Open,
  "bool"
}
L2_4942.Open = L3_4943
L3_4943 = {
  AutomaticDoor1Piece.Event_Opened,
  "bool"
}
L2_4942.Opened = L3_4943
L1_4941.Inputs = L2_4942
L2_4942 = {}
L2_4942.Close = "bool"
L2_4942.Closed = "bool"
L2_4942.Disable = "bool"
L2_4942.Enable = "bool"
L2_4942.Open = "bool"
L2_4942.Opened = "bool"
L1_4941.Outputs = L2_4942
L0_4940.FlowEvents = L1_4941
