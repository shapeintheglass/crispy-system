Elevator = {
  Server = {},
  Client = {},
  Properties = {
    soclasses_SmartObjectClass = "Elevator",
    objModel = "engine/engineassets/objects/default.cgf",
    Sounds = {
      soundSoundOnStart = "",
      soundSoundOnMove = "",
      soundSoundOnStop = ""
    },
    bAutomatic = 0,
    nFloorCount = 2,
    fFloorHeight = 5,
    nInitialFloor = 0,
    nDestinationFloor = 1,
    bExactPosition = 1,
    Slide = {
      fSpeed = 1,
      fAcceleration = 1,
      sAxis = "z",
      fStopTime = 0.75
    }
  },
  Editor = {
    Icon = "elevator.bmp",
    IconOnTop = 0
  }
}
Net.Expose({
  Class = Elevator,
  ClientMethods = {
    ClSlide = {
      RELIABLE_UNORDERED,
      POST_ATTACH,
      INT8,
      BOOL
    },
    ClInitMoving = {
      RELIABLE_UNORDERED,
      POST_ATTACH,
      VEC3,
      INT8,
      INT8,
      FLOAT,
      FLOAT
    }
  },
  ServerMethods = {},
  ServerProperties = {}
})
function Elevator.OnPropertyChange(A0_5076)
  A0_5076:Reset()
end
function Elevator.OnReset(A0_5077)
  A0_5077:Reset()
end
function Elevator.OnSpawn(A0_5078)
  CryAction.CreateGameObjectForEntity(A0_5078.id)
  CryAction.BindGameObjectToNetwork(A0_5078.id)
  CryAction.ForceGameObjectUpdate(A0_5078.id, true)
  A0_5078.isServer = CryAction.IsServer()
  A0_5078.isClient = CryAction.IsClient()
  A0_5078.originalpos = A0_5078:GetWorldPos()
  A0_5078:Reset()
end
function Elevator.Server.OnStartGame(A0_5079)
  A0_5079.originalpos = A0_5079:GetWorldPos()
  A0_5079:OnReset()
end
function Elevator.OnDestroy(A0_5080)
  local L1_5081
end
function Elevator.DoPhysicalize(A0_5082)
  if A0_5082.currModel ~= A0_5082.Properties.objModel then
    CryAction.ActivateExtensionForGameObject(A0_5082.id, "ScriptControlledPhysics", false)
    A0_5082:LoadObject(0, A0_5082.Properties.objModel)
    A0_5082:Physicalize(0, PE_RIGID, {mass = 0})
    CryAction.ActivateExtensionForGameObject(A0_5082.id, "ScriptControlledPhysics", true)
  end
  A0_5082.currModel = A0_5082.Properties.objModel
end
function Elevator.OnSave(A0_5083, A1_5084)
  A1_5084.currFloor = A0_5083.currFloor
  A1_5084.goalFloor = A0_5083.goalFloor
  A1_5084.prevFloor = A0_5083.prevFloor
  A1_5084.nextFloor = A0_5083.nextFloor
  A1_5084.resting = A0_5083.resting
  A1_5084.active = A0_5083:IsActive()
end
function Elevator.OnLoad(A0_5085, A1_5086)
  A0_5085.currFloor = A1_5086.currFloor
  A0_5085.goalFloor = A1_5086.goalFloor
  A0_5085.prevFloor = A1_5086.prevFloor
  A0_5085.nextFloor = A1_5086.nextFloor
  A0_5085.resting = A1_5086.resting
  A0_5085:Activate(A1_5086.active and 1 or 0)
  if A1_5086.active then
  end
