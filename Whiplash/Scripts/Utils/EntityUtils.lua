local L0_9767, L1_9768
L0_9767 = {}
L1_9768 = {}
L1_9768.mass = 0
L1_9768.density = 0
L0_9767.TempPhysParams = L1_9768
L1_9768 = {}
L1_9768.flags_mask = 0
L1_9768.flags = 0
L1_9768.arkFlags_mask = 0
L1_9768.arkFlags = 0
L0_9767.TempPhysicsFlags = L1_9768
L1_9768 = {}
L1_9768.max_time_step = 0.02
L0_9767.TempSimulationParams = L1_9768
EntityCommon = L0_9767
function L0_9767(A0_9769, A1_9770)
  local L2_9771
  L2_9771 = A0_9769.Properties
  A0_9769.Properties = {}
  mergef(A0_9769, A1_9770, 1)
  mergef(A0_9769.Properties, L2_9771, 1)
  A0_9769.__super = BasicEntity
  return A0_9769
end
MakeDerivedEntity = L0_9767
function L0_9767(A0_9772, A1_9773)
  mergef(A0_9772, A1_9773, 1)
  A0_9772.__super = A1_9773
  return A0_9772
end
MakeDerivedEntityOverride = L0_9767
function L0_9767(A0_9774, A1_9775)
  local L2_9776, L3_9777, L4_9778, L5_9779, L6_9780, L7_9781, L8_9782, L9_9783, L10_9784, L11_9785, L12_9786
  L2_9776 = A0_9774.ProcessBroadcastEvent
  L2_9776(L3_9777, L4_9778)
  L2_9776 = A0_9774.Events
  if L2_9776 then
    L2_9776 = A0_9774.Events
    L2_9776 = L2_9776[A1_9775]
    if L2_9776 then
      for L6_9780, L7_9781 in L3_9777(L4_9778) do
        L8_9782 = L7_9781[1]
        L9_9783 = L7_9781[2]
        if L8_9782 == 0 then
          L10_9784 = Mission
          if L10_9784 then
            L10_9784 = Mission
            L11_9785 = "Event_"
            L12_9786 = L9_9783
            L11_9785 = L11_9785 .. L12_9786
            L10_9784 = L10_9784[L11_9785]
            if L10_9784 ~= nil then
              L11_9785 = L10_9784
              L12_9786 = A0_9774
              L11_9785(L12_9786)
            else
              L11_9785 = System
              L11_9785 = L11_9785.Log
              L12_9786 = "Mission does not support event "
              L12_9786 = L12_9786 .. L9_9783
              L11_9785(L12_9786)
            end
          end
        else
          L10_9784 = System
          L10_9784 = L10_9784.GetEntity
          L11_9785 = L8_9782
          L10_9784 = L10_9784(L11_9785)
          if L10_9784 ~= nil then
            L12_9786 = L10_9784
            L11_9785 = L10_9784.GetName
            L11_9785 = L11_9785(L12_9786)
            L12_9786 = "Event_"
            L12_9786 = L12_9786 .. L9_9783
            L12_9786 = L10_9784[L12_9786]
            if L12_9786 ~= nil then
              L12_9786(L10_9784, A0_9774)
            end
          end
        end
      end
    end
  end
end
BroadcastEvent = L0_9767
function L0_9767()
  local L0_9787
  L0_9787 = System
  L0_9787 = L0_9787.GetEntities
  L0_9787 = L0_9787()
  System.Log("Entities dump")
  for _FORV_4_, _FORV_5_ in pairs(L0_9787) do
    System.Log("address=[" .. tostring(_FORV_5_.id) .. "] rawId=[" .. tostring(_FORV_5_:GetRawId()) .. "] name=[" .. _FORV_5_:GetName() .. "] class=[" .. _FORV_5_.class .. "]")
  end
end
DumpEntities = L0_9767
function L0_9767(A0_9788)
  local L1_9789, L2_9790
  L1_9789 = A0_9788.Properties
  if not L1_9789 then
    L1_9789 = {}
    A0_9788.Properties = L1_9789
  end
  function L1_9789(A0_9791)
    local L1_9792
  end
  A0_9788.RegisterWithAI = L1_9789
  L1_9789 = A0_9788.OnReset
  function L2_9790(A0_9793, ...)
    if _UPVALUE0_ then
      _UPVALUE0_(A0_9793, ...)
    end
    A0_9793:RegisterWithAI()
  end
  A0_9788.OnReset = L2_9790
  L2_9790 = A0_9788.OnSpawn
  function A0_9788.OnSpawn(A0_9795, ...)
    if _UPVALUE0_ then
      _UPVALUE0_(A0_9795, ...)
    end
    A0_9795:RegisterWithAI()
  end
