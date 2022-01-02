local L0_9562, L1_9563
L0_9562 = {}
L1_9563 = {}
L1_9563.x = 0
L1_9563.y = 0
L1_9563.z = 0
L0_9562.tempVec = L1_9563
L1_9563 = {}
L0_9562.Client = L1_9563
L1_9563 = {}
L0_9562.Server = L1_9563
L1_9563 = {}
L0_9562.spawns = L1_9563
SinglePlayer = L0_9562
L0_9562 = {}
usableEntityList = L0_9562
L0_9562 = g_dmgMult
if not L0_9562 then
  L0_9562 = 1
  g_dmgMult = L0_9562
end
L0_9562 = SinglePlayer
function L1_9563(A0_9564, A1_9565)
  AIReset()
end
L0_9562.OnReset = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9566, A1_9567)
  if A0_9566.game:IsDemoMode() ~= 0 then
    return
  end
  if A1_9567.inventory then
    A1_9567.inventory:Destroy()
  end
  if A1_9567.actor and A1_9567.actor:IsPlayer() then
    ItemSystem.GiveItemPack(A1_9567.id, "empty", false, true)
  end
end
L0_9562.EquipActor = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9568, A1_9569)
  if A1_9569 and A1_9569.OnShoot and not A1_9569:OnShoot() then
    return false
  end
  return true
end
L0_9562.OnShoot = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9570, A1_9571, A2_9572)
  local L3_9573, L4_9574
  if not A2_9572 then
    L3_9573 = 0
    return L3_9573
  end
  L3_9573 = System
  L3_9573 = L3_9573.GetEntity
  L4_9574 = A2_9572
  L3_9573 = L3_9573(L4_9574)
  L4_9574 = L3_9573.IsUsable
  if L4_9574 then
    L4_9574 = L3_9573.IsHidden
    L4_9574 = L4_9574(L3_9573)
    if L4_9574 then
      L4_9574 = 0
      return L4_9574
    end
    L4_9574 = System
    L4_9574 = L4_9574.GetEntity
    L4_9574 = L4_9574(A1_9571)
    if L4_9574 and L4_9574.actor and (L4_9574:IsDead() or L4_9574.actor:GetSpectatorMode() ~= 0) then
      return 0
    end
    return L3_9573:IsUsable(L4_9574)
  end
  L4_9574 = 0
  return L4_9574
end
L0_9562.IsUsable = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9575, A1_9576, A2_9577)
  if A2_9577 then
    for _FORV_7_, _FORV_8_ in ipairs(A2_9577) do
      if g_localActor.arkPlayer:IsMimickingObject() then
        usableEntityList[_FORV_7_] = 0
      elseif ArkPlayerItemAction.IsArkItem(_FORV_8_.id) then
        if ArkPlayerItemAction.CanUseItem(_FORV_8_.id) then
          usableEntityList[_FORV_7_] = 1
        else
          usableEntityList[_FORV_7_] = 0
        end
      elseif ArkPlayerEntityInteractionRules.CanPerformUseTest(_FORV_8_.id) then
        if ArkPlayerEntityInteractionRules.CanUseEntity(_FORV_8_.id) then
          usableEntityList[_FORV_7_] = _FORV_8_:IsUsable(A1_9576)
        else
          usableEntityList[_FORV_7_] = 0
        end
      else
        usableEntityList[_FORV_7_] = _FORV_8_:IsUsable(A1_9576)
      end
    end
  end
  return usableEntityList
end
L0_9562.AreUsable = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9578, A1_9579, A2_9580, A3_9581)
  if not A1_9579 then
    return
  end
  if A2_9580 and not System.GetEntity(A2_9580) then
    A2_9580 = nil
  end
  if System.GetEntity(A1_9579) and System.GetEntity(A1_9579).SetOnUseData then
    System.GetEntity(A1_9579):SetOnUseData(A2_9580 or NULL_ENTITY, A3_9581)
  end
  if A1_9579 ~= g_localActorId then
    return
  end
  if A0_9578.UsableMessage then
    HUD.SetInstructionObsolete(A0_9578.UsableMessage)
    A0_9578.UsableMessage = nil
  end
end
L0_9562.OnNewUsable = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9582, A1_9583, A2_9584, A3_9585, A4_9586)
  local L5_9587
  L5_9587 = g_localActorId
  if A1_9583 ~= L5_9587 then
    return
  end
  L5_9587 = ""
  if A2_9584 then
    obj = System.GetEntity(A2_9584)
    if obj then
      if obj.GetUsableMessage then
        L5_9587 = obj:GetUsableMessage(A4_9586)
      elseif obj:GetState() ~= "" and obj[obj:GetState()].GetUsableMessage then
        L5_9587 = obj[obj:GetState()].GetUsableMessage(obj, A4_9586)
      end
    end
  end
  if UIAction then
    UIAction.StartAction("DisplayUseText", {L5_9587})
  end
