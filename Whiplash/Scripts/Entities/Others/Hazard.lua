Hazard = {
  Client = {},
  Server = {},
  type = "Trigger",
  Properties = {
    bEnabled = 1,
    Damage = {
      fDamage = 50,
      eiHazardType = 0,
      bOnlyPlayer = 1
    }
  },
  Editor = {
    Icon = "hazard.bmp",
    Model = "Editor/Objects/T.cgf",
    ShowBounds = 1
  },
  States = {
    "Activated",
    "Deactivated",
    "Turning"
  }
}
Net.Expose({
  Class = Hazard,
  ClientMethods = {
    AddScreenEffect = {
      RELIABLE_UNORDERED,
      PRE_ATTACH,
      ENTITYID
    },
    RemoveScreenEffect = {
      RELIABLE_UNORDERED,
      PRE_ATTACH,
      ENTITYID
    },
    DoFX = {RELIABLE_UNORDERED, PRE_ATTACH},
    InitFX = {RELIABLE_UNORDERED, PRE_ATTACH}
  },
  ServerMethods = {},
  ServerProperties = {}
})
CHECK_TIMER = 0
FX_TIMER = 1
function Hazard.OnReset(A0_6812)
  local L1_6813
  L1_6813 = {}
  A0_6812.ents = L1_6813
  L1_6813 = A0_6812.Properties
  A0_6812:InitFX()
  if L1_6813.bEnabled == 1 then
    Game.AddTacticalEntity(A0_6812.id, eTacticalEntity_Hazard)
    A0_6812:GotoState("Activated")
  else
    Game.RemoveTacticalEntity(A0_6812.id, eTacticalEntity_Hazard)
    A0_6812:GotoState("Deactivated")
  end
  A0_6812:RegisterForAreaEvents(A0_6812.Properties.bEnabled)
end
function Hazard.OnSave(A0_6814, A1_6815)
  local L2_6816
  L2_6816 = A0_6814.ents
  A1_6815.ents = L2_6816
  L2_6816 = A0_6814.fx
  A1_6815.fx = L2_6816
end
function Hazard.OnLoad(A0_6817, A1_6818)
  local L2_6819
  L2_6819 = A1_6818.ents
  A0_6817.ents = L2_6819
  L2_6819 = A1_6818.fx
  A0_6817.fx = L2_6819
end
function Hazard.OnPropertyChange(A0_6820)
  A0_6820:OnReset()
end
function Hazard.Client.OnInit(A0_6821)
  A0_6821:OnReset()
end
function Hazard.Server.OnInit(A0_6822)
  A0_6822:OnReset()
end
function Hazard.Client.InitFX(A0_6823)
  A0_6823:InitFX()
end
function Hazard.Client.AddScreenEffect(A0_6824, A1_6825)
  local L2_6826
  L2_6826 = System
  L2_6826 = L2_6826.GetEntity
  L2_6826 = L2_6826(A1_6825)
  if L2_6826 then
    A0_6824:AddScreenEffect(L2_6826)
  end
end
function Hazard.Client.RemoveScreenEffect(A0_6827, A1_6828)
  local L2_6829
  L2_6829 = System
  L2_6829 = L2_6829.GetEntity
  L2_6829 = L2_6829(A1_6828)
  if L2_6829 then
    A0_6827:RemoveScreenEffect(L2_6829)
  end
end
function Hazard.Client.DoFX(A0_6830)
  A0_6830:DoFX()