end
MakeTargetableByAI = L0_9767
function L0_9767(A0_9797)
  local L1_9798
  L1_9798 = A0_9797.Properties
  if not L1_9798 then
    L1_9798 = {}
    A0_9797.Properties = L1_9798
  end
  L1_9798 = A0_9797.Properties
  L1_9798 = L1_9798.bProvideAICover
  if not L1_9798 then
    L1_9798 = A0_9797.Properties
    L1_9798.bProvideAICover = 1
  end
  L1_9798 = A0_9797.Server
  if L1_9798 then
    L1_9798 = A0_9797.Server
  else
    L1_9798 = L1_9798 or A0_9797
  end
  function L1_9798.OnStartGame(A0_9799)
    if A0_9799.PropertiesInstance.bProvideAICover ~= 0 and AI ~= nil then
      AI.AddCoverEntity(A0_9799.id)
    end
    if _UPVALUE0_ then
      _UPVALUE0_(A0_9799)
    end
  end
end
MakeAICoverEntity = L0_9767
function L0_9767(A0_9800)
  local L1_9801, L2_9802, L3_9803, L4_9804, L5_9805, L6_9806, L7_9807
  L1_9801 = A0_9800.Properties
  if not L1_9801 then
    L1_9801 = {}
    A0_9800.Properties = L1_9801
  end
  L1_9801 = A0_9800.Properties
  L1_9801 = L1_9801.Health
  if not L1_9801 then
    L1_9801 = A0_9800.Properties
    L2_9802 = {}
    L1_9801.Health = L2_9802
  end
  L1_9801 = A0_9800.Properties
  L1_9801 = L1_9801.Health
  L1_9801.MaxHealth = 500
  L1_9801.bInvulnerable = 0
  L1_9801.bOnlyEnemyFire = 1
  function L2_9802(A0_9808)
    local L1_9809
    L1_9809 = A0_9808.dead
    return L1_9809
  end
  A0_9800.IsDead = L2_9802
  function L2_9802(A0_9810)
    local L1_9811
    A0_9810.dead = nil
    L1_9811 = A0_9810.Properties
    L1_9811 = L1_9811.Health
    L1_9811 = L1_9811.MaxHealth
    A0_9810.health = L1_9811
    L1_9811 = A0_9810.Properties
    L1_9811 = L1_9811.Health
    L1_9811 = L1_9811.bInvulnerable
    L1_9811 = L1_9811 ~= 0
    A0_9810.invulnerable = L1_9811
    L1_9811 = A0_9810.Properties
    L1_9811 = L1_9811.Health
    L1_9811 = L1_9811.bOnlyEnemyFire
    L1_9811 = L1_9811 == 0
    A0_9810.friendlyFire = L1_9811
  end
  A0_9800.SetupHealthProperties = L2_9802
  L2_9802 = A0_9800.Server
  if not L2_9802 then
    L2_9802 = {}
    A0_9800.Server = L2_9802
  end
  L2_9802 = A0_9800.Client
  if not L2_9802 then
    L2_9802 = {}
    A0_9800.Client = L2_9802
  end
  function L2_9802(A0_9812)
    local L2_9813
    L2_9813 = 1
    if A0_9812.Properties.Health.MaxHealth > 0 then
      L2_9813 = A0_9812.health / A0_9812.Properties.Health.MaxHealth
    end
    return L2_9813
  end
  A0_9800.GetHealthRatio = L2_9802
  function L2_9802(A0_9814)
    local L1_9815
    L1_9815 = A0_9814.invulnerable
    return L1_9815
  end
  A0_9800.IsInvulnerable = L2_9802
  function L2_9802(A0_9816)
    local L1_9817
    L1_9817 = A0_9816.Properties
    L1_9817 = L1_9817.Health
    L1_9817 = L1_9817.MaxHealth
    return L1_9817
  end
  A0_9800.GetMaxHealth = L2_9802
  L2_9802 = A0_9800.Server
  L2_9802 = L2_9802.OnHit
  L3_9803 = A0_9800.Server
  function L4_9804(A0_9818, A1_9819)
    local L2_9820
    L2_9820 = A0_9818.health
    if L2_9820 then
      L2_9820 = A0_9818.IsInvulnerable
    elseif L2_9820 == nil then
      L2_9820 = Log
      L2_9820("$4%s:%s Health not initialized!", A0_9818.class, A0_9818:GetName())
      L2_9820 = A0_9818.SetupHealthProperties
      L2_9820(A0_9818)
    end
    L2_9820 = false
    if _UPVALUE0_ then
      L2_9820 = _UPVALUE0_(A0_9818, A1_9819)
    end
    if not L2_9820 then
      if A0_9818:IsInvulnerable() then
        A0_9818:ActivateOutput("Health", A0_9818:GetHealthRatio() * 100)
        A0_9818:Event_Hit()
        return false
      end
      if not A0_9818.friendlyFire and System.GetEntity(A1_9819.shooterId) ~= nil and AI.GetReactionOf(A0_9818.id, A1_9819.shooterId) == Friendly then
        A0_9818:ActivateOutput("Health", A0_9818:GetHealthRatio() * 100)
        A0_9818:Event_Hit()
        return false
      end
      A0_9818.health = A0_9818.health - A1_9819.damage
    end
    A0_9818:ActivateOutput("Health", A0_9818:GetHealthRatio() * 100)
    A0_9818:Event_Hit()
    if A0_9818.health <= 0 then
      A0_9818.dead = true
      A0_9818:Event_Dead()
      return true
    end
  end
  L3_9803.OnHit = L4_9804
  L3_9803 = A0_9800.OnReset
  function L4_9804(A0_9821, ...)
    if _UPVALUE0_ then
      _UPVALUE0_(A0_9821, ...)
    end
    A0_9821:SetupHealthProperties()
  end
  A0_9800.OnReset = L4_9804
  L4_9804 = A0_9800.OnSpawn
  function L5_9805(A0_9823, ...)
    if _UPVALUE0_ then
      _UPVALUE0_(A0_9823, ...)
    end
    A0_9823:SetupHealthProperties()
  end
  A0_9800.OnSpawn = L5_9805
  function L5_9805(A0_9825)
    local L1_9826
    A0_9825.dead = nil
    L1_9826 = A0_9825.Properties
    L1_9826 = L1_9826.Health
    L1_9826 = L1_9826.MaxHealth
    A0_9825.health = L1_9826
  end
  A0_9800.Event_ResetHealth = L5_9805
  function L5_9805(A0_9827, A1_9828)
    A0_9827.invulnerable = A1_9828
  end
  A0_9800.SetInvulnerability = L5_9805
  function L5_9805(A0_9829)
    A0_9829:SetInvulnerability(false)
  end
  A0_9800.Event_MakeVulnerable = L5_9805
  function L5_9805(A0_9830)
    A0_9830:SetInvulnerability(true)
  end
  A0_9800.Event_MakeInvulnerable = L5_9805
  function L5_9805(A0_9831)
    A0_9831:TriggerEvent(AIEVENT_DISABLE)
    BroadcastEvent(A0_9831, "Dead")
  end
  A0_9800.Event_Dead = L5_9805
  function L5_9805(A0_9832)
    BroadcastEvent(A0_9832, "Hit")
  end
  A0_9800.Event_Hit = L5_9805
  L5_9805 = A0_9800.FlowEvents
  if not L5_9805 then
    L5_9805 = {}
    A0_9800.FlowEvents = L5_9805
  end
  L5_9805 = A0_9800.FlowEvents
  L6_9806 = L5_9805.Inputs
  L6_9806 = L6_9806 or {}
  L5_9805.Inputs = L6_9806
  L6_9806 = L5_9805.Outputs
  L6_9806 = L6_9806 or {}
  L5_9805.Outputs = L6_9806
  L6_9806 = L5_9805.Inputs
  L7_9807 = {
    A0_9800.Event_ResetHealth,
    "any"
  }
  L6_9806.ResetHealth = L7_9807
  L6_9806 = L5_9805.Inputs
  L7_9807 = {
    A0_9800.Event_MakeVulnerable,
    "any"
  }
  L6_9806.MakeVulnerable = L7_9807
  L6_9806 = L5_9805.Inputs
  L7_9807 = {
    A0_9800.Event_MakeInvulnerable,
    "any"
  }
  L6_9806.MakeInvulnerable = L7_9807
  L6_9806 = L5_9805.Outputs
  L6_9806.Dead = "bool"
  L6_9806 = L5_9805.Outputs
  L6_9806.Hit = "bool"
  L6_9806 = L5_9805.Outputs
  L6_9806.Health = "float"
