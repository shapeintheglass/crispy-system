DoorPanel = {
  type = "DoorPanel",
  Properties = {
    objModel = "Objects/props/cell_panel/cell_panel.cgf",
    objModelDestroyed = "Objects/props/cell_panel/cell_panel_broken.cgf",
    bDestroyable = 1,
    DestroyedExplosionType = "SmartMineExplosive",
    esDoorPanelState = "Idle",
    bUsableOnlyOnce = 0,
    VisibleFlashDistance = 50,
    ScanSuccessTimeDelay = 0.5,
    ScanFailureTimeDelay = 1.5,
    TacticalInfo = {bScannable = 0, LookupName = ""}
  },
  Editor = {Icon = "mine.bmp"},
  Client = {},
  Server = {}
}
MakeUsable(DoorPanel)
function DoorPanel.OnSave(A0_5180, A1_5181)
  A1_5181.bUsable = A0_5180.bUsable
end
function DoorPanel.OnLoad(A0_5182, A1_5183)
  A0_5182:OnReset()
  A0_5182.bUsable = A1_5183.bUsable
end
function DoorPanel.Client.OnInit(A0_5184)
  A0_5184:OnReset()
end
function DoorPanel.OnReset(A0_5185)
  local L1_5186
  L1_5186 = A0_5185.Properties
  L1_5186 = L1_5186.bUsable
  A0_5185.bUsable = L1_5186
end
function DoorPanel.OnUsed(A0_5187, A1_5188, A2_5189)
end
function DoorPanel.IsUsable(A0_5190, A1_5191)
  if A0_5190.bUsable == 1 then
    return 2
  end
  return 0
end
function DoorPanel.OnPropertyChange(A0_5192)
  local L1_5193
end
function DoorPanel.Server.OnHit(A0_5194, A1_5195)
  if A0_5194.Properties.bDestroyable == 1 and A1_5195.type ~= "collision" and A1_5195.damage > 0 then
    Game.SendEventToGameObject(A0_5194.id, "Destroyed")
  end
end
function DoorPanel.OnStateChange(A0_5196, A1_5197)
  A0_5196:ActivateOutput(A1_5197, true)
end
function DoorPanel.Event_EnableUsable(A0_5198)
  local L1_5199
  A0_5198.bUsable = 1
end
function DoorPanel.Event_DisableUsable(A0_5200)
  local L1_5201
  A0_5200.bUsable = 0
end
function DoorPanel.Event_Idle(A0_5202)
  Game.SendEventToGameObject(A0_5202.id, "Idle")
end
function DoorPanel.Event_Scanning(A0_5203)
  A0_5203:OnCustomActionStart()
end
function DoorPanel.Event_ScanSuccess(A0_5204)
  A0_5204:OnCustomActionSucceed()
end
function DoorPanel.Event_ScanComplete(A0_5205)
  if A0_5205.Properties.bUsableOnlyOnce == 1 then
    A0_5205.bUsable = 0
  end
  Game.SendEventToGameObject(A0_5205.id, "ScanComplete")
end
function DoorPanel.Event_ScanFailure(A0_5206)
  Game.SendEventToGameObject(A0_5206.id, "ScanFailure")
end
function DoorPanel.Event_Destroyed(A0_5207)
  if A0_5207.Properties.bDestroyable == 1 then
    Game.SendEventToGameObject(A0_5207.id, "Destroyed")
  end
end
function DoorPanel.Event_Hide(A0_5208)
  A0_5208:Hide(1)
end
function DoorPanel.Event_Unhide(A0_5209)
  A0_5209:Hide(0)
end
DoorPanel.FlowEvents = {
  Inputs = {
    Idle = {
      DoorPanel.Event_Idle,
      "bool"
    },
    Scanning = {
      DoorPanel.Event_Scanning,
      "bool"
    },
    ScanSuccess = {
      DoorPanel.Event_ScanSuccess,
      "bool"
    },
    ScanComplete = {
      DoorPanel.Event_ScanComplete,
      "bool"
    },
    ScanFailure = {
      DoorPanel.Event_ScanFailure,
      "bool"
    },
    Destroyed = {
      DoorPanel.Event_Destroyed,
      "bool"
    },
    Hide = {
      DoorPanel.Event_Hide,
      "bool"
    },
    Unhide = {
      DoorPanel.Event_Unhide,
      "bool"
    }
  },
  Outputs = {
    Idle = "bool",
    Scanning = "bool",
    ScanSuccess = "bool",
    ScanComplete = "bool",
    ScanFailure = "bool",
    Destroyed = "bool"
  }
}