end
function Hazard.InitFX(A0_6831)
  local L1_6832
  L1_6832 = {none}
  L1_6832.fire = {
    active = 0,
    desired = 0,
    current = 0
  }
  L1_6832.frost = {
    active = 0,
    desired = 0,
    current = 0
  }
  L1_6832.electricity = {
    active = 0,
    desired = 0,
    current = 0
  }
  A0_6831.fx = L1_6832
  L1_6832 = A0_6831.Properties
  L1_6832 = L1_6832.Damage
  L1_6832 = L1_6832.eiHazardType
  A0_6831.dmg = ""
  if L1_6832 == 0 then
    A0_6831.dmg = "none"
  elseif L1_6832 == 1 then
    A0_6831.dmg = "fire"
  elseif L1_6832 == 2 then
    A0_6831.dmg = "frost"
  elseif L1_6832 == 3 then
    A0_6831.dmg = "electricity"
  else
    return
  end
end
function Hazard.HandleEntity(A0_6833, A1_6834)
  local L2_6835, L3_6836, L4_6837, L5_6838
  L2_6835 = A0_6833.Properties
  L2_6835 = L2_6835.Damage
  L3_6836 = {}
  L3_6836.x = 0
  L3_6836.y = 0
  L3_6836.z = 0
  L4_6837 = nil
  if A1_6834 ~= nil then
    L5_6838 = A1_6834.actor
    if L5_6838 ~= nil then
      L5_6838 = A0_6833.Properties
      L5_6838 = L5_6838.Damage
      L5_6838 = L5_6838.bOnlyPlayer
      if L5_6838 == 1 then
        L5_6838 = A1_6834.actor
        L5_6838 = L5_6838.IsPlayer
        L5_6838 = L5_6838(L5_6838)
        if not L5_6838 then
          return
        end
      end
      L5_6838 = A0_6833.Properties
      L5_6838 = L5_6838.Damage
      L5_6838 = L5_6838.fDamage
      if L5_6838 > 0 then
        g_gameRules:CreateHit(A1_6834.id, A0_6833.id, A0_6833.id, L5_6838, nil, nil, nil, "fire")
      end
    end
  end
end
function Hazard.HandleEntities(A0_6839)
  local L1_6840, L2_6841, L3_6842, L4_6843, L5_6844
  for L4_6843, L5_6844 in L1_6840(L2_6841) do
    A0_6839:HandleEntity(L5_6844)
  end
end
function Hazard.AddScreenEffect(A0_6845, A1_6846)
  if A1_6846 and A1_6846.actor and A1_6846.actor:IsPlayer() then
    if A0_6845.Properties.Damage.eiHazardType == 1 then
      if A0_6845.fx.fire.active ~= 1 then
        A0_6845.fx.fire.active = 1
        A0_6845.fx.fire.desired = 1
        A0_6845.fx.fire.current = 0
        System.SetScreenFx("FilterBlurring_Type", 0)
        System.SetScreenFx("FilterBlurring_Amount", 0)
        A0_6845:SetTimer(FX_TIMER, 25)
      end
    elseif A0_6845.Properties.Damage.eiHazardType == 2 then
      if A0_6845.fx.frost.active ~= 1 then
        A0_6845.fx.frost.active = 1
        A0_6845.fx.frost.desired = 1
        A0_6845.fx.frost.current = 0
        System.SetScreenFx("ScreenFrost_Active", 1)
        System.SetScreenFx("ScreenFrost_CenterAmount", 1)
        System.SetScreenFx("ScreenFrost_Amount", 0)
        A0_6845:SetTimer(FX_TIMER, 25)
      end
    elseif A0_6845.Properties.Damage.eiHazardType == 3 and A0_6845.fx.electricity.active ~= 1 then
      A0_6845.fx.electricity.active = 1
      A0_6845.fx.electricity.desired = 2
      A0_6845.fx.electricity.current = 0
      System.SetScreenFx("AlienInterference_Active", 1)
      System.SetScreenFx("AlienInterference_Amount", 1)
      A0_6845:SetTimer(FX_TIMER, 25)
    end
  end
end
function Hazard.RemoveScreenEffect(A0_6847, A1_6848)
  if A1_6848 and A1_6848.actor and A1_6848.actor:IsPlayer() and A0_6847.fx[A0_6847.dmg] and A0_6847.fx[A0_6847.dmg].active == 1 then
    A0_6847.fx[A0_6847.dmg].active = 0
    A0_6847.fx[A0_6847.dmg].desired = 0
    A0_6847:SetTimer(FX_TIMER, 25)
  end
