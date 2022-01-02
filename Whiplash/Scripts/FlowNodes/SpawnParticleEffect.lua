local L0_9482, L1_9483
L0_9482 = {}
L0_9482.Category = "approved"
L1_9483 = {
  {"t_Activate", "bool"},
  {"Position", "vec3"},
  {"Direction", "vec3"},
  {"Effect", "string"}
}
L0_9482.Inputs = L1_9483
L1_9483 = {
  {"Done", "bool"}
}
L0_9482.Outputs = L1_9483
function L1_9483(A0_9484, A1_9485, A2_9486, A3_9487)
  if LengthSqVector(A2_9486) == 0 then
    A2_9486 = g_Vectors.v001
  end
  Particle.SpawnEffect(A3_9487, A1_9485, A2_9486, 1)
  return
end
L0_9482.Implementation = L1_9483
SpawnParticleEffect = L0_9482
