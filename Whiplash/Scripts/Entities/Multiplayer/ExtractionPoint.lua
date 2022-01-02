local L0_6424, L1_6425
L0_6424 = {}
L1_6425 = {}
L0_6424.Client = L1_6425
L1_6425 = {}
L0_6424.Server = L1_6425
L1_6425 = {}
L1_6425.fileModelOverride = ""
L1_6425.Radius = 2
L1_6425.OpenRange = 6
L0_6424.Properties = L1_6425
L1_6425 = {}
L1_6425.Icon = "Item.bmp"
L1_6425.IconOnTop = 1
L0_6424.Editor = L1_6425
L0_6424.modelSlot = -1
L1_6425 = {}
L0_6424.spawnPointIds = L1_6425
L0_6424.open = false
ExtractionPoint = L0_6424
L0_6424 = ExtractionPoint
L0_6424.DEFAULT_FILE_MODEL = "objects/multiplayer/props/c3mp_gamemode_props/c3mp_powercell/c3mp_powercell.cdf"
L0_6424 = ExtractionPoint
L0_6424 = L0_6424.Server
function L1_6425(A0_6426)
  Log("ExtractionPoint.Server.OnInit")
  if not A0_6426.bInitialized then
    A0_6426:OnReset()
    A0_6426.bInitialized = 1
    A0_6426:SetViewDistRatio(255)
  end
  A0_6426.inside = {}
end
L0_6424.OnInit = L1_6425
L0_6424 = ExtractionPoint
L0_6424 = L0_6424.Client
function L1_6425(A0_6427)
  Log("ExtractionPoint.Client.OnInit")
  if not A0_6427.bInitialized then
    A0_6427:OnReset()
    A0_6427.bInitialized = 1
    A0_6427:SetViewDistRatio(255)
  end
  A0_6427.inside = {}
end
L0_6424.OnInit = L1_6425
L0_6424 = ExtractionPoint
function L1_6425(A0_6428)
  local L1_6429, L2_6430, L3_6431
  L1_6429 = Log
  L2_6430 = "ExtractionPoint.OnReset"
  L1_6429(L2_6430)
  L1_6429 = A0_6428.Properties
  L1_6429 = L1_6429.Radius
  L1_6429 = L1_6429 / 2
  L2_6430 = {}
  L3_6431 = -L1_6429
  L2_6430.x = L3_6431
  L3_6431 = -L1_6429
  L2_6430.y = L3_6431
  L3_6431 = -L1_6429
  L2_6430.z = L3_6431
  L3_6431 = {}
  L3_6431.x = L1_6429
  L3_6431.y = L1_6429
  L3_6431.z = L1_6429
  A0_6428:SetTriggerBBox(L2_6430, L3_6431)
  A0_6428:SetViewDistRatio(255)
  if System.IsEditor() then
    Log("In editor, activating")
    A0_6428:ActivateSite()
    A0_6428:AddSpawnPoints("spawn")
    A0_6428:AddSpawnPoints("spawnpoint")
    A0_6428:AddSpawnPoints("disruptor")
    Log("Entity=%s, found %d associated spawn points", EntityName(A0_6428), #A0_6428.spawnPointIds)
  end
end
L0_6424.OnReset = L1_6425
L0_6424 = ExtractionPoint
function L1_6425(A0_6432, A1_6433)
  local L2_6434, L3_6435
  L2_6434 = 0
  L3_6435 = A0_6432.GetLinkTarget
  L3_6435 = L3_6435(A0_6432, A1_6433, L2_6434)
  while L3_6435 do
    InsertIntoTable(A0_6432.spawnPointIds, L3_6435.id)
    L2_6434 = L2_6434 + 1
    L3_6435 = A0_6432:GetLinkTarget(A1_6433, L2_6434)
  end
end
L0_6424.AddSpawnPoints = L1_6425
L0_6424 = ExtractionPoint
function L1_6425(A0_6436)
  local L1_6437
  L1_6437 = A0_6436.DEFAULT_FILE_MODEL
  if A0_6436.Properties.fileModelOverride and A0_6436.Properties.fileModelOverride ~= "" then
    Log("Override file model provided, using model '%s'", A0_6436.Properties.fileModelOverride)
    L1_6437 = A0_6436.Properties.fileModelOverride
  end
  A0_6436.modelSlot = A0_6436:LoadObject(A0_6436.modelSlot, L1_6437)
  A0_6436:Physicalize(A0_6436.modelSlot, PE_STATIC, {mass = 0})
  A0_6436:SetViewDistRatio(255)
  A0_6436:SetFlags(ENTITY_FLAG_ON_RADAR, 0)
end
L0_6424.ActivateSite = L1_6425
L0_6424 = ExtractionPoint
function L1_6425(A0_6438)
  A0_6438:DestroyPhysics()
  A0_6438:FreeSlot(A0_6438.modelSlot)
  A0_6438.modelSlot = -1
  A0_6438:SetViewDistRatio(255)
  A0_6438:SetFlags(ENTITY_FLAG_ON_RADAR, 2)
end
L0_6424.DeactivateSite = L1_6425
L0_6424 = ExtractionPoint
function L1_6425(A0_6439, A1_6440)
  local L2_6441, L3_6442, L4_6443, L5_6444, L6_6445
  L5_6444 = A0_6439
  L5_6444 = A1_6440
  L2_6441(L3_6442, L4_6443, L5_6444)
  if L2_6441 then
    A0_6439.spawnPointIds = L2_6441
    L2_6441(L3_6442, L4_6443)
    L2_6441(L3_6442, L4_6443)
    L2_6441(L3_6442, L4_6443)
    L5_6444 = A0_6439
    L5_6444 = A0_6439.spawnPointIds
    L5_6444 = #L5_6444
    L2_6441(L3_6442, L4_6443, L5_6444)
    for L5_6444, L6_6445 in L2_6441(L3_6442) do
      g_gameRules.game:ClientSetTeam(A1_6440, L6_6445)
    end
  end
end
L0_6424.OnSetTeam = L1_6425
L0_6424 = ExtractionPoint
function L1_6425(A0_6446, A1_6447)
  if A0_6446.open ~= A1_6447 then
    A0_6446.open = A1_6447
    if A0_6446.open then
      A0_6446:StartAnimation(0, "tick_device_open", 0, 0, 1, 0)
    else
      A0_6446:StartAnimation(0, "tick_device_close", 0, 0, 1, 0)
    end
  end
end
L0_6424.SetOpen = L1_6425
