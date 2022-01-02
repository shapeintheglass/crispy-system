local L0_435, L1_436, L2_437
L0_435 = {}
L1_436 = {}
L1_436.mass = 20
L1_436.fileModel = "Objects/glm/shipwreck/stuff/chain_swing.cgf"
L1_436.bCheckCollisions = 1
L1_436.bCheckTerrainCollisions = 0
L1_436.bShootable = 1
L1_436.coll_dist = 0.025
L1_436.material = "mat_default"
L2_437 = {}
L2_437.x = 0
L2_437.y = 0
L2_437.z = -9.81
L1_436.gravity = L2_437
L1_436.damping = 0.5
L1_436.friction = 0.1
L1_436.sleep_speed = 0.01
L1_436.max_time_step = 0.01
L1_436.rope_name = "rope"
L1_436.num_ropes = 1
L1_436.AttachTo = ""
L1_436.AttachToPart = -1
L1_436.AttachToUp = ""
L1_436.AttachToPartUp = -1
L1_436.bDetachOnDamage = 1
L1_436.bAwake = 1
L2_437 = {}
L2_437.bKeepCollisions = 1
L2_437.max_time_step = 0.03
L2_437.sleep_speed = 0.04
L1_436.LowSpec = L2_437
L0_435.Properties = L1_436
L0_435.bWasReset = 0
L0_435.bWasDetached = 0
L1_436 = {}
L1_436.Model = "Objects/Editor/LightSphear.cgf"
L0_435.Editor = L1_436
L0_435.sChainSound = nil
L0_435.sChainBroken = nil
L0_435.sChainSoundFilename = "Sounds/objectimpact/chain.wav"
ChainSwing = L0_435
L0_435 = ChainSwing
function L1_436(A0_438)
  local L1_439, L2_440, L3_441, L4_442, L5_443, L6_444, L7_445, L8_446
  A0_438.lightId = nil
  L2_440 = A0_438
  L1_439 = A0_438.NetPresent
  L3_441 = nil
  L1_439(L2_440, L3_441)
  L2_440 = A0_438
  L1_439 = A0_438.Activate
  L3_441 = 1
  L1_439(L2_440, L3_441)
  L1_439 = {}
  L1_439.entity_id_1 = -1
  L1_439.entity_part_id_1 = 0
  L2_440 = Game
  L3_441 = L2_440
  L2_440 = L2_440.GetMaterialIDByName
  L2_440 = L2_440(L3_441, L4_442)
  L1_439.surface_idx = L2_440
  L2_440 = {}
  L3_441 = A0_438.Properties
  L3_441 = L3_441.bCheckCollisions
  L3_441 = L3_441 * L4_442
  L2_440.bCheckCollisions = L3_441
  L3_441 = A0_438.Properties
  L3_441 = L3_441.bCheckTerrainCollisions
  L3_441 = L3_441 * L4_442
  L2_440.bCheckTerrainCollisions = L3_441
  L3_441 = tonumber
  L8_446 = L4_442(L5_443)
  L3_441 = L3_441(L4_442, L5_443, L6_444, L7_445, L8_446, L4_442(L5_443))
  L7_445 = 0
  L4_442(L5_443, L6_444, L7_445)
  L7_445 = 0
  L8_446 = 0
  L4_442(L5_443, L6_444, L7_445, L8_446, 0)
  for L7_445 = 1, L5_443.num_ropes do
    L8_446 = A0_438.Properties
    L8_446 = L8_446.rope_name
    if L7_445 > 1 or 1 < A0_438.Properties.num_ropes then
      L8_446 = L8_446 .. L7_445
    end
    A0_438:SetCharacterPhysicParams(0, L8_446, PHYSICPARAM_ROPE, A0_438.Properties)
    A0_438:SetCharacterPhysicParams(0, L8_446, PHYSICPARAM_ROPE, L1_439)
    A0_438:SetCharacterPhysicParams(0, L8_446, PHYSICPARAM_SIMULATION, A0_438.Properties)
    if L3_441 == 0 then
      A0_438:SetCharacterPhysicParams(0, L8_446, PHYSICPARAM_ROPE, L2_440)
      A0_438:SetCharacterPhysicParams(0, L8_446, PHYSICPARAM_SIMULATION, A0_438.Properties.LowSpec)
    end
    if A0_438.Properties.bAwake == 0 then
      A0_438:AwakeCharacterPhysics(0, L8_446, 0)
    end
  end
  L7_445 = 1
  L4_442(L5_443, L6_444, L7_445)
  A0_438.bWasReset = 1
  A0_438.bWasDetached = 0
  L7_445 = 0
  L8_446 = 255
  A0_438.sChainSound = L4_442
