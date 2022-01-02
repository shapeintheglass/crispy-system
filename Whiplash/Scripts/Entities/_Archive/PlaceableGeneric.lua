local L0_850, L1_851, L2_852, L3_853
L0_850 = {}
L0_850.type = "Trigger"
L1_851 = {}
L1_851.DimX = 5
L1_851.DimY = 5
L1_851.DimZ = 5
L1_851.ScriptCommand = ""
L1_851.PlaySequence = ""
L1_851.dummyModel = "Objects/Pickups/explosive/explosive_dummy.cgf"
L1_851.fileModel = "objects/pickups/explosive/explosive.cgf"
L1_851.object_ModelDestroyed = ""
L1_851.bInitiallyVisible = 1
L1_851.bAutomaticPlaceable = 1
L2_852 = noinstruction
L1_851.TextInstruction = L2_852
L1_851.PlaceableObject = ""
L1_851.bActive = 1
L0_850.Properties = L1_851
L1_851 = {}
L1_851.Model = "Objects/Editor/T.cgf"
L1_851.ShowBounds = 1
L0_850.Editor = L1_851
PlaceableGeneric = L0_850
L0_850 = PlaceableGeneric
function L1_851(A0_854)
  if A0_854.Properties.dummyModel ~= "" then
    A0_854:LoadObject(A0_854.Properties.dummyModel, 0, 1)
  end
  if A0_854.Properties.fileModel ~= "" then
    A0_854:LoadObject(A0_854.Properties.fileModel, 1, 1)
  end
  if A0_854.Properties.object_ModelDestroyed ~= "" then
    A0_854:LoadObject(A0_854.Properties.object_ModelDestroyed, 2, 1)
  end
end
L0_850.LoadGeometry = L1_851
L0_850 = PlaceableGeneric
function L1_851(A0_855)
  A0_855:RegisterState("placeable")
  A0_855:RegisterState("notarmed")
  A0_855:RegisterState("armed")
  A0_855:RegisterState("detonated")
end
L0_850.RegisterStates = L1_851
L0_850 = PlaceableGeneric
function L1_851(A0_856)
  local L1_857, L2_858
  L2_858 = A0_856
  L1_857 = A0_856.Activate
  L1_857(L2_858, 0)
  L2_858 = A0_856
  L1_857 = A0_856.TrackColliders
  L1_857(L2_858, 1)
  L1_857 = {}
  L2_858 = A0_856.Properties
  L2_858 = L2_858.DimX
  L2_858 = -L2_858
  L2_858 = L2_858 / 2
  L1_857.x = L2_858
  L2_858 = A0_856.Properties
  L2_858 = L2_858.DimY
  L2_858 = -L2_858
  L2_858 = L2_858 / 2
  L1_857.y = L2_858
  L2_858 = A0_856.Properties
  L2_858 = L2_858.DimZ
  L2_858 = -L2_858
  L2_858 = L2_858 / 2
  L1_857.z = L2_858
  L2_858 = {}
  L2_858.x = A0_856.Properties.DimX / 2
  L2_858.y = A0_856.Properties.DimY / 2
  L2_858.z = A0_856.Properties.DimZ / 2
  A0_856:SetBBox(L1_857, L2_858)
  if A0_856.Properties.bInitiallyVisible == 1 then
    A0_856:DrawObject(0, 1)
  else
    A0_856:DrawObject(0, 0)
  end
  A0_856:GotoState("placeable")
  A0_856.bActive = A0_856.Properties.bActive
end
L0_850.OnReset = L1_851
L0_850 = PlaceableGeneric
function L1_851(A0_859)
  A0_859:OnReset()
end
L0_850.OnMultiplayerReset = L1_851
L0_850 = PlaceableGeneric
function L1_851(A0_860)
  A0_860:OnReset()
end
L0_850.OnPropertyChange = L1_851
L0_850 = PlaceableGeneric
function L1_851(A0_861, A1_862, A2_863)
  if A1_862 and Server:GetServerSlotByEntityId(A1_862) then
    Server:GetServerSlotByEntityId(A1_862):SendText(A2_863, 0.9)
  end
end
L0_850.PrintMessage = L1_851
L0_850 = PlaceableGeneric
L1_851 = {}
function L2_852(A0_864)
  A0_864:LoadGeometry()
  A0_864:RegisterStates()
  A0_864:OnReset()
  A0_864:NetPresent(nil)
end
L1_851.OnInit = L2_852
L2_852 = {}
function L3_853(A0_865)
  A0_865:DestroyPhysics()
end
L2_852.OnBeginState = L3_853
function L3_853(A0_866, A1_867)
  if GameRules:IsInteractionPossible(A1_867, A0_866) and A1_867.type == "Player" and not A1_867:IsDead() then
    A0_866.Who = A1_867
    A0_866:SetTimer(1)
  end
end
L2_852.OnEnterArea = L3_853
function L3_853(A0_868, A1_869)
  if A1_869 == A0_868.Who then
    A0_868.Who = nil
  end
end
L2_852.OnLeaveArea = L3_853
function L3_853(A0_870, A1_871)
  if A0_870.Who then
    A0_870:Collide(A0_870.Who)
    A0_870:SetTimer(1)
  end
end
L2_852.OnTimer = L3_853
L1_851.placeable = L2_852
L2_852 = {}
function L3_853(A0_872)
  A0_872:DestroyPhysics()
