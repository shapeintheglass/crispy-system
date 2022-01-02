local L0_7086, L1_7087, L2_7088, L3_7089
L0_7086 = {}
L1_7087 = {}
L1_7087.objPlayerModel = ""
L1_7087.objArmsModel = ""
L1_7087.bPreCacheModels = 0
L0_7086.Properties = L1_7087
L1_7087 = {}
L1_7087.Model = "editor/objects/box.cgf"
L0_7086.Editor = L1_7087
PlayerModelChanger = L0_7086
L0_7086 = PlayerModelChanger
function L1_7087(A0_7090, A1_7091)
  A0_7090.changePlayerModel = A1_7091.changePlayerModel
end
L0_7086.OnLoad = L1_7087
L0_7086 = PlayerModelChanger
function L1_7087(A0_7092, A1_7093)
  A1_7093.changePlayerModel = A0_7092.changePlayerModel
end
L0_7086.OnSave = L1_7087
L0_7086 = PlayerModelChanger
function L1_7087(A0_7094)
  A0_7094:Reset()
end
L0_7086.OnPropertyChange = L1_7087
L0_7086 = PlayerModelChanger
function L1_7087(A0_7095)
  A0_7095:Reset()
end
L0_7086.OnReset = L1_7087
L0_7086 = PlayerModelChanger
function L1_7087(A0_7096)
  A0_7096:Reset()
end
L0_7086.OnSpawn = L1_7087
L0_7086 = PlayerModelChanger
function L1_7087(A0_7097)
  local L1_7098
end
L0_7086.OnDestroy = L1_7087
L0_7086 = PlayerModelChanger
function L1_7087(A0_7099)
  local L1_7100, L2_7101
  L2_7101 = A0_7099
  L1_7100 = A0_7099.Activate
  L1_7100(L2_7101, 0)
  L1_7100 = A0_7099.Properties
  L1_7100 = L1_7100.bPreCacheModels
  if L1_7100 then
    L1_7100 = A0_7099.Properties
    L1_7100 = L1_7100.objPlayerModel
    L2_7101 = A0_7099.Properties
    L2_7101 = L2_7101.objArmsModel
    if L1_7100 and 0 < string.len(L1_7100) then
      A0_7099:LoadCharacter(0, A0_7099.Properties.objPlayerModel)
      A0_7099:DrawSlot(0, 0)
      A0_7099.changePlayerModel = true
    end
    if L2_7101 and 0 < string.len(L2_7101) then
      A0_7099:LoadCharacter(1, A0_7099.Properties.objArmsModel)
      A0_7099:DrawSlot(1, 0)
      A0_7099.changeArmsModel = true
    end
  end
end
L0_7086.Reset = L1_7087
L0_7086 = PlayerModelChanger
function L1_7087(A0_7102)
  local L1_7103, L2_7104
  L1_7103 = g_localActor
  if L1_7103 then
    L1_7103, L2_7104 = nil, nil
    if A0_7102.changePlayerModel then
      L1_7103 = A0_7102.Properties.objPlayerModel
    end
    if A0_7102.changeArmsModel then
      L2_7104 = A0_7102.Properties.objArmsModel
    end
    g_localActor:SetModel(L1_7103, L2_7104)
  end
end
L0_7086.ChangeModel = L1_7087
L0_7086 = PlayerModelChanger
function L1_7087(A0_7105, A1_7106)
  A0_7105:ChangeModel()
  BroadcastEvent(A0_7105, "ChangeModel")
end
L0_7086.Event_ChangePlayerModel = L1_7087
L0_7086 = PlayerModelChanger
function L1_7087(A0_7107, A1_7108)
  A0_7107:Reset()
  BroadcastEvent(A0_7107, "Reset")
end
L0_7086.Event_Reset = L1_7087
L0_7086 = PlayerModelChanger
L1_7087 = {}
L2_7088 = {}
L3_7089 = {
  PlayerModelChanger.Event_ChangePlayerModel,
  "bool"
}
L2_7088.ChangePlayerModel = L3_7089
L3_7089 = {
  PlayerModelChanger.Event_Reset,
  "bool"
}
L2_7088.Reset = L3_7089
L1_7087.Inputs = L2_7088
L2_7088 = {}
L2_7088.ChangePlayerModel = "bool"
L2_7088.Reset = "bool"
L1_7087.Outputs = L2_7088
L0_7086.FlowEvents = L1_7087