end
L0_9562.OnUsableMessage = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9588, A1_9589, A2_9590)
end
L0_9562.OnLongHover = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9591, A1_9592)
  if not System.IsEditor() then
    if not A1_9592.nextlevel then
      Game.PauseGame(true)
      Game.ShowMainMenu()
    end
    g_GameTokenPreviousLevel = GameToken.GetToken("Game.Global.Previous_Level")
  end
end
L0_9562.EndLevel = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9593, A1_9594, A2_9595, A3_9596, A4_9597, A5_9598, A6_9599, A7_9600, A8_9601, A9_9602, A10_9603, A11_9604, A12_9605, A13_9606, A14_9607, A15_9608, A16_9609)
  local L17_9610, L18_9611
  if not A5_9598 then
    L17_9610 = g_Vectors
    A5_9598 = L17_9610.up
  end
  A6_9599 = A6_9599 or 5.5
  A12_9605 = A12_9605 or A6_9599 / 2
  A14_9607 = A14_9607 or A6_9599
  A13_9606 = A13_9606 or A14_9607 / 2
  A7_9600 = A7_9600 or 0
  A8_9601 = A8_9601 or 200
  if A9_9602 == nil then
    L17_9610 = math
    L17_9610 = L17_9610.min
    L18_9611 = A6_9599
    L17_9610 = L17_9610(L18_9611, 5)
    A9_9602 = L17_9610
  end
  if A6_9599 == 0 then
    return
  end
  L17_9610 = NULL_ENTITY
  if A1_9594 ~= 0 and A1_9594 ~= nil then
    L17_9610 = A1_9594
  end
  L18_9611 = NULL_ENTITY
  if A2_9595 ~= 0 and A2_9595 ~= nil then
    L18_9611 = A2_9595
  end
  A0_9593.game:ServerExplosion(L17_9610, L18_9611, A3_9596, A4_9597, A5_9598, A6_9599, A7_9600, A8_9601, A9_9602, A10_9603, A11_9604, A15_9608, A12_9605, A13_9606, A14_9607, A16_9609)
end
L0_9562.CreateExplosion = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9612, A1_9613, A2_9614, A3_9615, A4_9616, A5_9617, A6_9618, A7_9619, A8_9620, A9_9621, A10_9622, A11_9623)
  local L12_9624, L13_9625
  A5_9617 = A5_9617 or 0
  L12_9624 = 0
  if A6_9618 then
    L13_9625 = A0_9612.game
    L13_9625 = L13_9625.GetHitMaterialId
    L13_9625 = L13_9625(L13_9625, A6_9618)
    L12_9624 = L13_9625
  end
  A7_9619 = A7_9619 or -1
  L13_9625 = 0
  if A8_9620 then
    L13_9625 = A0_9612.game:GetHitTypeId(A8_9620)
  else
    L13_9625 = A0_9612.game:GetHitTypeId("normal")
  end
  A0_9612.game:ServerHit(A1_9613, A2_9614, A3_9615, A4_9616, A5_9617, L12_9624, A7_9619, L13_9625, A9_9621, A10_9622, A11_9623)
end
L0_9562.CreateHit = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9626, A1_9627, A2_9628, A3_9629, A4_9630, A5_9631, A6_9632, A7_9633, A8_9634, A9_9635)
  local L10_9636, L11_9637
  L10_9636 = g_localActor
  if L10_9636 then
    L10_9636 = g_localActor
    L10_9636 = L10_9636.actor
    if L10_9636 then
      if A2_9628 then
        L11_9637 = A0_9626
        L10_9636 = A0_9626.ViewShake
        L10_9636(L11_9637, g_localActor, A2_9628, A3_9629, A4_9630, A5_9631, A6_9632, A7_9633, A8_9634, A9_9635)
        return
      end
      if A1_9627 then
        L10_9636 = A0_9626.tempVec
        L11_9637 = CopyVector
        L11_9637(L10_9636, A1_9627)
        L11_9637 = FastDifferenceVectors
        L11_9637(L10_9636, L10_9636, g_localActor:GetWorldPos())
        L11_9637 = LengthVector
        L11_9637 = L11_9637(L10_9636)
        A0_9626:ViewShake(g_localActor, L11_9637, A3_9629, A4_9630, A5_9631, A6_9632, A7_9633, A8_9634, A9_9635)
        return
      end
    end
  end
