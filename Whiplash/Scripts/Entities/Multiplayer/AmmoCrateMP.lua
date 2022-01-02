AmmoCrateMP = {
  type = "AmmoCrateMP",
  Client = {},
  Server = {},
  Properties = {
    fileModelOverride = "",
    teamId = 0,
    bEnabled = 0,
    NumUsagesPerPlayer = 1,
    GroupId = "",
    audioSignal = -1,
    Ammo = {
      GiveClips = 1,
      bRefillWeaponAmmo = 0,
      FragGrenades = 0,
      bRefillWithCurrentGrenades = 1
    }
  },
  OPEN_SLOT = 0,
  Editor = {Icon = "item.bmp", IconOnTop = 1}
}
AmmoCrateMP.DEFAULT_FILE_MODEL = "engine/engineassets/objects/default.cgf"
Net.Expose({
  Class = AmmoCrateMP,
  ClientMethods = {
    ClRefillAmmoResult = {
      RELIABLE_UNORDERED,
      NO_ATTACH,
      BOOL,
      INT8
    }
  },
  ServerMethods = {
    SvRequestRefillAmmo = {
      RELIABLE_UNORDERED,
      NO_ATTACH,
      ENTITYID
    }
  },
  ServerProperties = {}
})
function AmmoCrateMP.Server.SvRequestRefillAmmo(A0_6091, A1_6092)
  local L2_6093, L3_6094, L4_6095
  L2_6093 = System
  L2_6093 = L2_6093.GetEntity
  L3_6094 = A1_6092
  L2_6093 = L2_6093(L3_6094)
  L3_6094 = 0
  L4_6095 = A0_6091.playerUsages
  L4_6095 = L4_6095[A1_6092]
  if L4_6095 == nil then
    L4_6095 = A0_6091.playerUsages
    L4_6095[A1_6092] = 0
  end
  L4_6095 = -1
  if 0 < A0_6091.Properties.NumUsagesPerPlayer then
    L4_6095 = A0_6091.Properties.NumUsagesPerPlayer - A0_6091.playerUsages[A1_6092]
  end
  if L4_6095 ~= 0 then
    if A0_6091.Properties.Ammo.GiveClips ~= 0 then
      L3_6094 = L2_6093.actor:SvGiveAmmoClips(A0_6091.Properties.Ammo.GiveClips)
    end
    if A0_6091.Properties.Ammo.bRefillWeaponAmmo ~= 0 or A0_6091.Properties.Ammo.FragGrenades ~= 0 then
      L3_6094 = L2_6093.actor:SvRefillAllAmmo("", A0_6091.Properties.Ammo.bRefillWeaponAmmo, A0_6091.Properties.Ammo.FragGrenades, A0_6091.Properties.Ammo.bRefillWithCurrentGrenades) + L3_6094
    end
    if L3_6094 ~= 0 then
      A0_6091.playerUsages[A1_6092] = A0_6091.playerUsages[A1_6092] + 1
      L4_6095 = L4_6095 - 1
    end
  end
  A0_6091.onClient:ClRefillAmmoResult(L2_6093.actor:GetChannel(), L3_6094 ~= 0, L4_6095)
end
function AmmoCrateMP.Client.ClRefillAmmoResult(A0_6096, A1_6097, A2_6098)
  g_localActor.actor:ClRefillAmmoResult(A1_6097)
  if A2_6098 == 0 then
    A0_6096.bLocalUsesLeft = false
    GameAudio.StopEntitySignal(A0_6096.audioSignal, A0_6096.id)
    BroadcastEvent(A0_6096, "NoUsesRemaining")
    if HUD then
      HUD.RemoveObjective(A0_6096.id)
    end
  end
end
MakeUsable(AmmoCrateMP)
AmmoCrateMP.Properties.bUsable = 1
AmmoCrateMP.Properties.UseMessage = "@ui_prompt_interact_ammo_cache"
function AmmoCrateMP.Server.OnInit(A0_6099)
  if not CryAction.IsClient() then
    A0_6099:OnInit()
  end