end
function Hazard.DoFX(A0_6849)
  local L1_6850
  L1_6850 = A0_6849.dmg
  if L1_6850 ~= "none" then
    if A0_6849.fx[L1_6850].current < 0.01 and A0_6849.fx[L1_6850].desired == 0 then
      A0_6849.fx[L1_6850].current = 0
      if L1_6850 == "frost" then
        System.SetScreenFx("ScreenFrost_Amount", A0_6849.fx[L1_6850].current)
        System.SetScreenFx("ScreenFrost_Active", 0)
      elseif L1_6850 == "fire" then
        System.SetScreenFx("FilterBlurring_Amount", 0)
      elseif L1_6850 == "fire" then
        System.SetScreenFx("AlienInterference_Amount", 0)
        System.SetScreenFx("AlienInterference_Active", 0)
      end
    elseif A0_6849.fx[L1_6850].current < A0_6849.fx[L1_6850].desired then
      if L1_6850 == "frost" then
        A0_6849.fx[L1_6850].current = A0_6849.fx[L1_6850].current + 0.01
        System.SetScreenFx("ScreenFrost_Amount", A0_6849.fx[L1_6850].current)
      elseif L1_6850 == "fire" then
        A0_6849.fx[L1_6850].current = A0_6849.fx[L1_6850].current + 0.01
        System.SetScreenFx("FilterBlurring_Amount", A0_6849.fx[L1_6850].current)
      elseif L1_6850 == "electricity" then
        A0_6849.fx[L1_6850].current = A0_6849.fx[L1_6850].current + 0.1
        System.SetScreenFx("AlienInterference_Amount", A0_6849.fx[L1_6850].current)
      end
      A0_6849:SetTimer(FX_TIMER, 25)
    elseif A0_6849.fx[L1_6850].current > A0_6849.fx[L1_6850].desired then
      if L1_6850 == "frost" then
        A0_6849.fx[L1_6850].current = A0_6849.fx[L1_6850].current - 0.01
        System.SetScreenFx("ScreenFrost_Amount", A0_6849.fx[L1_6850].current)
      elseif L1_6850 == "fire" then
        A0_6849.fx[L1_6850].current = A0_6849.fx[L1_6850].current - 0.03
        System.SetScreenFx("FilterBlurring_Amount", A0_6849.fx[L1_6850].current)
      elseif L1_6850 == "electricity" then
        A0_6849.fx[L1_6850].current = A0_6849.fx[L1_6850].current - 0.1
        System.SetScreenFx("AlienInterference_Amount", A0_6849.fx[L1_6850].current)
      end
      A0_6849:SetTimer(FX_TIMER, 25)
    end
  end
end
function Hazard.Event_Activated(A0_6851)
  Game.AddTacticalEntity(A0_6851.id, eTacticalEntity_Hazard)
  A0_6851:GotoState("Activated")
  A0_6851:ActivateOutput("Activated", true)
  A0_6851:RegisterForAreaEvents(1)
end
function Hazard.Event_Deactivated(A0_6852)
  Game.RemoveTacticalEntity(A0_6852.id, eTacticalEntity_Hazard)
  A0_6852:GotoState("Deactivated")
  A0_6852:ActivateOutput("Deactivated", true)
  A0_6852:RegisterForAreaEvents(0)
end
function Hazard.IsEntityAlreadyInTable(A0_6853, A1_6854)
  for _FORV_5_, _FORV_6_ in pairs(A0_6853.ents) do
    if _FORV_6_.id == A1_6854.id then
      return true
    end
  end
  return false
