local L0_6660, L1_6661, L2_6662, L3_6663, L4_6664, L5_6665
L0_6660 = {
  L1_6661,
  L2_6662,
  L3_6663
}
L2_6662.Radius = 1
L2_6662.strSourceEntity = ""
L2_6662.strDestEntity = ""
L2_6662.bSafetyLock = 1
L2_6662.groupid = -1
L2_6662.bConnectOnDeath = 1
L2_6662.bMaterial = 0
L1_6661.Properties = L2_6662
L2_6662.Icon = "territory.bmp"
L1_6661.Editor = L2_6662
L2_6662.x = 0
L2_6662.y = 0
L2_6662.z = 0
L1_6661.myLocation = L2_6662
L2_6662.x = 0
L2_6662.y = 0
L2_6662.z = 0
L1_6661.spawnLocation = L2_6662
L2_6662.x = 1
L2_6662.y = 0
L2_6662.z = 0
L1_6661.spawnOrientation = L2_6662
CloneFactory = L1_6661
for L4_6664, L5_6665 in L1_6661(L2_6662) do
  CloneFactory.Properties["bClone" .. L5_6665] = 1
end
L1_6661.OnSpawn = L2_6662
L1_6661.OnReset = L2_6662
L1_6661.Clone = L2_6662
L1_6661.Event_Clone = L2_6662
L1_6661.Event_CloneDied = L2_6662
L4_6664 = {L5_6665, "bool"}
L5_6665 = CloneFactory
L5_6665 = L5_6665.Event_Clone
L3_6663.Clone = L4_6664
L4_6664 = {L5_6665, "bool"}
L5_6665 = CloneFactory
L5_6665 = L5_6665.Event_CloneDied
L3_6663.CloneDied = L4_6664
L2_6662.Inputs = L3_6663
L4_6664 = {L5_6665, "bool"}
L5_6665 = CloneFactory
L5_6665 = L5_6665.Event_Clone
L3_6663.Clone = L4_6664
L4_6664 = {L5_6665, "bool"}
L5_6665 = CloneFactory
L5_6665 = L5_6665.Event_CloneDied
L3_6663.CloneDied = L4_6664
L2_6662.Outputs = L3_6663
L1_6661.FlowEvents = L2_6662