end
L0_9562.ClientViewShake = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9638, A1_9639, A2_9640, A3_9641, A4_9642, A5_9643, A6_9644, A7_9645, A8_9646, A9_9647)
  local L10_9648
  L10_9648 = A4_9642 - A2_9640
  A9_9647 = A9_9647 or 0
  if L10_9648 > 0 then
    A1_9639.actor:SetViewShake({
      x = 2 * g_Deg2Rad * (A5_9643 * math.min(1, L10_9648 / (A4_9642 - A3_9641))),
      y = 2 * g_Deg2Rad * (A5_9643 * math.min(1, L10_9648 / (A4_9642 - A3_9641))),
      z = 2 * g_Deg2Rad * (A5_9643 * math.min(1, L10_9648 / (A4_9642 - A3_9641)))
    }, {
      x = 0.02 * (A5_9643 * math.min(1, L10_9648 / (A4_9642 - A3_9641))),
      y = 0.02 * (A5_9643 * math.min(1, L10_9648 / (A4_9642 - A3_9641))),
      z = 0.02 * (A5_9643 * math.min(1, L10_9648 / (A4_9642 - A3_9641)))
    }, A6_9644 * 0.5 + A6_9644 * 0.5 * math.min(1, L10_9648 / (A4_9642 - A3_9641)), 0.05, A9_9647)
  end
end
L0_9562.ViewShake = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9649)
  local L1_9650
end
L0_9562.OnSpawn = L1_9563
L0_9562 = SinglePlayer
L0_9562 = L0_9562.Server
function L1_9563(A0_9651)
  local L1_9652
  L1_9652 = {}
  A0_9651.fallHit = L1_9652
  L1_9652 = {}
  A0_9651.explosionHit = L1_9652
  L1_9652 = {}
  A0_9651.collisionHit = L1_9652
end
L0_9562.OnInit = L1_9563
L0_9562 = SinglePlayer
L0_9562 = L0_9562.Client
function L1_9563(A0_9653)
  local L1_9654
end
L0_9562.OnInit = L1_9563
L0_9562 = SinglePlayer
L0_9562 = L0_9562.Server
function L1_9563(A0_9655, A1_9656)
  local L2_9657, L3_9658
  L2_9657 = {}
  L2_9657.name = "Dude"
  L2_9657.class = "ArkPlayer"
  L3_9658 = {}
  L3_9658.x = 0
  L3_9658.y = 0
  L3_9658.z = 0
  L2_9657.position = L3_9658
  L3_9658 = {}
  L3_9658.x = 0
  L3_9658.y = 0
  L3_9658.z = 0
  L2_9657.rotation = L3_9658
  L3_9658 = {}
  L3_9658.x = 1
  L3_9658.y = 1
  L3_9658.z = 1
  L2_9657.scale = L3_9658
  L3_9658 = Actor
  L3_9658 = L3_9658.CreateActor
  L3_9658 = L3_9658(A1_9656, L2_9657)
  player = L3_9658
  L3_9658 = player
  if not L3_9658 then
    L3_9658 = Log
    L3_9658("OnClientConnect: Failed to spawn the player!")
    return
  end
  L3_9658 = A0_9655.game
  L3_9658 = L3_9658.GetFirstSpawnLocation
  L3_9658 = L3_9658(L3_9658, 0)
  if L3_9658 and System.GetEntity(L3_9658) then
    player:SetWorldPos(System.GetEntity(L3_9658):GetWorldPos(g_Vectors.temp_v1))
    System.GetEntity(L3_9658):GetAngles(g_Vectors.temp_v1)
    g_Vectors.temp_v1.x = 0
    g_Vectors.temp_v1.y = 0
    player.actor:PlayerSetViewAngles(g_Vectors.temp_v1)
    System.GetEntity(L3_9658):Spawned(player)
    return
  end
  System.Log("$1warning: No spawn points; using default spawn location!")
end
L0_9562.OnClientConnect = L1_9563
L0_9562 = SinglePlayer
L0_9562 = L0_9562.Server
function L1_9563(A0_9659, A1_9660, A2_9661, A3_9662)
end
L0_9562.OnClientEnteredGame = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9663, A1_9664, A2_9665)
  local L3_9666
  L3_9666 = 0
  return L3_9666
end
L0_9562.GetDamageAbsorption = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9667, A1_9668, A2_9669)
  if A0_9667:IsStealthHealthHit(A1_9668.type) then
    return true
  elseif A1_9668.type == "silentMelee" then
    return true
  end