end
L0_435.OnReset = L1_436
L0_435 = ChainSwing
function L1_436(A0_447)
  local L1_448, L2_449, L3_450, L4_451, L5_452, L6_453, L7_454
  L1_448 = A0_447.bWasReset
  if L1_448 then
    L1_448 = A0_447.bWasReset
    if L1_448 == 1 then
      L1_448 = A0_447.Properties
      L1_448 = L1_448.AttachTo
      if L1_448 then
        L1_448 = A0_447.Properties
        L1_448 = L1_448.AttachTo
      else
        if L1_448 == "" then
          L1_448 = A0_447.Properties
          L1_448 = L1_448.AttachTo
          if L1_448 then
            L1_448 = A0_447.Properties
            L1_448 = L1_448.AttachTo
          end
      end
      elseif L1_448 ~= "" then
        L1_448 = A0_447.bWasDetached
        if L1_448 == 0 then
          L1_448 = {}
          L2_449 = nil
          if L3_450 then
            if L3_450 ~= "" then
              L2_449 = L3_450
              if L2_449 then
                L1_448.entity_id_1 = L3_450
                if L3_450 then
                  L1_448.entity_part_id_1 = L3_450
                end
              end
            end
          end
          if L3_450 then
            if L3_450 ~= "" then
              L2_449 = L3_450
              if L2_449 then
                L1_448.entity_id_2 = L3_450
                if L3_450 then
                  L1_448.entity_part_id_2 = L3_450
                end
              end
            end
          end
          for L6_453 = 1, L4_451.num_ropes do
            L7_454 = A0_447.Properties
            L7_454 = L7_454.rope_name
            if L6_453 > 1 or 1 < A0_447.Properties.num_ropes then
              L7_454 = L7_454 .. L6_453
            end
            A0_447:SetCharacterPhysicParams(0, L7_454, PHYSICPARAM_ROPE, L1_448)
          end
        end
      end
      A0_447.bWasReset = 0
    end
  end
end
L0_435.OnUpdate = L1_436
L0_435 = ChainSwing
function L1_436(A0_455)
  A0_455:OnReset()
end
L0_435.OnPropertyChange = L1_436
L0_435 = ChainSwing
function L1_436(A0_456, A1_457)
  local L2_458
  L2_458 = A1_457.shooter
  if L2_458 then
    L2_458 = A1_457.shooter
    L2_458 = L2_458.ai
    if L2_458 then
      return
    end
  end
  L2_458 = A0_456.Properties
  L2_458 = L2_458.bDetachOnDamage
  if L2_458 then
    L2_458 = A0_456.Properties
    L2_458 = L2_458.bDetachOnDamage
    if L2_458 ~= 0 then
      L2_458 = {}
      L2_458.entity_id_1 = -1
      L2_458.entity_id_2 = -2
      if A0_456.Properties.AttachToUp and A0_456.Properties.AttachToUp ~= "" and System.GetEntityByName(A0_456.Properties.AttachToUp) then
        L2_458.entity_id_1 = System.GetEntityByName(A0_456.Properties.AttachToUp).id
        if A0_456.Properties.AttachToPartUp then
          L2_458.entity_part_id_1 = A0_456.Properties.AttachToPartUp
        end
      end
      A0_456:SetCharacterPhysicParams(0, A0_456.Properties.rope_name, PHYSICPARAM_ROPE, L2_458)
      A0_456.bWasDetached = 1
      A0_456:Event_ChainBroken()
    end
  end
  L2_458 = A1_457.ipart
  if L2_458 then
    L2_458 = A0_456.AddImpulse
    L2_458(A0_456, A1_457.ipart, A1_457.pos, A1_457.dir, A1_457.impact_force_mul)
  else
    L2_458 = A0_456.AddImpulse
    L2_458(A0_456, -1, A1_457.pos, A1_457.dir, A1_457.impact_force_mul)
  end
  L2_458 = A0_456.sChainSound
  if L2_458 then
    L2_458 = Sound
    L2_458 = L2_458.IsPlaying
    L2_458 = L2_458(A0_456.sChainSound)
    if not L2_458 then
      L2_458 = Sound
      L2_458 = L2_458.SetSoundPosition
      L2_458(A0_456.sChainSound, A0_456:GetPos())
      L2_458 = Sound
      L2_458 = L2_458.PlaySound
      L2_458(A0_456.sChainSound)
    end
  end
end
L0_435.OnDamage = L1_436
L0_435 = ChainSwing
function L1_436(A0_459)
  A0_459:OnReset()
end
L0_435.OnInit = L1_436
L0_435 = ChainSwing
function L1_436(A0_460, A1_461)
  BroadcastEvent(A0_460, "ChainBroken")
  if A0_460.sChainBroken then
    Sound.SetSoundPosition(A0_460.sChainBroken, A0_460:GetPos())
    Sound.PlaySound(A0_460.sChainBroken)
  end
end
L0_435.Event_ChainBroken = L1_436
L0_435 = ChainSwing
function L1_436(A0_462, A1_463)
end
L0_435.OnWrite = L1_436
L0_435 = ChainSwing
function L1_436(A0_464, A1_465)
end
L0_435.OnRead = L1_436
L0_435 = ChainSwing
function L1_436(A0_466, A1_467)
  A1_467:WriteInt(A0_466.bWasDetached)
end
L0_435.OnSave = L1_436
L0_435 = ChainSwing
function L1_436(A0_468, A1_469)
  A0_468.bWasDetached = A1_469:ReadInt()
end
L0_435.OnLoad = L1_436
L0_435 = ChainSwing
function L1_436(A0_470)
  local L1_471
end
L0_435.OnShutDown = L1_436
L0_435 = ChainSwing
L1_436 = {}
L2_437 = {}
L2_437.ChainBroken = {
  ChainSwing.Event_ChainBroken,
  "bool"
}
L1_436.Inputs = L2_437
L2_437 = {}
L2_437.ChainBroken = "bool"
L1_436.Outputs = L2_437
L0_435.FlowEvents = L1_436
