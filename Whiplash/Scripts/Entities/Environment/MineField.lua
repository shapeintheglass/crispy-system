MineField = {
  type = "MineField",
  Properties = {
    TacticalInfo = {bScannable = 1, LookupName = ""}
  },
  Editor = {Icon = "mine.bmp"},
  Client = {},
  Server = {}
}
MakeUsable(MineField)
function MineField.OnSave(A0_5218, A1_5219)
  A1_5219.bUsable = A0_5218.bUsable
end
function MineField.OnLoad(A0_5220, A1_5221)
  A0_5220:OnReset()
  A0_5220.bUsable = A1_5221.bUsable
end
function MineField.Client.OnInit(A0_5222)
  A0_5222:OnReset()
end
function MineField.OnReset(A0_5223)
  local L1_5224
  L1_5224 = A0_5223.Properties
  L1_5224 = L1_5224.bUsable
  A0_5223.bUsable = L1_5224
end
function MineField.OnUsed(A0_5225, A1_5226, A2_5227)
end
function MineField.IsUsable(A0_5228, A1_5229)
  if A0_5228.bUsable == 1 then
    return 2
  end
  return 0
end
function MineField.OnPropertyChange(A0_5230)
  local L1_5231
end
function MineField.HasBeenScanned(A0_5232)
  Game.SendEventToGameObject(A0_5232.id, "OnScanned")
  A0_5232:ActivateOutput("Scanned", true)
end
function MineField.Event_SetScanned(A0_5233)
  A0_5233:HasBeenScanned()
end
function MineField.Event_Destroy(A0_5234)
  Game.SendEventToGameObject(A0_5234.id, "OnDestroy")
  A0_5234:ActivateOutput("Destroyed", true)
end
MineField.FlowEvents = {
  Inputs = {
    SetScanned = {
      MineField.Event_SetScanned,
      "bool"
    },
    SetDestroyed = {
      MineField.Event_Destroy,
      "bool"
    }
  },
  Outputs = {Scanned = "bool", Destroyed = "bool"}
}