end
MakeKillable = L0_9767
function L0_9767(A0_9833)
  local L1_9834, L2_9835
  L1_9834 = A0_9833.Properties
  if not L1_9834 then
    L1_9834 = {}
    A0_9833.Properties = L1_9834
  end
  L1_9834 = A0_9833.Properties
  L1_9834 = L1_9834.RenderProxyOptions
  if not L1_9834 then
    L1_9834 = A0_9833.Properties
    L2_9835 = {}
    L1_9834.RenderProxyOptions = L2_9835
  end
  L1_9834 = A0_9833.Properties
  L1_9834 = L1_9834.RenderProxyOptions
  L1_9834.bAnimateOffScreenShadow = 0
  function L1_9834(A0_9836)
    A0_9836.bAnimateOffScreenShadow = A0_9836.Properties.RenderProxyOptions.bAnimateOffScreenShadow ~= 0
    if A0_9836.bAnimateOffScreenShadow then
      A0_9836:CreateRenderProxy()
    end
    A0_9836:SetAnimateOffScreenShadow(A0_9836.bAnimateOffScreenShadow)
  end
  A0_9833.SetRenderProxyOptions = L1_9834
  L1_9834 = A0_9833.OnReset
  function L2_9835(A0_9837, ...)
    if _UPVALUE0_ then
      _UPVALUE0_(A0_9837, ...)
    end
    A0_9837:SetRenderProxyOptions()
  end
  A0_9833.OnReset = L2_9835
  L2_9835 = A0_9833.OnSpawn
  function A0_9833.OnSpawn(A0_9839, ...)
    if _UPVALUE0_ then
      _UPVALUE0_(A0_9839, ...)
    end
    A0_9839:SetRenderProxyOptions()
  end
