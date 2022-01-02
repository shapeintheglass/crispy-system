Script.ReloadScript("scripts/gamerules/GameRulesUtils.lua")
InstantAction = {}
GameRulesSetStandardFuncs(InstantAction)
function InstantAction.EquipActor(A0_9559, A1_9560)
  local L2_9561
  L2_9561 = A0_9559.game
  L2_9561 = L2_9561.IsDemoMode
  L2_9561 = L2_9561(L2_9561)
  if L2_9561 ~= 0 then
    return
  end
  L2_9561 = A1_9560.inventory
  if L2_9561 then
    L2_9561 = A1_9560.inventory
    L2_9561 = L2_9561.Destroy
    L2_9561(L2_9561)
  end
  L2_9561 = A1_9560.actor
  if L2_9561 then
    L2_9561 = A1_9560.actor
    L2_9561 = L2_9561.IsPlayer
    L2_9561 = L2_9561(L2_9561)
    if not L2_9561 then
      L2_9561 = A1_9560.Properties
      if L2_9561 then
        L2_9561 = A1_9560.Properties
        L2_9561 = L2_9561.equip_EquipmentPack
        if L2_9561 and L2_9561 ~= "" then
          ItemSystem.GiveItemPack(A1_9560.id, L2_9561, false, false)
          if A1_9560.AssignPrimaryWeapon then
            A1_9560:AssignPrimaryWeapon()
          end
        end
        if not A1_9560.bGunReady then
          A1_9560.actor:HolsterItem(true)
        end
      end
    end
  end
end