end
function Elevator.Reset(A0_5087)
  local L1_5088, L2_5089, L3_5090, L4_5091, L5_5092, L6_5093, L7_5094, L8_5095, L9_5096, L10_5097
  L1_5088 = A0_5087.Activate
  L1_5088(L2_5089, L3_5090)
  L1_5088 = A0_5087.DoPhysicalize
  L1_5088(L2_5089)
  L1_5088 = A0_5087.scp
  L1_5088 = L1_5088.Reset
  L1_5088(L2_5089)
  L1_5088 = A0_5087.Properties
  L1_5088 = L1_5088.nInitialFloor
  A0_5087.floorpos = L2_5089
  L2_5089[L1_5088] = L3_5090
  if L2_5089 > 0 then
    for L5_5092 = 0, L3_5090 - 1 do
      L6_5093 = vecNew
      L7_5094 = A0_5087.originalpos
      L6_5093 = L6_5093(L7_5094)
      L7_5094 = A0_5087.Properties
      L7_5094 = L7_5094.Slide
      L7_5094 = L7_5094.sAxis
      L8_5095 = A0_5087.Properties
      L8_5095 = L8_5095.fFloorHeight
      L9_5096 = L5_5092 * L8_5095
      L10_5097 = L1_5088 * L8_5095
      L9_5096 = L9_5096 - L10_5097
      L10_5097 = g_Vectors
      L10_5097 = L10_5097.temp_v1
      if L7_5094 == "X" or L7_5094 == "x" then
        L10_5097 = A0_5087:GetDirectionVector(0, L10_5097)
      elseif L7_5094 == "Y" or L7_5094 == "y" then
        L10_5097 = A0_5087:GetDirectionVector(1, L10_5097)
      else
        L10_5097 = A0_5087:GetDirectionVector(2, L10_5097)
      end
      L6_5093.x = L6_5093.x + L10_5097.x * L9_5096
      L6_5093.y = L6_5093.y + L10_5097.y * L9_5096
      L6_5093.z = L6_5093.z + L10_5097.z * L9_5096
      A0_5087.floorpos[L5_5092] = L6_5093
    end
  end
  A0_5087.currFloor = L1_5088
  A0_5087.goalFloor = L1_5088
  A0_5087.prevFloor = L1_5088
  A0_5087.nextFloor = nil
  A0_5087.resting = true
  L5_5092 = L1_5088
  L2_5089(L3_5090, L4_5091, L5_5092)
  L2_5089 = L2_5089 ~= 0
  A0_5087.automatic = L2_5089
  if L2_5089 then
    L5_5092 = A0_5087
    L6_5093 = L2_5089
    L7_5094 = L3_5090
    L4_5091(L5_5092, L6_5093, L7_5094)
  end
  L2_5089(L3_5090, L4_5091)
  L2_5089(L3_5090, L4_5091)
end
function Elevator.Server.OnTimer(A0_5098, A1_5099, A2_5100)
  if A1_5099 == 1 then
    if A0_5098.automatic and not A0_5098.resting then
      A0_5098:Slide(A0_5098.Properties.nInitialFloor)
    elseif A0_5098.nextFloor and A0_5098.nextFloor ~= A0_5098.currFloor then
      A0_5098:Slide(A0_5098.nextFloor)
      A0_5098.nextFloor = nil
    end
  elseif A0_5098.automatic then
    A0_5098:Slide(A0_5098.Properties.nDestinationFloor)
  end
end
function Elevator.Server.OnEnterArea(A0_5101, A1_5102, A2_5103)
  if A1_5102 and A1_5102.actor then
    A0_5101:SetTimer(0, 1500)
  end
end
function Elevator.UpdateSlide(A0_5104, A1_5105)
  if A0_5104.currFloor == A0_5104.goalFloor then
    A0_5104:ActivateOutput("CurrentFloor", A0_5104.currFloor)
    return
  end
  if A0_5104:HasArrived() then
    A0_5104.currFloor = A0_5104.goalFloor
    A0_5104:ActivateOutput("CurrentFloor", A0_5104.currFloor)
    if A0_5104.prevFloor > A0_5104.currFloor then
      A0_5104:ActivateOutput("StoppedSlidingDown", 1)
    else
      A0_5104:ActivateOutput("StoppedSlidingUp", 1)
    end
    if A0_5104.isServer then
      if A0_5104.automatic and A0_5104.currFloor == A0_5104.Properties.nInitialFloor then
        A0_5104.resting = true
      end
      A0_5104:SetTimer(1, 3000)
    end
    A0_5104:Activate(0)
  else
    A0_5104.resting = false
  end
end
function Elevator.HasArrived(A0_5106)
  return A0_5106.scp:HasArrived()
end
function Elevator.Server.OnUpdate(A0_5107, A1_5108)
  A0_5107:UpdateSlide(A1_5108)
end
function Elevator.Client.OnUpdate(A0_5109, A1_5110)
  if not A0_5109.isServer then
    A0_5109:UpdateSlide(A1_5110)
  end
end
function Elevator.Server.OnInitClient(A0_5111, A1_5112)
  if A0_5111.currFloor == A0_5111.goalFloor then
    A0_5111.onClient:ClSlide(A1_5112, A0_5111.goalFloor, true)
  else
    A0_5111.onClient:ClInitMoving(A1_5112, A0_5111.currFloor, A0_5111.goalFloor, A0_5111.scp:GetSpeed(), A0_5111.scp:GetAcceleration())
  end
end
function Elevator.Server.SvRequestSlide(A0_5113, A1_5114, A2_5115)
  A0_5113:Slide(user, A2_5115)
end
function Elevator.Client.ClSlide(A0_5116, A1_5117)
  if not A0_5116.isServer then
    A0_5116:Slide(A1_5117)
  end
end
function Elevator.OnPostStep(A0_5118)
  local L1_5119