end
MakeRenderProxyOptions = L0_9767
function L0_9767(A0_9841)
  local L1_9842
  L1_9842 = A0_9841.Properties
  if not L1_9842 then
    L1_9842 = {}
    A0_9841.Properties = L1_9842
  end
  L1_9842 = A0_9841.Properties
  L1_9842.UseMessage = ""
  L1_9842 = A0_9841.Properties
  L1_9842.bUsable = 0
  function L1_9842(A0_9843)
    local L1_9844
    L1_9844 = A0_9843.__usable
    if not L1_9844 then
      L1_9844 = A0_9843.Properties
      L1_9844 = L1_9844.bUsable
      A0_9843.__origUsable = L1_9844
      L1_9844 = A0_9843.Properties
      L1_9844 = L1_9844.bPickable
      A0_9843.__origPickable = L1_9844
      L1_9844 = A0_9843.Properties
      L1_9844 = L1_9844.bUsable
      if L1_9844 ~= 1 then
        L1_9844 = A0_9843.Properties
        L1_9844 = L1_9844.bPickable
      else
        if L1_9844 == 1 then
          A0_9843.__usable = 1
      end
      else
        A0_9843.__usable = 0
      end
    end
    L1_9844 = A0_9843.__usable
    return L1_9844
  end
  A0_9841.IsUsable = L1_9842
  function L1_9842(A0_9845)
    local L1_9846
    A0_9845.__usable = nil
  end
  A0_9841.ResetOnUsed = L1_9842
  function L1_9842(A0_9847)
    return A0_9847.Properties.UseMessage
  end
  A0_9841.GetUsableMessage = L1_9842
  function L1_9842(A0_9848, A1_9849, A2_9850)
    BroadcastEvent(A0_9848, "Used")
    if A0_9848.Base_OnUsed then
      A0_9848:Base_OnUsed(A1_9849, A2_9850)
    end
  end
  A0_9841.OnUsed = L1_9842
  function L1_9842(A0_9851)
    BroadcastEvent(A0_9851, "Used")
  end
  A0_9841.Event_Used = L1_9842
  function L1_9842(A0_9852)
    A0_9852.__usable = 1
    BroadcastEvent(A0_9852, "EnableUsable")
  end
  A0_9841.Event_EnableUsable = L1_9842
  function L1_9842(A0_9853)
    A0_9853.__usable = 0
    BroadcastEvent(A0_9853, "DisableUsable")
  end
  A0_9841.Event_DisableUsable = L1_9842
end
MakeUsable = L0_9767
function L0_9767(A0_9854)
  local L1_9855
  L1_9855 = A0_9854.Properties
  if not L1_9855 then
    L1_9855 = {}
    A0_9854.Properties = L1_9855
  end
  L1_9855 = A0_9854.Properties
  L1_9855.bPickable = 0
end
MakePickable = L0_9767
function L0_9767(A0_9856)
  local L1_9857
  L1_9857 = A0_9856.Properties
  if not L1_9857 then
    L1_9857 = {}
    A0_9856.Properties = L1_9857
  end
  L1_9857 = A0_9856.Properties
  L1_9857.bHeavyObject = 0
