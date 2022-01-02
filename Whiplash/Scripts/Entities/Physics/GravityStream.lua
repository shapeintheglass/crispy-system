Script.ReloadEntityScript("GravityValve")
GravityStream = {
  Editor = {
    Icon = "GravitySphere.bmp",
    IconOnTop = 1
  }
}
function GravityStream.OnLoad(A0_7790, A1_7791)
  A0_7790.oldPos = A1_7791.oldPos
end
function GravityStream.OnSave(A0_7792, A1_7793)
  A1_7793.oldPos = A0_7792.oldPos
end
function GravityStream.GetValve(A0_7794)
  local L1_7795, L2_7796, L3_7797, L4_7798, L5_7799, L6_7800
  L2_7796 = A0_7794
  L1_7795 = A0_7794.GetName
  L1_7795 = L1_7795(L2_7796)
  L2_7796 = string
  L2_7796 = L2_7796.find
  L3_7797 = L1_7795
  L4_7798 = "_[pP]"
  L5_7799 = 1
  L3_7797 = L2_7796(L3_7797, L4_7798, L5_7799)
  if not L2_7796 then
    L4_7798 = LogWarning
    L5_7799 = "Incorrectly formatted name - should be GravityValveName_p?; GravityValveName is the name of the associated valve, and ? is an integer indice."
    L4_7798(L5_7799)
    return
  end
  L4_7798 = tonumber
  L5_7799 = string
  L5_7799 = L5_7799.sub
  L6_7800 = L1_7795
  L6_7800 = L5_7799(L6_7800, L3_7797 + 1)
  L4_7798 = L4_7798(L5_7799, L6_7800, L5_7799(L6_7800, L3_7797 + 1))
  if not L4_7798 then
    return
  end
  L5_7799 = System
  L5_7799 = L5_7799.GetEntityByName
  L6_7800 = string
  L6_7800 = L6_7800.sub
  L6_7800 = L6_7800(L1_7795, 1, L2_7796 - 1)
  L5_7799 = L5_7799(L6_7800, L6_7800(L1_7795, 1, L2_7796 - 1))
  L6_7800 = L5_7799
  return L6_7800, L4_7798
end
function GravityStream.OnUpdate(A0_7801)
  local L1_7802, L2_7803, L3_7804, L4_7805
  L2_7803 = A0_7801
  L1_7802 = A0_7801.GetPos
  L1_7802 = L1_7802(L2_7803)
  L2_7803 = A0_7801.oldPos
  if L2_7803 then
    L2_7803 = LengthVector
    L3_7804 = DifferenceVectors
    L4_7805 = L1_7802
    L4_7805 = L3_7804(L4_7805, A0_7801.oldPos)
    L2_7803 = L2_7803(L3_7804, L4_7805, L3_7804(L4_7805, A0_7801.oldPos))
  elseif L2_7803 > 1.0E-4 then
    A0_7801.oldPos = L1_7802
    L3_7804 = A0_7801
    L2_7803 = A0_7801.GetValve
    L3_7804 = L2_7803(L3_7804)
    if L2_7803 then
      L4_7805 = L2_7803.OnChange
      L4_7805(L2_7803, L3_7804)
    end
    return
  end
  L3_7804 = A0_7801
  L2_7803 = A0_7801.GetName
  L2_7803 = L2_7803(L3_7804)
  L3_7804 = A0_7801._Name
  L3_7804 = not L3_7804
  if L3_7804 == L2_7803 then
    A0_7801._Name = L2_7803
    L4_7805 = A0_7801
    L3_7804 = A0_7801.GetValve
    L4_7805 = L3_7804(L4_7805)
    if L3_7804 then
      L3_7804:OnChange(L4_7805)
    end
  end
end
GravityStream.OnSpawn = GravityStream.OnUpdate
GravityStream.OnDestroy = GravityStream.OnUpdate
GravityStream.OnReset = GravityStream.OnUpdate
GravityStream.OnPropertyChange = GravityStream.OnUpdate