end
function AmmoCrateMP.Client.OnInit(A0_6100)
  A0_6100:OnInit()
end
function AmmoCrateMP.OnInit(A0_6101)
  local L1_6102
  L1_6102 = {}
  A0_6101.ammoRechargesModels = L1_6102
  L1_6102 = A0_6101.OnReset
  L1_6102(A0_6101)
  L1_6102 = Game
  L1_6102 = L1_6102.AddTacticalEntity
  L1_6102(A0_6101.id, eTacticalEntity_Ammo)
  L1_6102 = A0_6101.Properties
  L1_6102 = L1_6102.Ammo
  L1_6102 = L1_6102.FragGrenades
  L1_6102 = L1_6102 > 0
  Game.OnAmmoCrateSpawned(L1_6102)
end
function AmmoCrateMP.OnPropertyChange(A0_6103)
  A0_6103:OnReset()
end
function AmmoCrateMP.OnReset(A0_6104)
  A0_6104:ResetMainBoxModel()
  A0_6104.bUsable = A0_6104.Properties.bUsable
  A0_6104.audioSignal = GameAudio.GetSignal("AmmoCrate")
  A0_6104.bLocalUsesLeft = true
  A0_6104.playerUsages = {}
  A0_6104:Enabled(A0_6104.Properties.bEnabled)
  BroadcastEvent(A0_6104, "Disabled")
end
function AmmoCrateMP.ResetMainBoxModel(A0_6105)
  local L1_6106
  L1_6106 = A0_6105.DEFAULT_FILE_MODEL
  if A0_6105.Properties.fileModelOverride and A0_6105.Properties.fileModelOverride ~= "" then
    L1_6106 = A0_6105.Properties.fileModelOverride
  end
  A0_6105:LoadObject(A0_6105.OPEN_SLOT, L1_6106)
  A0_6105:Physicalize(A0_6105.OPEN_SLOT, PE_STATIC, {mass = 0, density = 0})
end
function AmmoCrateMP.OnShutDown(A0_6107)
  Game.RemoveTacticalEntity(A0_6107.id, eTacticalEntity_Ammo)
end
function AmmoCrateMP.IsUsable(A0_6108, A1_6109)
  local L2_6110
  L2_6110 = A0_6108.Properties
  L2_6110 = L2_6110.teamId
  if L2_6110 then
    L2_6110 = A0_6108.Properties
    L2_6110 = L2_6110.teamId
    L2_6110 = L2_6110 == g_gameRules.game:GetTeam(A1_6109.id)
  end
  if A0_6108.bUsable and L2_6110 and A1_6109.actor:IsLocalClient() and A0_6108.Properties.bEnabled ~= 0 and A0_6108.bLocalUsesLeft then
    return 1
  end
  return 0
end
function AmmoCrateMP.OnUsed(A0_6111, A1_6112, A2_6113)
  A0_6111.server:SvRequestRefillAmmo(A1_6112.id)
end
function AmmoCrateMP.StopUse(A0_6114, A1_6115, A2_6116)
end
function AmmoCrateMP.Enabled(A0_6117, A1_6118)
  A0_6117.Properties.bEnabled = A1_6118
  A0_6117.bLocalUsesLeft = true
  A0_6117.playerUsages = {}
  if not System.IsEditor() then
    if A1_6118 ~= 0 then
      A0_6117:Hide(0)
      BroadcastEvent(A0_6117, "Enabled")
      GameAudio.PlayEntitySignal(A0_6117.audioSignal, A0_6117.id)
    else
      A0_6117:Hide(1)
      BroadcastEvent(A0_6117, "Disabled")
      GameAudio.StopEntitySignal(A0_6117.audioSignal, A0_6117.id)
    end
  end
end
AmmoCrateMP.FlowEvents = {
  Inputs = {},
  Outputs = {
    Enabled = "bool",
    Disabled = "bool",
    NoUsesRemaining = "bool"
  }
}
