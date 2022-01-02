local L0_9410, L1_9411, L2_9412, L3_9413, L4_9414, L5_9415, L6_9416, L7_9417
L0_9410(L1_9411)
L0_9410(L1_9411)
VEHICLE_SCRIPT_TIMER = L0_9410
AISOUND_TIMER = L0_9410
AISOUND_TIMEOUT = L0_9410
for L3_9413, L4_9414 in L0_9410(L1_9411) do
  L5_9415 = {}
  L6_9416 = {}
  L6_9416.bDisableEngine = 0
  L6_9416.Paint = ""
  L6_9416.Modification = ""
  L6_9416.soclasses_SmartObjectClass = ""
  L6_9416.bAutoGenAIHidePts = 0
  L6_9416.teamName = ""
  L6_9416.esNavigationType = "VehicleMedium"
  L6_9416.bSyncPhysics = 1
  L5_9415.Properties = L6_9416
  L6_9416 = {}
  L6_9416.bProvideAICover = 1
  L5_9415.PropertiesInstance = L6_9416
  L6_9416 = {}
  L6_9416.Icon = "Vehicle.bmp"
  L6_9416.IconOnTop = 1
  L5_9415.Editor = L6_9416
  L6_9416 = {}
  L5_9415.Client = L6_9416
  L6_9416 = {}
  L5_9415.Server = L6_9416
  L6_9416 = AddHeavyObjectProperty
  L7_9417 = L5_9415
  L6_9416(L7_9417)
  L6_9416 = MakeAICoverEntity
  L7_9417 = L5_9415
  L6_9416(L7_9417)
  L6_9416 = SetupCollisionFiltering
  L7_9417 = L5_9415
  L6_9416(L7_9417)
  L6_9416 = Vehicle
  L6_9416 = L6_9416.GetOptionalScript
  L7_9417 = L4_9414
  L6_9416 = L6_9416(L7_9417)
  if L6_9416 then
    L7_9417 = Script
    L7_9417 = L7_9417.ReloadScript
    L7_9417(L6_9416)
    L7_9417 = _G
    L7_9417 = L7_9417[L4_9414]
    if L7_9417 then
      L7_9417 = mergef
      L7_9417(L5_9415, _G[L4_9414], 1)
    end
  end
  function L7_9417(A0_9418)
    mergef(A0_9418, VehicleBase, 1)
    A0_9418:SpawnVehicleBase()
  end
  L5_9415.OnSpawn = L7_9417
  L7_9417 = L5_9415.Server
  function L7_9417.OnShutDown(A0_9419)
    if g_gameRules then
      g_gameRules.game:RemoveSpawnGroup(A0_9419.id)
    end
  end
  function L7_9417(A0_9420)
    local L1_9421
    L1_9421 = A0_9420.ResetVehicleBase
    L1_9421(A0_9420)
    L1_9421 = CryAction
    L1_9421 = L1_9421.IsServer
    L1_9421 = L1_9421()
    if L1_9421 then
      L1_9421 = g_gameRules
      if L1_9421 then
        L1_9421 = g_gameRules
        L1_9421 = L1_9421.game
        L1_9421 = L1_9421.GetTeamId
        L1_9421 = L1_9421(L1_9421, A0_9420.Properties.teamName)
        if L1_9421 and L1_9421 ~= 0 then
          g_gameRules.game:SetTeam(L1_9421, A0_9420.id)
        else
          g_gameRules.game:SetTeam(0, A0_9420.id)
        end
      end
    end
  end
  L5_9415.OnReset = L7_9417
  function L7_9417(A0_9422, A1_9423)
    if g_gameRules and g_gameRules.OnVehicleUnlocked then
      g_gameRules.OnVehicleUnlocked(g_gameRules, A0_9422.id, A1_9423)
    end
  end
  L5_9415.OnUnlocked = L7_9417
  function L7_9417(A0_9424)
    if A0_9424.OnVehicleDestroyedAI then
      A0_9424:OnVehicleDestroyedAI()
    end
    BroadcastEvent(A0_9424, "Destroy")
  end
  L5_9415.OnVehicleDestroyed = L7_9417
  function L7_9417(A0_9425)
    local L1_9426, L2_9427
    L1_9426 = A0_9425.Properties
    if L1_9426 then
      L1_9426 = A0_9425.Properties
      L2_9427 = {}
      L2_9427.nTimer = 30
      L2_9427.bUnique = 0
      L2_9427.bRespawn = 0
      L1_9426.Respawn = L2_9427
    end
  end
  MakeRespawnable = L7_9417
  L7_9417 = L5_9415.Client
  function L7_9417.OnTimer(A0_9428, A1_9429, A2_9430)
    if A1_9429 == AISOUND_TIMER and A0_9428.AISoundRadius and A0_9428:HasDriver() then
      A0_9428:SetTimer(AISOUND_TIMER, A2_9430)
      AI.SoundEvent(A0_9428:GetWorldPos(A0_9428.State.pos), A0_9428.AISoundRadius, AISOUND_MOVEMENT_LOUD, A0_9428.id)
    end
  end
  L7_9417 = L5_9415.Server
  function L7_9417.OnEnterArea(A0_9431, A1_9432, A2_9433)
    if A0_9431.OnEnterArea then
      A0_9431.OnEnterArea(A0_9431, A1_9432, A2_9433)
    end
  end
  L7_9417 = L5_9415.Server
  function L7_9417.OnLeaveArea(A0_9434, A1_9435, A2_9436)
    if A0_9434.OnLeaveArea then
      A0_9434.OnLeaveArea(A0_9434, A1_9435, A2_9436)
    end
  end
  function L7_9417(A0_9437, A1_9438)
    A0_9437:ActivateOutput("OnPassengerEnter", A1_9438)
  end
  L5_9415.OnPassengerEnter = L7_9417
  function L7_9417(A0_9439, A1_9440)
    A0_9439:ActivateOutput("OnPassengerExit", A1_9440)
  end
  L5_9415.OnPassengerExit = L7_9417
  function L7_9417(A0_9441)
    A0_9441:Hide(0)
    BroadcastEvent(A0_9441, "Enable")
  end
  L5_9415.Event_Enable = L7_9417
  function L7_9417(A0_9442)
    A0_9442:Hide(1)
    BroadcastEvent(A0_9442, "Disable")
  end
  L5_9415.Event_Disable = L7_9417
  function L7_9417(A0_9443)
    A0_9443.vehicle:DisableEngine(0)
    BroadcastEvent(A0_9443, "EnableEngine")
  end
  L5_9415.Event_EnableEngine = L7_9417
  function L7_9417(A0_9444)
    A0_9444.vehicle:DisableEngine(1)
    BroadcastEvent(A0_9444, "DisableEngine")
  end
  L5_9415.Event_DisableEngine = L7_9417
  function L7_9417(A0_9445)
    A0_9445.vehicle:EnableMovement(1)
    BroadcastEvent(A0_9445, "EnableMovement")
  end
  L5_9415.Event_EnableMovement = L7_9417
  function L7_9417(A0_9446)
    A0_9446.vehicle:EnableMovement(0)
    BroadcastEvent(A0_9446, "DisableMovement")
  end
  L5_9415.Event_DisableMovement = L7_9417
  L7_9417 = MakeRespawnable
  L7_9417(L5_9415)
  L7_9417 = L5_9415.Properties
  L7_9417 = L7_9417.Respawn
  L7_9417.bAbandon = 1
  L7_9417 = L5_9415.Properties
  L7_9417 = L7_9417.Respawn
  L7_9417.nAbandonTimer = 90
  L7_9417 = {}
  L7_9417.Inputs = {
    Enable = {
      L5_9415.Event_Enable,
      "bool"
    },
    Disable = {
      L5_9415.Event_Disable,
      "bool"
    },
    EnableEngine = {
      L5_9415.Event_EnableEngine,
      "bool"
    },
    DisableEngine = {
      L5_9415.Event_DisableEngine,
      "bool"
    },
    EnableMovement = {
      L5_9415.Event_EnableMovement,
      "bool"
    },
    DisableMovement = {
      L5_9415.Event_DisableMovement,
      "bool"
    }
  }
  L7_9417.Outputs = {
    Enable = "bool",
    Disable = "bool",
    EnableEngine = "bool",
    DisableEngine = "bool",
    EnableMovement = "bool",
    DisableMovement = "bool",
    Destroy = "bool",
    OnPassengerEnter = "entity",
    OnPassengerExit = "entity"
  }
  if not L5_9415.FlowEvents then
    L5_9415.FlowEvents = L7_9417
  else
    mergef(L5_9415.FlowEvents, L7_9417, 1)
  end
  _G[L4_9414] = L5_9415
  if _G[L4_9414].AIProperties then
    CreateVehicleAI(_G[L4_9414])
  end
  ExposeVehicleToNetwork(_G[L4_9414])
end