end
L2_852.OnBeginState = L3_853
L1_851.notarmed = L2_852
L2_852 = {}
function L3_853(A0_873)
  A0_873:DestroyPhysics()
end
L2_852.OnBeginState = L3_853
function L3_853(A0_874)
  A0_874:GotoState("detonated")
  BroadcastEvent(A0_874, "Explode")
end
L2_852.OnTimer = L3_853
L1_851.armed = L2_852
L2_852 = {}
function L3_853(A0_875)
  A0_875:CreateStaticEntity(10, 100)
end
L2_852.OnBeginState = L3_853
L1_851.detonated = L2_852
L0_850.Server = L1_851
L0_850 = PlaceableGeneric
L1_851 = {}
function L2_852(A0_876)
  A0_876:LoadGeometry()
  A0_876:RegisterStates()
  A0_876:OnReset()
end
L1_851.OnInit = L2_852
L2_852 = {}
function L3_853(A0_877)
  A0_877:DrawObject(0, 1)
  A0_877:DrawObject(1, 0)
  A0_877:DrawObject(2, 0)
  A0_877:DestroyPhysics()
end
L2_852.OnBeginState = L3_853
L1_851.placeable = L2_852
L2_852 = {}
function L3_853(A0_878)
  A0_878:DrawObject(0, 0)
  A0_878:DrawObject(1, 1)
  A0_878:DrawObject(2, 0)
  A0_878:DestroyPhysics()
end
L2_852.OnBeginState = L3_853
L1_851.notarmed = L2_852
L2_852 = {}
function L3_853(A0_879)
  A0_879:DrawObject(0, 0)
  A0_879:DrawObject(1, 1)
  A0_879:DrawObject(2, 0)
  A0_879:DestroyPhysics()
end
L2_852.OnBeginState = L3_853
L1_851.armed = L2_852
L2_852 = {}
function L3_853(A0_880)
  A0_880:Explode()
  A0_880:DrawObject(0, 0)
  A0_880:DrawObject(1, 0)
  A0_880:DrawObject(2, 1)
  A0_880:CreateStaticEntity(10, 100)
end
L2_852.OnBeginState = L3_853
L1_851.detonated = L2_852
L0_850.Client = L1_851
L0_850 = PlaceableGeneric
function L1_851(A0_881, A1_882)
  if A0_881.bActive == 0 then
    return
  end
  if A1_882.type ~= "Player" then
    return
  end
  if A1_882.objects[A0_881.Properties.PlaceableObject] == 1 then
    System.LogToConsole("object found:" .. A0_881.Properties.PlaceableObject)
    if A0_881.Properties.bAutomaticPlaceable ~= 1 and not A1_882.cnt.use_pressed then
      Hud.label = A0_881.Properties.TextInstruction
      return
    end
    A1_882.objects[A0_881.Properties.PlaceableObject] = 0
    A0_881.target = A1_882.id
    A0_881:GotoState("armed")
    A0_881:Event_ExplosivePlaced()
  end
end
L0_850.Collide = L1_851
L0_850 = PlaceableGeneric
function L1_851(A0_883, A1_884)
  BroadcastEvent(A0_883, "Activate")
  A0_883.bActive = 1
end
L0_850.Event_Activate = L1_851
L0_850 = PlaceableGeneric
function L1_851(A0_885, A1_886)
  BroadcastEvent(A0_885, "ExplosivePlaced")
end
L0_850.Event_ExplosivePlaced = L1_851
L0_850 = PlaceableGeneric
function L1_851(A0_887, A1_888)
  BroadcastEvent(A0_887, "Explode")
  A0_887:Explode()
end
L0_850.Event_Explode = L1_851
L0_850 = PlaceableGeneric
function L1_851(A0_889, A1_890)
  A0_889:DrawObject(0, 0)
end
L0_850.Event_Hide = L1_851
L0_850 = PlaceableGeneric
function L1_851(A0_891, A1_892)
  A0_891:DrawObject(0, 1)
end
L0_850.Event_Show = L1_851
L0_850 = PlaceableGeneric
function L1_851(A0_893)
  if A0_893.Properties.ScriptCommand and A0_893.Properties.ScriptCommand ~= "" then
    dostring(A0_893.Properties.ScriptCommand)
  end
  if A0_893.Properties.PlaySequence ~= "" then
    Movie.PlaySequence(A0_893.Properties.PlaySequence)
  end
end
L0_850.Explode = L1_851
L0_850 = PlaceableGeneric
L1_851 = {}
L2_852 = {}
L3_853 = {
  PlaceableGeneric.Event_Activate,
  "bool"
}
L2_852.Activate = L3_853
L3_853 = {
  PlaceableGeneric.Event_Explode,
  "bool"
}
L2_852.Explode = L3_853
L3_853 = {
  PlaceableGeneric.Event_ExplosivePlaced,
  "bool"
}
L2_852.ExplosivePlaced = L3_853
L3_853 = {
  PlaceableGeneric.Event_Hide,
  "bool"
}
L2_852.Hide = L3_853
L3_853 = {
  PlaceableGeneric.Event_Show,
  "bool"
}
L2_852.Show = L3_853
L1_851.Inputs = L2_852
L2_852 = {}
L2_852.Activate = "bool"
L2_852.Explode = "bool"
L2_852.ExplosivePlaced = "bool"
L2_852.Hide = "bool"
L2_852.Show = "bool"
L1_851.Outputs = L2_852
L0_850.FlowEvents = L1_851