end
AddHeavyObjectProperty = L0_9767
function L0_9767(A0_9858)
  local L1_9859, L2_9860, L3_9861
  L1_9859 = A0_9858.Properties
  if not L1_9859 then
    L1_9859 = {}
    A0_9858.Properties = L1_9859
  end
  L1_9859 = A0_9858.Properties
  L1_9859 = L1_9859.AutoAimTarget
  if not L1_9859 then
    L1_9859 = A0_9858.Properties
    L2_9860 = {}
    L1_9859.AutoAimTarget = L2_9860
  end
  L1_9859 = A0_9858.Properties
  L1_9859 = L1_9859.AutoAimTarget
  L1_9859.bMakeTargetableOnThrown = 0
  L1_9859 = A0_9858.Properties
  L1_9859 = L1_9859.AutoAimTarget
  L1_9859.InnerRadiusVolumeFactor = 0.35
  L1_9859 = A0_9858.Properties
  L1_9859 = L1_9859.AutoAimTarget
  L1_9859.OuterRadiusVolumeFactor = 0.6
  L1_9859 = A0_9858.Properties
  L1_9859 = L1_9859.AutoAimTarget
  L1_9859.SnapRadiusVolumeFactor = 1.25
  L1_9859 = A0_9858.Properties
  L1_9859 = L1_9859.AutoAimTarget
  L1_9859.AfterThrownTargetableTime = 3
  function L1_9859(A0_9862)
    if A0_9862.Properties.AutoAimTarget.bMakeTargetableOnThrown ~= 0 and A0_9862:CanBeMadeTargetable() then
      Game.RegisterWithAutoAimManager(A0_9862.id, A0_9862.Properties.AutoAimTarget.InnerRadiusVolumeFactor, A0_9862.Properties.AutoAimTarget.OuterRadiusVolumeFactor, A0_9862.Properties.AutoAimTarget.SnapRadiusVolumeFactor)
      Script.SetTimer(A0_9862.Properties.AutoAimTarget.AfterThrownTargetableTime * 1000, function()
        _UPVALUE0_:AfterThrownTimer()
      end)
      A0_9862.isTargetable = 1
    end
  end
  A0_9858.OnThrown = L1_9859
  function L1_9859(A0_9863)
    if A0_9863.isTargetable then
      Game.UnregisterFromAutoAimManager(A0_9863.id)
      A0_9863.isTargetable = nil
    end
  end
  A0_9858.AfterThrownTimer = L1_9859
  L1_9859 = A0_9858.CanBeMadeTargetable
  function L2_9860(A0_9864, ...)
    local L3_9866, L4_9867
    L3_9866 = _UPVALUE0_
    if L3_9866 then
      L3_9866 = _UPVALUE0_
      L4_9867 = A0_9864
      return L3_9866(L4_9867, ...)
    end
    L3_9866 = true
    return L3_9866
  end
  A0_9858.CanBeMadeTargetable = L2_9860
  L2_9860 = A0_9858.OnShutDown
  function L3_9861(A0_9868, ...)
    if _UPVALUE0_ then
      _UPVALUE0_(A0_9868, ...)
    end
    if A0_9868.isTargetable then
      Game.UnregisterFromAutoAimManager(A0_9868.id)
      A0_9868.isTargetable = nil
    end
  end
  A0_9858.OnShutDown = L3_9861
  L3_9861 = A0_9858.OnReset
  function A0_9858.OnReset(A0_9870, ...)
    if _UPVALUE0_ then
      _UPVALUE0_(A0_9870, ...)
    end
    if A0_9870.isTargetable then
      Game.UnregisterFromAutoAimManager(A0_9870.id)
      A0_9870.isTargetable = nil
    end
  end
