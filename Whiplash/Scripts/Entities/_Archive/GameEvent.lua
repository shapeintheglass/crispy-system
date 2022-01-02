local L0_644, L1_645, L2_646
L0_644 = {}
L1_645 = {}
L1_645.nId = 0
L1_645.nAllowedDeaths = 3
L1_645.sUniqueName = ""
L1_645.bRespawnAtTagpoint = 0
L0_644.Properties = L1_645
L1_645 = {}
L1_645.Model = "Objects/Editor/Anchor.cgf"
L0_644.Editor = L1_645
GameEvent = L0_644
L0_644 = GameEvent
function L1_645(A0_647)
  local L1_648
end
L0_644.OnInit = L1_645
L0_644 = GameEvent
function L1_645(A0_649)
  local L1_650
end
L0_644.OnShutDown = L1_645
L0_644 = GameEvent
function L1_645(A0_651, A1_652)
  A0_651:EnableSave(nil)
  System.Log("Checkpoint " .. A0_651.Properties.nId .. " reached")
  A0_651.bSaveNow = nil
  A0_651:SetTimer(100)
end
L0_644.Event_Save = L1_645
L0_644 = GameEvent
function L1_645(A0_653)
  if _localplayer.timetodie then
    return
  end
  if A0_653.bSaveNow then
    A0_653.bSaveNow = nil
    if A0_653.Properties.bRespawnAtTagpoint == 1 and _localplayer.theVehicle == nil then
      _LastCheckPPos = new(A0_653:GetPos())
      _LastCheckPAngles = new(A0_653:GetAngles())
    else
      _LastCheckPPos = new(_localplayer:GetPos())
      _LastCheckPAngles = new(_localplayer:GetAngles(1))
    end
    A0_653:KillTimer()
    AI:Checkpoint()
    if A0_653.Properties.sUniqueName ~= "" then
      if ALLOWED_DEATHS and ALLOWED_DEATHS[A0_653.Properties.sUniqueName] then
        AI:SetAllowedDeathCount(ALLOWED_DEATHS[A0_653.Properties.sUniqueName].deaths)
      end
    else
      AI:SetAllowedDeathCount(A0_653.Properties.nAllowedDeaths)
    end
    Game:TouchCheckPoint(A0_653.Properties.nId, _LastCheckPPos, _LastCheckPAngles)
    if Game.OnAfterSave then
      Game:OnAfterSave()
    end
  else
    if Game.OnBeforeSave then
      Game:OnBeforeSave()
    end
    A0_653.bSaveNow = 1
    A0_653:SetTimer(1)
  end
end
L0_644.OnTimer = L1_645
L0_644 = GameEvent
L1_645 = {}
L2_646 = {}
L2_646.Save = {
  GameEvent.Event_Save,
  "bool"
}
L1_645.Inputs = L2_646
L2_646 = {}
L2_646.Save = "bool"
L1_645.Outputs = L2_646
L0_644.FlowEvents = L1_645