end
L0_9562.CanHitIgnoreInvulnerable = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9670, A1_9671)
  local L2_9672, L3_9673, L4_9674, L5_9675, L6_9676, L7_9677, L8_9678, L9_9679, L10_9680, L11_9681, L12_9682, L13_9683, L14_9684
  L2_9672 = A1_9671.target
  L3_9673 = A1_9671.shooter
  L4_9674 = A1_9671.shooterId
  L4_9674 = L4_9674 or NULL_ENTITY
  L5_9675 = A1_9671.weapon
  L6_9676 = L2_9672.actor
  L7_9677 = L6_9676
  L6_9676 = L6_9676.GetHealth
  L6_9676 = L6_9676(L7_9677)
  L7_9677 = L2_9672.IsInvulnerable
  if L7_9677 then
    L8_9678 = L2_9672
    L7_9677 = L2_9672.IsInvulnerable
    L7_9677 = L7_9677(L8_9678)
    if L7_9677 then
      L8_9678 = A0_9670
      L7_9677 = A0_9670.CanHitIgnoreInvulnerable
      L9_9679 = A1_9671
      L10_9680 = L2_9672
      L7_9677 = L7_9677(L8_9678, L9_9679, L10_9680)
      if not L7_9677 then
        L7_9677 = L6_9676 <= 0
        return L7_9677
      end
    end
  end
  L7_9677 = A0_9670.game
  L8_9678 = L7_9677
  L7_9677 = L7_9677.IsMultiplayer
  L7_9677 = L7_9677(L8_9678)
  L8_9678 = g_dmgMult
  L9_9679 = A1_9671.damage
  L8_9678 = L8_9678 * L9_9679
  L9_9679 = L3_9673 and L3_9673.actor
  L10_9680 = L2_9672 and L2_9672.actor
  if not L7_9677 then
    L11_9681 = not L9_9679 and L3_9673 and L3_9673.actor
    L12_9682 = not L10_9680 and L2_9672 and L2_9672.actor
    L13_9683 = 1
    if L10_9680 then
      L13_9683 = g_dmgMult
    end
    if L3_9673 then
      L14_9684 = L3_9673.actor
      if L14_9684 and L12_9682 then
        L14_9684 = AI
        L14_9684 = L14_9684.SetAlarmed
        L14_9684(L2_9672.id)
      end
    end
    L14_9684 = AI
    if L14_9684 then
      if L11_9681 and not L12_9682 then
        L14_9684 = AI
        L14_9684 = L14_9684.ProcessBalancedDamage
        L14_9684 = L14_9684(L4_9674, L2_9672.id, L13_9683 * A1_9671.damage, A1_9671.type)
        L8_9678 = L14_9684
        L14_9684 = A0_9670.GetDamageAbsorption
        L14_9684 = L14_9684(A0_9670, L2_9672, A1_9671)
        L14_9684 = 1 - L14_9684
        L8_9678 = L8_9678 * L14_9684
      elseif L11_9681 and L12_9682 then
        L14_9684 = AI
        L14_9684 = L14_9684.ProcessBalancedDamage
        L14_9684 = L14_9684(L4_9674, L2_9672.id, L13_9683 * A1_9671.damage, A1_9671.type)
        L8_9678 = L14_9684
        L14_9684 = A0_9670.GetDamageAbsorption
        L14_9684 = L14_9684(A0_9670, L2_9672, A1_9671)
        L14_9684 = 1 - L14_9684
        L8_9678 = L8_9678 * L14_9684
      else
        L14_9684 = A1_9671.damage
        L14_9684 = L13_9683 * L14_9684
        L8_9678 = L14_9684 * (1 - A0_9670:GetDamageAbsorption(L2_9672, A1_9671))
      end
    else
      L14_9684 = A1_9671.damage
      L14_9684 = L13_9683 * L14_9684
      L8_9678 = L14_9684 * (1 - A0_9670:GetDamageAbsorption(L2_9672, A1_9671))
    end
  end
  if L10_9680 then
    L11_9681 = A1_9671.damage
    if L11_9681 > 0 then
      L11_9681 = A1_9671.type
      if L11_9681 == "collision" then
        L11_9681 = A1_9671.velocity
        if L11_9681 then
          L11_9681 = A1_9671.velocity
          if L11_9681 > 0.5 then
            L8_9678 = 0
          end
        end
      end
    end
  end
  L11_9681 = L6_9676 - L8_9678
  if not L7_9677 then
    L12_9682 = A1_9671.type
    L12_9682 = L12_9682 ~= "fall" and L12_9682 ~= "punish" and L12_9682 ~= "vehicleDestruction"
  if L10_9680 and L12_9682 then
    L13_9683 = L2_9672.actor
    L14_9684 = L13_9683
    L13_9683 = L13_9683.GetLowHealthThreshold
    L13_9683 = L13_9683(L14_9684)
    if not (L6_9676 > L13_9683) or L11_9681 <= 0 then
    end
  end
  L13_9683 = A1_9671.type
  if L13_9683 ~= "event" then
    L13_9683 = L2_9672.GetForcedMinHealthThreshold
    if L13_9683 then
      L14_9684 = L2_9672
      L13_9683 = L2_9672.GetForcedMinHealthThreshold
      L13_9683 = L13_9683(L14_9684)
      if L11_9681 < L13_9683 then
        L11_9681 = L13_9683
      end
    end
  end
  L6_9676 = L11_9681
  if not L7_9677 then
    L13_9683 = L2_9672.id
    L14_9684 = g_localActorId
    if L13_9683 == L14_9684 and L6_9676 <= 0 then
      L13_9683 = A0_9670.game
      L14_9684 = L13_9683
      L13_9683 = L13_9683.DemiGodDeath
      L13_9683(L14_9684)
      L13_9683 = L2_9672.actor
      L14_9684 = L13_9683
      L13_9683 = L13_9683.IsGod
      L13_9683 = L13_9683(L14_9684)
      if L13_9683 and L13_9683 > 0 then
        L14_9684 = L2_9672.actor
        L14_9684 = L14_9684.SetHealth
        L14_9684(L14_9684, 0)
        L14_9684 = L2_9672.Properties
        L14_9684 = L14_9684.Damage
        L6_9676 = L14_9684.health
      end
    end
  end
  L13_9683 = L2_9672.actor
  L14_9684 = L13_9683
  L13_9683 = L13_9683.SetHealth
  L13_9683(L14_9684, L6_9676)
  L13_9683 = L2_9672.actor
  L14_9684 = L13_9683
  L13_9683 = L13_9683.GetHealth
  L13_9683 = L13_9683(L14_9684)
  L6_9676 = L13_9683
  if L5_9675 then
    L13_9683 = L5_9675.id
  else
    L13_9683 = L13_9683 or NULL_ENTITY
  end
  L14_9684 = A1_9671.projectileId
  L14_9684 = L14_9684 or NULL_ENTITY
  L2_9672.actor:DamageInfo(L4_9674, L2_9672.id, L13_9683, L14_9684, L8_9678, A1_9671.typeId, A1_9671.dir)
  if not L7_9677 and AI then
    if A1_9671.material_type then
      AI.DebugReportHitDamage(L2_9672.id, L4_9674, L8_9678, A1_9671.material_type)
    else
      AI.DebugReportHitDamage(L2_9672.id, L4_9674, L8_9678, "")
    end
  end
  return L6_9676 <= 0
