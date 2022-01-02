AmmoCrate = {
  type = "AmmoCrate",
  Properties = {
    object_BoxModel = "engine/engineassets/objects/default.cgf",
    object_Ammo4Recharges = "engine/engineassets/objects/default.cgf",
    object_Ammo3Recharges = "engine/engineassets/objects/default.cgf",
    object_Ammo2Recharges = "engine/engineassets/objects/default.cgf",
    object_Ammo1Recharges = "engine/engineassets/objects/default.cgf",
    object_Ammo0Recharges = "engine/engineassets/objects/default.cgf",
    numberOfRecharges = 0,
    Ammo = {AmmoCategory = "Regular", FragGrenades = 2}
  },
  Editor = {Icon = "item.bmp", IconOnTop = 1}
}
function AmmoCrate.OnInit(A0_5550)
  local L1_5551
  L1_5551 = {}
  A0_5550.ammoRechargesModels = L1_5551
  L1_5551 = A0_5550.OnReset
  L1_5551(A0_5550)
  L1_5551 = Game
  L1_5551 = L1_5551.AddTacticalEntity
  L1_5551(A0_5550.id, eTacticalEntity_Ammo)
  L1_5551 = A0_5550.Properties
  L1_5551 = L1_5551.Ammo
  L1_5551 = L1_5551.FragGrenades
  L1_5551 = L1_5551 > 0
  Game.OnAmmoCrateSpawned(L1_5551)
end
function AmmoCrate.OnPropertyChange(A0_5552)
  A0_5552:OnReset()
end
function AmmoCrate.OnReset(A0_5553)
  A0_5553:ResetMainBoxModel()
  A0_5553:ResetAmmoAttachmentModels()
  A0_5553.remaingRecharges = math.min(4, math.max(0, A0_5553.Properties.numberOfRecharges))
  A0_5553.infiniteRecharges = A0_5553.remaingRecharges == 0
  A0_5553.bUsable = A0_5553.Properties.bUsable
  A0_5553:SetUpAmmoAttachmentsVisibility()
end
function AmmoCrate.ResetMainBoxModel(A0_5554)
  if A0_5554.currentModel ~= A0_5554.Properties.object_BoxModel and not EmptyString(A0_5554.Properties.object_BoxModel) then
    A0_5554:LoadObject(0, A0_5554.Properties.object_BoxModel)
    A0_5554:Physicalize(0, PE_STATIC, {mass = 0, density = 0})
  end
  A0_5554.currentModel = A0_5554.Properties.object_BoxModel
end
function AmmoCrate.ResetAmmoAttachmentModels(A0_5555)
  if A0_5555.ammoRechargesModels[1] ~= A0_5555.Properties.object_Ammo0Recharges and not EmptyString(A0_5555.Properties.object_Ammo0Recharges) then
    A0_5555:LoadObject(1, A0_5555.Properties.object_Ammo0Recharges)
  end
  A0_5555:DrawSlot(1, 0)
  A0_5555.ammoRechargesModels[1] = A0_5555.Properties.object_Ammo0Recharges
  if A0_5555.ammoRechargesModels[2] ~= A0_5555.Properties.object_Ammo1Recharges and not EmptyString(A0_5555.Properties.object_Ammo1Recharges) then
    A0_5555:LoadObject(2, A0_5555.Properties.object_Ammo1Recharges)
  end
  A0_5555:DrawSlot(2, 0)
  A0_5555.ammoRechargesModels[2] = A0_5555.Properties.object_Ammo1Recharges
  if A0_5555.ammoRechargesModels[3] ~= A0_5555.Properties.object_Ammo2Recharges and not EmptyString(A0_5555.Properties.object_Ammo2Recharges) then
    A0_5555:LoadObject(3, A0_5555.Properties.object_Ammo2Recharges)
  end
  A0_5555:DrawSlot(3, 0)
  A0_5555.ammoRechargesModels[3] = A0_5555.Properties.object_Ammo2Recharges
  if A0_5555.ammoRechargesModels[4] ~= A0_5555.Properties.object_Ammo3Recharges and not EmptyString(A0_5555.Properties.object_Ammo3Recharges) then
    A0_5555:LoadObject(4, A0_5555.Properties.object_Ammo3Recharges)
  end
  A0_5555:DrawSlot(4, 0)
  A0_5555.ammoRechargesModels[4] = A0_5555.Properties.object_Ammo3Recharges
  if A0_5555.ammoRechargesModels[5] ~= A0_5555.Properties.object_Ammo4Recharges and not EmptyString(A0_5555.Properties.object_Ammo4Recharges) then
    A0_5555:LoadObject(5, A0_5555.Properties.object_Ammo4Recharges)
  end
  A0_5555:DrawSlot(5, 0)
  A0_5555.ammoRechargesModels[5] = A0_5555.Properties.object_Ammo4Recharges