end
MakeThrownObjectTargetable = L0_9767
function L0_9767(A0_9872)
  local L1_9873, L2_9874, L3_9875, L4_9876, L5_9877, L6_9878, L7_9879, L8_9880, L9_9881, L10_9882, L11_9883, L12_9884, L13_9885, L14_9886, L15_9887, L16_9888, L17_9889
  A0_9872.spawnedEntity = nil
  L1_9873 = A0_9872.Properties
  if not L1_9873 then
    L1_9873 = {}
    A0_9872.Properties = L1_9873
  end
  L1_9873 = A0_9872.Properties
  L1_9873.bSpawner = false
  L2_9874 = A0_9872.OnDestroy
  function L3_9875(A0_9890, ...)
    if A0_9890.whoSpawnedMe then
      A0_9890.whoSpawnedMe:NotifyRemoval(A0_9890.id)
    end
    if _UPVALUE0_ then
      _UPVALUE0_(A0_9890, ...)
    end
  end
  A0_9872.OnDestroy = L3_9875
  function L3_9875(A0_9892, A1_9893)
    local L2_9894
    L2_9894 = A0_9892.spawnedEntity
    if L2_9894 then
      L2_9894 = A0_9892.spawnedEntity
      if L2_9894 == A1_9893 then
        A0_9892.spawnedEntity = nil
        A0_9892.lastSpawnedEntity = nil
      end
    end
  end
  A0_9872.NotifyRemoval = L3_9875
  L3_9875 = A0_9872.OnReset
  function L4_9876(A0_9895, ...)
    A0_9895.lastSpawnedEntity = nil
    if A0_9895.spawnedEntity then
      System.RemoveEntity(A0_9895.spawnedEntity)
      A0_9895.spawnedEntity = nil
    end
    if A0_9895.whoSpawnedMe then
      System.RemoveEntity(A0_9895.id)
      return
    end
    _UPVALUE0_(A0_9895, ...)
  end
  A0_9872.OnReset = L4_9876
  L4_9876 = A0_9872.OnEditorSetGameMode
  function L5_9877(A0_9897, ...)
    local L2_9899, L3_9900, L4_9901
    A0_9897.lastSpawnedEntity = nil
    L2_9899 = A0_9897.spawnedEntity
    if L2_9899 then
      A0_9897.spawnedEntity = nil
    end
    L2_9899 = _UPVALUE0_
    if L2_9899 then
      L2_9899 = _UPVALUE0_
      L3_9900 = A0_9897
      L4_9901 = ...
      L2_9899(L3_9900, L4_9901)
    end
  end
  A0_9872.OnEditorSetGameMode = L5_9877
  function L5_9877(A0_9902)
    if A0_9902.spawnedEntity then
      return A0_9902.spawnedEntity
    else
      return A0_9902.lastSpawnedEntity
    end
  end
  A0_9872.GetFlowgraphForwardingEntity = L5_9877
  function L5_9877(A0_9903)
    BroadcastEvent(A0_9903, "Spawned")
  end
  A0_9872.Event_Spawned = L5_9877
  L5_9877 = A0_9872.FlowEvents
  if not L5_9877 then
    L5_9877 = {}
    A0_9872.FlowEvents = L5_9877
  end
  L5_9877 = A0_9872.FlowEvents
  L6_9878 = L5_9877.Inputs
  L6_9878 = L6_9878 or {}
  L5_9877.Inputs = L6_9878
  L6_9878 = L5_9877.Outputs
  L6_9878 = L6_9878 or {}
  L5_9877.Outputs = L6_9878
  L6_9878 = {}
  L7_9879, L8_9880 = nil, nil
  for L12_9884, L13_9885 in L9_9881(L10_9882) do
    L6_9878[L12_9884] = L13_9885
  end
  for L12_9884, L13_9885 in L9_9881(L10_9882) do
    L6_9878[L12_9884] = L13_9885
  end
  for L12_9884, L13_9885 in L9_9881(L10_9882) do
    L14_9886 = L5_9877.Inputs
    L14_9886 = L14_9886[L12_9884]
    L15_9887 = L5_9877.Outputs
    L15_9887 = L15_9887[L12_9884]
    L16_9888 = L12_9884 == "Dead"
    L17_9889 = L13_9885
    if type(L17_9889) == "table" then
      L17_9889 = L17_9889[1]
    else
      L17_9889 = nil
    end
    A0_9872["Event_" .. L12_9884] = function(A0_9904, A1_9905, A2_9906)
      local L3_9907
      L3_9907 = _UPVALUE0_
      if L3_9907 then
        if A1_9905 then
          L3_9907 = A1_9905.id
        else
        end
        if L3_9907 == A0_9904.spawnedEntity or A1_9905 == A0_9904 then
          L3_9907 = BroadcastEvent
          L3_9907(A0_9904, _UPVALUE1_)
        end
      end
      L3_9907 = _UPVALUE2_
      if L3_9907 then
        L3_9907 = A0_9904.spawnedEntity
        if L3_9907 then
          if A1_9905 then
            L3_9907 = A0_9904.spawnedEntity
          elseif L3_9907 ~= A1_9905.id then
            L3_9907 = System
            L3_9907 = L3_9907.GetEntity
            L3_9907 = L3_9907(A0_9904.spawnedEntity)
            if _UPVALUE3_ and L3_9907 and L3_9907 ~= A1_9905 then
              _UPVALUE3_(L3_9907, A1_9905, A2_9906)
            end
          end
        end
      else
        L3_9907 = _UPVALUE3_
        if L3_9907 then
          L3_9907 = A0_9904.spawnedEntity
          if not L3_9907 then
            L3_9907 = _UPVALUE3_
            L3_9907(A0_9904, A1_9905, A2_9906)
          end
        end
      end
      L3_9907 = _UPVALUE4_
      if L3_9907 and A1_9905 then
        L3_9907 = A1_9905.id
        if L3_9907 == A0_9904.spawnedEntity then
          A0_9904.spawnedEntity = nil
        end
      end
    end
  end
  A0_9872.Event_Spawn = L9_9881
  A0_9872.Event_Spawn_Internal = L9_9881
  A0_9872.Event_SpawnKeep = L9_9881
  L12_9884 = "bool"
  L9_9881.Spawn = L10_9882
  L9_9881.Spawned = "entity"
