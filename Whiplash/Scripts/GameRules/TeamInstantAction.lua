Script.ReloadScript("scripts/gamerules/GameRulesUtils.lua")
TeamInstantAction = {}
GameRulesSetStandardFuncs(TeamInstantAction)
function TeamInstantAction.EquipActor(A0_9696, A1_9697)
  local L2_9698
  L2_9698 = A0_9696.game
  L2_9698 = L2_9698.IsDemoMode
  L2_9698 = L2_9698(L2_9698)
  if L2_9698 ~= 0 then
    return
  end
  L2_9698 = A1_9697.inventory
  if L2_9698 then
    L2_9698 = A1_9697.inventory
    L2_9698 = L2_9698.Destroy
    L2_9698(L2_9698)
  end
  L2_9698 = A1_9697.actor
  if L2_9698 then
    L2_9698 = A1_9697.actor
    L2_9698 = L2_9698.IsPlayer
    L2_9698 = L2_9698(L2_9698)
    if not L2_9698 then
      L2_9698 = A1_9697.Properties
      if L2_9698 then
        L2_9698 = A1_9697.Properties
        L2_9698 = L2_9698.equip_EquipmentPack
        if L2_9698 and L2_9698 ~= "" then
          ItemSystem.GiveItemPack(A1_9697.id, L2_9698, false, false)
          if A1_9697.AssignPrimaryWeapon then
            A1_9697:AssignPrimaryWeapon()
          end
        end
        if not A1_9697.bGunReady then
          A1_9697.actor:HolsterItem(true)
        end
      end
    end
  end
end
