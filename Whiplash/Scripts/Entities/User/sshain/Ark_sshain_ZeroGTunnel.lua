local L0_9036, L1_9037, L2_9038, L3_9039
L0_9036 = {}
L1_9037 = {}
L1_9037.Icon = "Magnet.bmp"
L0_9036.Editor = L1_9037
L1_9037 = {}
L1_9037.fileModel = "Objects/User/sshain/Ark_sshain_ZeroGGate.cgf"
L0_9036.Properties = L1_9037
L1_9037 = {}
L2_9038 = {}
L2_9038.x = 1
L2_9038.y = 0
L2_9038.z = 0
L1_9037.red = L2_9038
L2_9038 = {}
L2_9038.x = 0
L2_9038.y = 1
L2_9038.z = 0
L1_9037.green = L2_9038
L2_9038 = {}
L2_9038.x = 0
L2_9038.y = 0
L2_9038.z = 1
L1_9037.blue = L2_9038
L0_9036.Color = L1_9037
L0_9036.fGateSpacing = 5
L0_9036.fMaxSpeed = 8
L0_9036.fOffset = 1
L0_9036.fFractionOfSec = 1
L0_9036.fGateScale = 1
L0_9036.iNumberOfGates = 20
L0_9036.iUpdateRate = 10
L1_9037 = {}
L0_9036.vecLastVelocity = L1_9037
L1_9037 = {}
L0_9036.Gates = L1_9037
Ark_sshain_ZeroGTunnel = L0_9036
L0_9036 = Ark_sshain_ZeroGTunnel
function L1_9037(A0_9040)
  local L1_9041, L2_9042, L3_9043, L4_9044, L5_9045
  L1_9041(L2_9042)
  L1_9041(L2_9042, L3_9043)
  A0_9040.fOffset = L1_9041
  A0_9040.fFractionOfSec = L1_9041
  L1_9041(L2_9042, L3_9043)
  if L1_9041 ~= nil then
    for L4_9044 = 1, A0_9040.iNumberOfGates do
      L5_9045 = {}
      CopyVector(L5_9045, g_Vectors.v000)
      L5_9045.y = A0_9040.fGateSpacing * L4_9044 - A0_9040.fOffset
      A0_9040:LoadObject(L4_9044, A0_9040.Properties.fileModel)
      A0_9040:SetSlotPos(L4_9044, L5_9045)
      A0_9040:SetSlotScale(L4_9044, A0_9040.fGateScale)
      A0_9040.Gates[L4_9044] = L4_9044
    end
  end
  L1_9041(L2_9042, L3_9043)
end
L0_9036.Reset = L1_9037
L0_9036 = Ark_sshain_ZeroGTunnel
function L1_9037(A0_9046)
  local L1_9047, L2_9048, L3_9049, L4_9050, L5_9051, L6_9052, L7_9053, L8_9054, L9_9055, L10_9056, L11_9057
  L1_9047 = {}
  L2_9048 = {}
  L11_9057 = L5_9051(L6_9052)
  L3_9049(L4_9050, L5_9051, L6_9052, L7_9053, L8_9054, L9_9055, L10_9056, L11_9057, L5_9051(L6_9052))
  L3_9049(L4_9050)
  for L6_9052, L7_9053 in L3_9049(L4_9050) do
    L9_9055 = L1_9047
    L10_9056 = L7_9053
    L8_9054(L9_9055, L10_9056)
  end
  for L9_9055, L10_9056 in L6_9052(L7_9053) do
    L11_9057 = A0_9046.GetSlotPos
    L11_9057 = L11_9057(A0_9046, L10_9056)
    if L11_9057.y < -A0_9046.fOffset then
      L11_9057.y = L5_9051
      table.remove(A0_9046.Gates, L9_9055)
      table.insert(A0_9046.Gates, #A0_9046.Gates + 1, L10_9056)
    end
    L11_9057.y = L11_9057.y - L4_9050 * A0_9046.fFractionOfSec
    A0_9046:SetSlotPos(L10_9056, L11_9057)
  end
  if L3_9049 == 0 then
    L2_9048 = L6_9052
  end
  L9_9055 = L8_9054
  L11_9057 = L8_9054(L9_9055)
  L6_9052(L7_9053, L8_9054, L9_9055, L10_9056, L11_9057, L8_9054(L9_9055))
  L6_9052(L7_9053, L8_9054)
end
L0_9036.UpdateGates = L1_9037
L0_9036 = Ark_sshain_ZeroGTunnel
function L1_9037(A0_9058, A1_9059)
  A0_9058:UpdateGates()
end
L0_9036.OnUpdate = L1_9037
L0_9036 = Ark_sshain_ZeroGTunnel
function L1_9037(A0_9060)
  A0_9060:Reset()
end
L0_9036.OnReset = L1_9037
L0_9036 = Ark_sshain_ZeroGTunnel
function L1_9037(A0_9061)
  A0_9061:Reset()
end
L0_9036.OnInit = L1_9037
L0_9036 = Ark_sshain_ZeroGTunnel
function L1_9037(A0_9062)
  A0_9062:Reset()
end
L0_9036.OnPropertyChange = L1_9037
L0_9036 = Ark_sshain_ZeroGTunnel
function L1_9037(A0_9063)
  A0_9063:Activate(1)
  BroadcastEvent(A0_9063, "Started")
end
L0_9036.Event_Start = L1_9037
L0_9036 = Ark_sshain_ZeroGTunnel
function L1_9037(A0_9064)
  A0_9064:Activate(0)
  BroadcastEvent(A0_9064, "Stopped")
end
L0_9036.Event_Stop = L1_9037
L0_9036 = Ark_sshain_ZeroGTunnel
L1_9037 = {}
L2_9038 = {}
L3_9039 = {
  Ark_sshain_ZeroGTunnel.Event_Start,
  "bool"
}
L2_9038.Start = L3_9039
L3_9039 = {
  Ark_sshain_ZeroGTunnel.Event_Stop,
  "bool"
}
L2_9038.Stop = L3_9039
L1_9037.Inputs = L2_9038
L2_9038 = {}
L2_9038.Started = "bool"
L2_9038.Stopped = "bool"
L1_9037.Outputs = L2_9038
L0_9036.FlowEvents = L1_9037