end
MakeSpawnable = L0_9767
function L0_9767(A0_9908)
  local L1_9909
  if A0_9908 == nil then
    return
  end
  L1_9909 = A0_9908.Properties
  if L1_9909 == nil then
    L1_9909 = {}
    A0_9908.Properties = L1_9909
  end
  L1_9909 = A0_9908.Properties
  L1_9909 = L1_9909.Physics
  if L1_9909 == nil then
    L1_9909 = A0_9908.Properties
    L1_9909.Physics = {}
  end
  L1_9909 = A0_9908.Properties
  L1_9909 = L1_9909.Physics
  L1_9909.CollisionFiltering = {}
  L1_9909 = A0_9908.Properties
  L1_9909 = L1_9909.Physics
  L1_9909 = L1_9909.CollisionFiltering
  L1_9909.collisionType = {}
  L1_9909.collisionIgnore = {}
  for _FORV_5_, _FORV_6_ in pairs(g_PhysicsCollisionClass) do
    L1_9909.collisionType[_FORV_5_] = 0
    L1_9909.collisionIgnore[_FORV_5_] = 0
  end
end
SetupCollisionFiltering = L0_9767
function L0_9767(A0_9910)
  local L1_9911, L2_9912
  L1_9911 = {}
  L1_9911.collisionClass = 0
  L2_9912 = gcc_coral
  L1_9911.collisionClassIgnore = L2_9912
  L2_9912 = A0_9910.Properties
  L2_9912 = L2_9912.Physics
  if L2_9912 == nil then
    return L1_9911
  end
  L2_9912 = A0_9910.Properties
  L2_9912 = L2_9912.Physics
  L2_9912 = L2_9912.CollisionFiltering
  if L2_9912 == nil then
    return L1_9911
  end
  L2_9912 = A0_9910.Properties
  L2_9912 = L2_9912.Physics
  L2_9912 = L2_9912.CollisionFiltering
  for _FORV_6_, _FORV_7_ in pairs(L2_9912.collisionType) do
    if g_PhysicsCollisionClass[_FORV_6_] ~= nil and _FORV_7_ == 1 then
      L1_9911.collisionClass = L1_9911.collisionClass + g_PhysicsCollisionClass[_FORV_6_]
    end
  end
  for _FORV_6_, _FORV_7_ in pairs(L2_9912.collisionIgnore) do
    if g_PhysicsCollisionClass[_FORV_6_] ~= nil and _FORV_7_ == 1 then
      L1_9911.collisionClassIgnore = L1_9911.collisionClassIgnore + g_PhysicsCollisionClass[_FORV_6_]
    end
  end
  return L1_9911
end
GetCollisionFiltering = L0_9767
function L0_9767(A0_9913, A1_9914)
  if A0_9913.Properties.Physics ~= nil and A0_9913.Properties.Physics.CollisionFiltering ~= nil then
    A0_9913:SetPhysicParams(PHYSICPARAM_COLLISION_CLASS, A1_9914)
  end