end
Hazard.Server.Activated = {
  OnBeginState = function(A0_6855)
    if table.getn(A0_6855.ents) > 0 then
      A0_6855:SetTimer(CHECK_TIMER, 1000)
      for _FORV_4_, _FORV_5_ in pairs(A0_6855.ents) do
        if _FORV_5_.actor and _FORV_5_.actor:IsPlayer() then
          A0_6855.onClient:AddScreenEffect(_FORV_5_.actor:GetChannel(), _FORV_5_.id)
        end
      end
    end
  end,
  OnEnterArea = function(A0_6856, A1_6857, A2_6858)
    if not A0_6856:IsEntityAlreadyInTable(A1_6857) then
      A0_6856:ActivateOutput("Enter", true)
      table.insert(A0_6856.ents, A1_6857)
      A0_6856:SetTimer(CHECK_TIMER, 1000)
      A0_6856:HandleEntity(A1_6857)
      if A1_6857.actor and A1_6857.actor:IsPlayer() then
        A0_6856.onClient:AddScreenEffect(A1_6857.actor:GetChannel(), A1_6857.id)
      end
    end
  end,
  OnLeaveArea = function(A0_6859, A1_6860, A2_6861)
    local L3_6862, L4_6863, L5_6864, L6_6865
    for L6_6865, _FORV_7_ in L3_6862(L4_6863) do
      if _FORV_7_ == A1_6860 then
        A0_6859:ActivateOutput("Leave", true)
        table.remove(A0_6859.ents, L6_6865)
        if _FORV_7_.actor and _FORV_7_.actor:IsPlayer() then
          A0_6859.onClient:RemoveScreenEffect(_FORV_7_.actor:GetChannel(), _FORV_7_.id)
        end
        break
      end
    end
  end,
  OnTimer = function(A0_6866, A1_6867, A2_6868)
    if A1_6867 == CHECK_TIMER and A0_6866.ents and table.getn(A0_6866.ents) > 0 then
      A0_6866:HandleEntities()
      A0_6866:SetTimer(CHECK_TIMER, 1000)
    end
  end,
  OnEndState = function(A0_6869)
    local L1_6870
  end
}
Hazard.Client.Activated = {
  OnTimer = function(A0_6871, A1_6872, A2_6873)
    if A1_6872 == FX_TIMER then
      A0_6871:DoFX()
    end
  end
}
Hazard.Client.Deactivated = {
  OnTimer = function(A0_6874, A1_6875, A2_6876)
    if A1_6875 == FX_TIMER then
      A0_6874:DoFX()
    end
  end
}
Hazard.Server.Deactivated = {
  OnBeginState = function(A0_6877)
    for _FORV_4_, _FORV_5_ in pairs(A0_6877.ents) do
      if _FORV_5_.actor and _FORV_5_.actor:IsPlayer() then
        A0_6877.onClient:RemoveScreenEffect(_FORV_5_.actor:GetChannel(), _FORV_5_.id)
      end
    end
  end,
  OnEnterArea = function(A0_6878, A1_6879, A2_6880)
    if not A0_6878:IsEntityAlreadyInTable(A1_6879) then
      table.insert(A0_6878.ents, A1_6879)
    end
  end,
  OnLeaveArea = function(A0_6881, A1_6882, A2_6883)
    local L3_6884, L4_6885, L5_6886, L6_6887, L7_6888
    for L6_6887, L7_6888 in L3_6884(L4_6885) do
      if L7_6888 == A1_6882 then
        table.remove(A0_6881.ents, L6_6887)
        A0_6881:RemoveScreenEffect(L7_6888)
        break
      end
    end
  end
}
Hazard.FlowEvents = {
  Inputs = {
    Activated = {
      Hazard.Event_Activated,
      "bool"
    },
    Deactivated = {
      Hazard.Event_Deactivated,
      "bool"
    }
  },
  Outputs = {
    Activated = "bool",
    Deactivated = "bool",
    Enter = "bool",
    Leave = "bool"
  }
}
