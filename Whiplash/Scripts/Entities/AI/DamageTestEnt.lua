Script.ReloadScript("Scripts/Entities/actor/player.lua")
DamageTestEnt = new(Player)
DamageTestEnt.totalDamage = 0
DamageTestEnt.lastHitTime = 0
DamageTestEnt.firstHitTime = 0
DamageTestEnt.numHits = 0
DamageTestEnt.isActive = false
DamageTestEnt.watchText = ""
DamageTestEnt.watchTextDead = ""
DamageTestEnt.isDead = false
DamageTestEnt.Properties.fileHitDeathReactionsParamsDataFile = "Libs/HitDeathReactionsData/HitDeathReactions_MP.xml"
DamageTestEnt.Properties.Damage.fileBodyDamage = "Libs/BodyDamage/BodyDamage_MP.xml"
DamageTestEnt.Properties.Damage.fileBodyDamageParts = "Libs/BodyDamage/BodyParts_HumanMaleShared.xml"
DamageTestEnt.Properties.Damage.fileBodyDestructibility = "Libs/BodyDamage/BodyDestructibility_Default.xml"
function DamageTestEnt.Server.OnHit(A0_2709, A1_2710)
  local L2_2711, L3_2712, L4_2713, L5_2714, L6_2715, L7_2716, L8_2717, L9_2718, L10_2719, L11_2720
  L2_2711 = A1_2710.damage
  L3_2712 = A1_2710.target
  L4_2713 = L3_2712
  L3_2712 = L3_2712.GetPos
  L3_2712 = L3_2712(L4_2713)
  L4_2713 = A1_2710.shooter
  L5_2714 = L4_2713
  L4_2713 = L4_2713.GetPos
  L4_2713 = L4_2713(L5_2714)
  L5_2714 = DistanceVectors
  L6_2715 = L3_2712
  L7_2716 = L4_2713
  L5_2714 = L5_2714(L6_2715, L7_2716)
  L6_2715 = 0
  L7_2716 = 0
  L8_2717 = g_gameRules
  L8_2717 = L8_2717.game
  L9_2718 = L8_2717
  L8_2717 = L8_2717.GetServerTime
  L8_2717 = L8_2717(L9_2718)
  L9_2718 = A0_2709.isActive
  if L9_2718 == false then
    A0_2709.totalDamage = L2_2711
    A0_2709.firstHitTime = L8_2717
    A0_2709.lastHitTime = L8_2717
    A0_2709.isActive = true
    A0_2709.numHits = 1
  else
    L9_2718 = A0_2709.totalDamage
    L9_2718 = L9_2718 + L2_2711
    A0_2709.totalDamage = L9_2718
    A0_2709.lastHitTime = L8_2717
    L9_2718 = A0_2709.lastHitTime
    L10_2719 = A0_2709.firstHitTime
    L9_2718 = L9_2718 - L10_2719
    L7_2716 = L9_2718 * 0.001
    L9_2718 = A0_2709.totalDamage
    L6_2715 = L9_2718 / L7_2716
    L9_2718 = A0_2709.numHits
    L9_2718 = L9_2718 + 1
    A0_2709.numHits = L9_2718
  end
  L9_2718 = A1_2710.partId
  L10_2719 = A0_2709.actor
  L11_2720 = L10_2719
  L10_2719 = L10_2719.GetExtraHitLocationInfo
  L10_2719 = L10_2719(L11_2720, 0, A1_2710.partId)
  if L10_2719 then
    L11_2720 = L10_2719.boneName
    if L11_2720 then
      L9_2718 = L10_2719.boneName
    else
      L11_2720 = L10_2719.attachmentName
      if L11_2720 then
        L9_2718 = L10_2719.attachmentName
      end
    end
  end
  L11_2720 = nil
  if A1_2710.weapon then
    L11_2720 = A1_2710.weapon.class
  else
    L11_2720 = EntityName(A1_2710.weaponId) .. " (" .. A1_2710.type .. ")"
  end
  A0_2709.watchText = EntityName(A0_2709) .. " (" .. L9_2718 .. ") : " .. L11_2720 .. ": " .. L2_2711 .. " damage at " .. L5_2714 .. "m away, (total=" .. A0_2709.totalDamage .. ", time=" .. L7_2716 .. ", dps=" .. L6_2715 .. ", numHits=" .. A0_2709.numHits .. ")"
  Log(A0_2709.watchText)
  if A0_2709.isDead == false and A0_2709.totalDamage > 120 then
    A0_2709.watchTextDead = "Dead at time=" .. L7_2716 .. ", numHits=" .. A0_2709.numHits
    A0_2709.isDead = true
    Log(A0_2709.watchTextDead)
  end
end
function DamageTestEnt.Server.OnUpdate(A0_2721, A1_2722)
  A0_2721.actor:PostPhysicalize()
  if A0_2721.isActive == true then
    if g_gameRules.game:GetServerTime() - A0_2721.lastHitTime < 10000 then
      g_gameRules.game:Watch(A0_2721.watchText)
      if A0_2721.isDead == true then
        g_gameRules.game:Watch(A0_2721.watchTextDead)
      end
    else
      A0_2721.isActive = false
      A0_2721.isDead = false
    end
  end
end
CreateActor(DamageTestEnt)
DamageTestEnt:Expose()
