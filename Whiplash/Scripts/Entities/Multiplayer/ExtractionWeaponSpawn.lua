local L0_6448, L1_6449
L0_6448 = {}
L1_6449 = {}
L0_6448.Server = L1_6449
L1_6449 = {}
L0_6448.Client = L1_6449
L1_6449 = {}
L1_6449.fileModelOverride = ""
L1_6449.Radius = 6
L0_6448.Properties = L1_6449
L1_6449 = {}
L1_6449.Icon = "Item.bmp"
L1_6449.IconOnTop = 1
L0_6448.Editor = L1_6449
L0_6448.modelSlot = -1
L1_6449 = {}
L0_6448.spawnPointIds = L1_6449
L0_6448.inProximity = false
L0_6448.hasTick = true
L0_6448.open = false
ExtractionWeaponSpawn = L0_6448
L0_6448 = ExtractionWeaponSpawn
L0_6448.DEFAULT_FILE_MODEL = "objects/multiplayer/props/c3mp_gamemode_props/c3mp_powercell/c3mp_powercell.cdf"
L0_6448 = ExtractionWeaponSpawn
function L1_6449(A0_6450)
  local L1_6451, L2_6452, L3_6453
  L1_6451 = Log
  L2_6452 = "ExtractionWeaponSpawn:OnReset"
  L1_6451(L2_6452)
  L1_6451 = A0_6450.Properties
  L1_6451 = L1_6451.Radius
  L1_6451 = L1_6451 / 2
  L2_6452 = {}
  L3_6453 = -L1_6451
  L2_6452.x = L3_6453
  L3_6453 = -L1_6451
  L2_6452.y = L3_6453
  L3_6453 = -L1_6451
  L2_6452.z = L3_6453
  L3_6453 = {}
  L3_6453.x = L1_6451
  L3_6453.y = L1_6451
  L3_6453.z = L1_6451
  A0_6450:SetTriggerBBox(L2_6452, L3_6453)
  A0_6450:SetViewDistRatio(255)
  if System.IsEditor() then
    Log("In editor, activating")
    A0_6450:ActivateSite()
    A0_6450:AddSpawnPoints("spawn")
    A0_6450:AddSpawnPoints("spawnpoint")
    A0_6450:AddSpawnPoints("disruptor")
    Log("Entity=%s, found %d associated spawn points", EntityName(A0_6450), #A0_6450.spawnPointIds)
  end
end
L0_6448.OnReset = L1_6449
L0_6448 = ExtractionWeaponSpawn
function L1_6449(A0_6454, A1_6455)
  local L2_6456, L3_6457
  L2_6456 = 0
  L3_6457 = A0_6454.GetLinkTarget
  L3_6457 = L3_6457(A0_6454, A1_6455, L2_6456)
  while L3_6457 do
    InsertIntoTable(A0_6454.spawnPointIds, L3_6457.id)
    L2_6456 = L2_6456 + 1
    L3_6457 = A0_6454:GetLinkTarget(A1_6455, L2_6456)
  end
end
L0_6448.AddSpawnPoints = L1_6449
L0_6448 = ExtractionWeaponSpawn
function L1_6449(A0_6458)
  local L1_6459
  L1_6459 = A0_6458.DEFAULT_FILE_MODEL
  if A0_6458.Properties.fileModelOverride and A0_6458.Properties.fileModelOverride ~= "" then
    Log("Override file model provided, using model '%s'", A0_6458.Properties.fileModelOverride)
    L1_6459 = A0_6458.Properties.fileModelOverride
  end
  A0_6458.modelSlot = A0_6458:LoadObject(A0_6458.modelSlot, L1_6459)
  A0_6458:Physicalize(A0_6458.modelSlot, PE_STATIC, {mass = 0})
  A0_6458:SetViewDistRatio(255)
  A0_6458:SetFlags(ENTITY_FLAG_ON_RADAR, 0)
end
L0_6448.ActivateSite = L1_6449
L0_6448 = ExtractionWeaponSpawn
function L1_6449(A0_6460)
  A0_6460:DestroyPhysics()
  A0_6460:FreeSlot(A0_6460.modelSlot)
  A0_6460.modelSlot = -1
  A0_6460:SetViewDistRatio(255)
  A0_6460:SetFlags(ENTITY_FLAG_ON_RADAR, 2)
end
L0_6448.DeactivateSite = L1_6449
L0_6448 = ExtractionWeaponSpawn
function L1_6449(A0_6461, A1_6462)
  local L2_6463, L3_6464, L4_6465, L5_6466, L6_6467
  L5_6466 = A0_6461
  L5_6466 = A1_6462
  L2_6463(L3_6464, L4_6465, L5_6466)
  if L2_6463 then
    A0_6461.spawnPointIds = L2_6463
    L2_6463(L3_6464, L4_6465)
    L2_6463(L3_6464, L4_6465)
    L2_6463(L3_6464, L4_6465)
    L5_6466 = A0_6461
    L5_6466 = A0_6461.spawnPointIds
    L5_6466 = #L5_6466
    L2_6463(L3_6464, L4_6465, L5_6466)
    for L5_6466, L6_6467 in L2_6463(L3_6464) do
      g_gameRules.game:ClientSetTeam(A1_6462, L6_6467)
    end
  end
end
L0_6448.OnSetTeam = L1_6449
L0_6448 = ExtractionWeaponSpawn
L0_6448 = L0_6448.Server
function L1_6449(A0_6468)
  Log("ExtractionWeaponSpawn.Server.OnInit")
  if not A0_6468.bInitialized then
    A0_6468:OnReset()
    A0_6468.bInitialized = 1
    A0_6468:SetViewDistRatio(255)
  end
end
L0_6448.OnInit = L1_6449
L0_6448 = ExtractionWeaponSpawn
L0_6448 = L0_6448.Client
function L1_6449(A0_6469)
  Log("ExtractionWeaponSpawn.Client.OnInit")
  if not A0_6469.bInitialized then
    A0_6469:OnReset()
    A0_6469.bInitialized = 1
    A0_6469:SetViewDistRatio(255)
  end
end
L0_6448.OnInit = L1_6449
L0_6448 = ExtractionWeaponSpawn
function L1_6449(A0_6470)
  A0_6470:OnReset()
end
L0_6448.OnPropertyChange = L1_6449
L0_6448 = ExtractionWeaponSpawn
function L1_6449(A0_6471, A1_6472)
  if A0_6471.open ~= A1_6472 then
    A0_6471.open = A1_6472
    if A0_6471.open then
      A0_6471:StartAnimation(0, "machine_open", 0, 0, 1, 0)
    else
      A0_6471:StartAnimation(0, "machine_close", 0, 0, 1, 0)
    end
  end
end
L0_6448.SetOpen = L1_6449
L0_6448 = ExtractionWeaponSpawn
function L1_6449(A0_6473, A1_6474)
  A0_6473.inProximity = A1_6474
  A0_6473:SetOpen(not A0_6473.hasTick or A0_6473.inProximity)
end
L0_6448.InProximity = L1_6449
L0_6448 = ExtractionWeaponSpawn
function L1_6449(A0_6475, A1_6476)
  A0_6475.hasTick = A1_6476
  A0_6475:SetOpen(not A0_6475.hasTick or A0_6475.inProximity)
end
L0_6448.HasTick = L1_6449
