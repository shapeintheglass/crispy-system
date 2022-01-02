Script.ReloadScript("Scripts/Entities/Others/RigidBody.lua")
DestroyedVehicle = {
  type = "DestroyedVehicle",
  Properties = {
    bUsable = 1,
    Physics = {Mass = 2000}
  },
  PropertiesInstance = {bProvideAICover = 1},
  Editor = {IsScalable = false}
}
MakeDerivedEntity(DestroyedVehicle, RigidBody)
AddHeavyObjectProperty(DestroyedVehicle)
MakeAICoverEntity(DestroyedVehicle)
SetupCollisionFiltering(DestroyedVehicle)
function DestroyedVehicle.IsUsable(A0_9166)
  local L1_9167
  L1_9167 = A0_9166.Properties
  L1_9167 = L1_9167.bUsable
  if L1_9167 ~= 0 then
    L1_9167 = 1
    return L1_9167
  end
  L1_9167 = 0
  return L1_9167
end
function DestroyedVehicle.OnReset(A0_9168)
  RigidBody.OnReset(A0_9168)
  ApplyCollisionFiltering(A0_9168, GetCollisionFiltering(A0_9168))
end