end
function Elevator.SlideInternal(A0_5120, A1_5121, A2_5122, A3_5123, A4_5124, A5_5125)
  if A1_5121 >= A0_5120.Properties.nFloorCount then
    A1_5121 = A0_5120.Properties.nFloorCount - 1
  elseif A1_5121 < 0 then
    A1_5121 = 0
  end
  if A0_5120.currFloor == A1_5121 and A0_5120.scp:GetSpeed() == 0 then
    return
  elseif A0_5120.goalFloor == A1_5121 then
    return
  end
  if 0 >= A0_5120.scp:GetSpeed() then
    if A1_5121 < A0_5120.currFloor then
      A0_5120:ActivateOutput("StartedSlidingDown", 1)
    else
      A0_5120:ActivateOutput("StartedSlidingUp", 1)
    end
    A0_5120.goalFloor = A1_5121
    A0_5120.prevFloor = A0_5120.currFloor
    A0_5120.currFloor = -1
    A0_5120:Activate(1)
    if A0_5120.isServer then
      A0_5120.allClients:ClSlide(A1_5121, false)
    end
    A0_5120.scp:MoveTo(A0_5120.floorpos[A0_5120.goalFloor], A0_5120:GetSpeed(), A2_5122, A3_5123, A4_5124, A5_5125)
  else
    A0_5120.nextFloor = A1_5121
  end
end
function Elevator.Slide(A0_5126, A1_5127)
  A0_5126:SlideInternal(A1_5127, A0_5126.Properties.Slide.fSpeed, A0_5126.Properties.Slide.fAcceleration, A0_5126.Properties.Slide.fStopTime, A0_5126.Properties.bExactPosition)
end
function Elevator.Sound(A0_5128, A1_5129, A2_5130)
  local L3_5131
  if not A1_5129 or A1_5129 == "" then
    return
  end
  if A2_5130 then
    L3_5131 = A0_5128.soundIds
    if not L3_5131 then
      L3_5131 = {}
      A0_5128.soundIds = L3_5131
    end
  end
  if A2_5130 then
    L3_5131 = A0_5128.soundIds
    L3_5131[A1_5129] = id
  end
end
function Elevator.SoundOff(A0_5132, A1_5133)
  if A0_5132.soundIds and A0_5132.soundIds[A1_5133] then
    A0_5132:StopSound(A0_5132.soundIds[A1_5133])
    A0_5132.soundIds[A1_5133] = nil
  end
end
function Elevator.SetCurrentFloor(A0_5134, A1_5135, A2_5136)
  A0_5134:SlideInternal(A2_5136, 500, 500, 0, 1)
end
function Elevator.SetDestinationFloor(A0_5137, A1_5138, A2_5139)
  A0_5137:Activate(1)
  A0_5137:Slide(A2_5139)
end
function Elevator.Up(A0_5140, A1_5141)
  A1_5141 = A1_5141 or A0_5140.currFloor + 1
  if A0_5140.currFloor == A1_5141 then
    A0_5140:Slide(A0_5140.goalFloor + 1)
  else
    A0_5140:Slide(A1_5141)
  end
end
function Elevator.Down(A0_5142, A1_5143)
  A1_5143 = A1_5143 or A0_5142.currFloor - 1
  if A0_5142.currFloor == A1_5143 then
    A0_5142:Slide(A0_5142.goalFloor - 1)
  else
    A0_5142:Slide(A1_5143)
  end
end
function Elevator.Client.ClSlide(A0_5144, A1_5145, A2_5146)
  if not A0_5144.isServer then
    if not A2_5146 then
      A0_5144:Slide(A1_5145)
    else
      A0_5144.goalFloor = A1_5145
      A0_5144.currFloor = A1_5145
      A0_5144:SetWorldPos(A0_5144.floorpos[A0_5144.goalFloor])
    end
  end
end
function Elevator.Client.ClInitMoving(A0_5147, A1_5148, A2_5149, A3_5150, A4_5151)
  A0_5147.currFloor = A1_5148
  A0_5147.goalFloor = A2_5149
  A0_5147.scp:MoveTo(A0_5147.floorpos[A0_5147.goalFloor], A3_5150, A0_5147.Properties.Slide.fSpeed, A4_5151, A0_5147.Properties.Slide.fStopTime, A0_5147.Properties.bExactPosition)
  A0_5147:Activate(1)
end
Elevator.FlowEvents = {
  Inputs = {
    Up = {
      Elevator.Up,
      "any"
    },
    Down = {
      Elevator.Down,
      "any"
    },
    SetCurrentFloor = {
      Elevator.SetCurrentFloor,
      "int"
    },
    SetDestinationFloor = {
      Elevator.SetDestinationFloor,
      "int"
    }
  },
  Outputs = {
    StartedSlidingUp = "bool",
    StoppedSlidingUp = "bool",
    StartedSlidingDown = "bool",
    StoppedSlidingDown = "bool",
    CurrentFloor = "int",
    DestinationFloor = "int"
  }
}