end
L0_9562.ProcessActorDamage = L1_9563
L0_9562 = SinglePlayer
L0_9562 = L0_9562.Server
function L1_9563(A0_9685)
  CryAction.SendGameplayEvent(NULL_ENTITY, eGE_GameStarted)
  if g_GameTokenPreviousLevel then
    GameToken.SetToken("Game.Global.Previous_Level", g_GameTokenPreviousLevel)
    g_GameTokenPreviousLevel = nil
  end
end
L0_9562.OnStartLevel = L1_9563
L0_9562 = SinglePlayer
L0_9562 = L0_9562.Client
function L1_9563(A0_9686)
  local L1_9687
end
L0_9562.OnStartLevel = L1_9563
L0_9562 = SinglePlayer
L0_9562 = L0_9562.Client
function L1_9563(A0_9688, A1_9689)
  local L2_9690
  L2_9690 = A1_9689.target
  if L2_9690 and not A1_9689.backface and L2_9690.Client and L2_9690.Client.OnHit then
    L2_9690.Client.OnHit(L2_9690, A1_9689)
  end
end
L0_9562.OnHit = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9691)
  local L1_9692
end
L0_9562.PrecacheLevel = L1_9563
L0_9562 = SinglePlayer
function L1_9563(A0_9693, A1_9694)
  local L2_9695
  L2_9695 = A1_9694 == "stealthKill" or A1_9694 == "stealthKill_Maximum"
  return L2_9695
end
L0_9562.IsStealthHealthHit = L1_9563