end
function AmmoCrate.SetUpAmmoAttachmentsVisibility(A0_5556)
  if A0_5556.infiniteRecharges then
    A0_5556:DrawSlot(5, 1)
  else
    A0_5556:DrawSlot(A0_5556.remaingRecharges + 1, 1)
  end
end
function AmmoCrate.OnSave(A0_5557, A1_5558)
  local L2_5559
  L2_5559 = A0_5557.bUsable
  A1_5558.bUsable = L2_5559
  L2_5559 = A0_5557.infiniteRecharges
  A1_5558.infiniteRecharges = L2_5559
  L2_5559 = A0_5557.remaingRecharges
  A1_5558.remaingRecharges = L2_5559
end
function AmmoCrate.OnLoad(A0_5560, A1_5561)
  A0_5560.bUsable = A1_5561.bUsable
  A0_5560.infiniteRecharges = A1_5561.infiniteRecharges
  A0_5560.remaingRecharges = A1_5561.remaingRecharges
  A0_5560:ResetAmmoAttachmentModels()
  A0_5560:SetUpAmmoAttachmentsVisibility()
end
function AmmoCrate.OnShutDown(A0_5562)
  Game.RemoveTacticalEntity(A0_5562.id, eTacticalEntity_Ammo)
end
function AmmoCrate.HasRecharges(A0_5563)
  local L1_5564
  L1_5564 = A0_5563.infiniteRecharges
  if not L1_5564 then
    L1_5564 = A0_5563.remaingRecharges
    L1_5564 = L1_5564 > 0
  end
  return L1_5564
end
function AmmoCrate.DecreaseRecharges(A0_5565)
  if not A0_5565.infiniteRecharges then
    A0_5565:DrawSlot(A0_5565.remaingRecharges + 1, 0)
    A0_5565.remaingRecharges = A0_5565.remaingRecharges - 1
    A0_5565:DrawSlot(A0_5565.remaingRecharges + 1, 1)
    if not A0_5565:HasRecharges() then
      Game.RemoveTacticalEntity(A0_5565.id, eTacticalEntity_Ammo)
    end
  end
end
function AmmoCrate.Event_Hide(A0_5566)
  Game.RemoveTacticalEntity(A0_5566.id, eTacticalEntity_Ammo)
  A0_5566:Hide(1)
  A0_5566:ActivateOutput("Hide", true)
end
function AmmoCrate.Event_UnHide(A0_5567)
  A0_5567:Hide(0)
  A0_5567:ActivateOutput("UnHide", true)
  Game.AddTacticalEntity(A0_5567.id, eTacticalEntity_Ammo)
end
MakeUsable(AmmoCrate)
AmmoCrate.FlowEvents = {
  Inputs = {
    Hide = {
      AmmoCrate.Event_Hide,
      "bool"
    },
    UnHide = {
      AmmoCrate.Event_UnHide,
      "bool"
    },
    Used = {
      AmmoCrate.Event_Used,
      "bool"
    },
    EnableUsable = {
      AmmoCrate.Event_EnableUsable,
      "bool"
    },
    DisableUsable = {
      AmmoCrate.Event_DisableUsable,
      "bool"
    }
  },
  Outputs = {
    Hide = "bool",
    UnHide = "bool",
    Used = "bool",
    EnableUsable = "bool",
    DisableUsable = "bool"
  }
}
function AmmoCrate.StopUse(A0_5568, A1_5569, A2_5570)
end
function AmmoCrate.OnUsed(A0_5571, A1_5572, A2_5573)
  local L3_5574
  L3_5574 = A1_5572.actor
  L3_5574 = L3_5574.SvRefillAllAmmo
  L3_5574 = L3_5574(L3_5574, A0_5571.Properties.Ammo.AmmoCategory, false, A0_5571.Properties.Ammo.FragGrenades, false)
  if L3_5574 ~= 0 then
    A0_5571:DecreaseRecharges()
  end
  A1_5572.actor:ClRefillAmmoResult(L3_5574)
  A0_5571:ActivateOutput("Used", true)
end
function AmmoCrate.IsUsable(A0_5575, A1_5576)
  if A0_5575.bUsable and A1_5576.actor:IsLocalClient() and not A1_5576.actor:IsCurrentItemHeavy() and A0_5575:HasRecharges() then
    return 1
  end
  return 0
end