end
ApplyCollisionFiltering = L0_9767
L0_9767 = EntityCommon
function L1_9768(A0_9915, A1_9916, A2_9917, A3_9918, A4_9919)
  local L5_9920, L6_9921, L7_9922, L8_9923, L9_9924, L10_9925, L11_9926, L12_9927, L13_9928, L14_9929, L15_9930, L16_9931, L17_9932, L18_9933
  L5_9920 = A2_9917.Mass
  L6_9921 = A2_9917.Density
  if A3_9918 and A3_9918 == 0 then
    L5_9920 = 0
    L6_9921 = 0
  end
  L7_9922 = nil
  if A4_9919 ~= nil then
    L7_9922 = A4_9919
  else
    L8_9923 = A2_9917.bArticulated
    if L8_9923 == 1 then
      L7_9922 = PE_ARTICULATED
    else
      L8_9923 = A2_9917.bRigidBody
      if L8_9923 == 1 then
        L7_9922 = PE_RIGID
      else
        L7_9922 = PE_STATIC
      end
    end
  end
  L8_9923 = EntityCommon
  L8_9923 = L8_9923.TempPhysParams
  L8_9923.density = L6_9921
  L8_9923.mass = L5_9920
  L8_9923.flags = 0
  if L9_9924 then
    L8_9923.CGFprops = ""
    for L12_9927, L13_9928 in L9_9924(L10_9925) do
      if L14_9929 == "table" then
        for L17_9932, L18_9933 in L14_9929(L15_9930) do
          if L18_9933 ~= "" then
            L8_9923.CGFprops = L8_9923.CGFprops .. L17_9932 .. "=" .. L18_9933 .. "\n"
          end
        end
      elseif L13_9928 ~= "" then
        L17_9932 = L13_9928
        L18_9933 = "\n"
        L8_9923.CGFprops = L14_9929
      end
    end
  end
  L9_9924(L10_9925, L11_9926, L12_9927, L13_9928)
  L18_9933 = L11_9926(L12_9927)
  L9_9924(L10_9925, L11_9926, L12_9927, L13_9928, L14_9929, L15_9930, L16_9931, L17_9932, L18_9933, L11_9926(L12_9927))
  if L5_9920 > 0 or L6_9921 > 0 then
    L9_9924.collisionClass = L10_9925
    L10_9925(L11_9926, L12_9927)
  end
  if L9_9924 then
    for L14_9929, L15_9930 in next, L10_9925, nil do
      L10_9925[L14_9929] = nil
    end
    for L14_9929, L15_9930 in next, L9_9924, nil do
      if (L14_9929 ~= "max_time_step" or L15_9930 < 0.0199 or L15_9930 > 0.0201) and (L14_9929 ~= "sleep_speed" or L15_9930 < 0.0399 or L15_9930 > 0.0401) then
        L10_9925[L14_9929] = L15_9930
      end
    end
    L11_9926(L12_9927, L13_9928, L14_9929)
  end
  if L9_9924 then
    L10_9925(L11_9926, L12_9927, L13_9928)
  end
  if L10_9925 then
    if L11_9926 == 1 then
      L14_9929.foreignFlags = L15_9930
      L11_9926(L12_9927, L13_9928, L14_9929)
    end
  end
  L11_9926.flags = 0
  if L12_9927 == 1 then
    L11_9926.flags = L12_9927
  end
  if L12_9927 then
    if L12_9927 then
      if L12_9927 == 1 then
        L11_9926.flags = L12_9927
      end
    end
  end
  if L12_9927 then
    if L12_9927 then
      if L12_9927 == 1 then
        L11_9926.flags = L12_9927
      end
    end
  end
  if L12_9927 ~= nil then
  elseif L12_9927 == 0 then
    L11_9926.flags = L12_9927
  end
  if L12_9927 then
    if L12_9927 then
      L11_9926.flags = L12_9927
    end
  end
  L11_9926.flags_mask = L12_9927
  L12_9927(L13_9928, L14_9929, L15_9930)
  L11_9926.arkFlags = 0
  if L12_9927 == 1 then
    L11_9926.arkFlags = L12_9927
  end
  L12_9927(L13_9928, L14_9929, L15_9930)
  if L12_9927 == 0 then
    L12_9927(L13_9928, L14_9929)
  else
    L12_9927(L13_9928, L14_9929)
  end
end
L0_9767.PhysicalizeRigid = L1_9768
function L0_9767(A0_9934, A1_9935)
  return A0_9934:GetName() < A1_9935:GetName()
end
CompareEntitiesByName = L0_9767
function L0_9767(A0_9936)
  function CompareEntitiesByDistanceFromPoint(A0_9937, A1_9938)
    distance1 = DistanceSqVectors(A0_9937:GetWorldPos(), _UPVALUE0_)
    distance2 = DistanceSqVectors(A1_9938:GetWorldPos(), _UPVALUE0_)
    return distance1 > distance2
  end
  return CompareEntitiesByDistanceFromPoint
end
MakeCompareEntitiesByDistanceFromPoint = L0_9767
function L0_9767(A0_9939, A1_9940)
  local L2_9941
  if A1_9940 and A1_9940.AITerritoryAndWave then
    L2_9941 = A1_9940.AITerritoryAndWave.aiwave_Wave
  end
  if L2_9941 and L2_9941 ~= "<None>" then
    AddBookmarkedToWave(A0_9939, L2_9941)
    return false
  end
  return true
end
OnEntityBookmarkCreated = L0_9767
