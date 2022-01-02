local L0_8333, L1_8334
L0_8333 = {}
L0_8333.sObstructionCalcSwitchName = "ObstrOcclCalcType"
L1_8334 = {
  "Ignore",
  "SingleRay",
  "MultiRay"
}
L0_8333.sObstructionStateNames = L1_8334
AudioUtils = L0_8333
L0_8333 = AudioUtils
function L1_8334(A0_8335)
  local L1_8336
  if A0_8335 ~= nil and A0_8335 ~= "" then
    L1_8336 = Sound.GetAudioTriggerID(A0_8335)
  end
  return L1_8336
end
L0_8333.LookupTriggerID = L1_8334
L0_8333 = AudioUtils
function L1_8334(A0_8337)
  local L1_8338
  if A0_8337 ~= nil and A0_8337 ~= "" then
    L1_8338 = Sound.GetAudioRtpcID(A0_8337)
  end
  return L1_8338
end
L0_8333.LookupRtpcID = L1_8334
L0_8333 = AudioUtils
function L1_8334(A0_8339)
  local L1_8340
  if A0_8339 ~= nil and A0_8339 ~= "" then
    L1_8340 = Sound.GetAudioSwitchID(A0_8339)
  end
  return L1_8340
end
L0_8333.LookupSwitchID = L1_8334
L0_8333 = AudioUtils
function L1_8334(A0_8341, A1_8342)
  local L2_8343, L3_8344, L4_8345, L5_8346, L6_8347, L7_8348
  L2_8343 = {}
  if A0_8341 ~= nil and A1_8342 ~= nil then
    for L6_8347, L7_8348 in L3_8344(L4_8345) do
      L2_8343[L6_8347] = Sound.GetAudioSwitchStateID(A0_8341, L7_8348)
    end
  end
  return L2_8343
end
L0_8333.LookupSwitchStateIDs = L1_8334
L0_8333 = AudioUtils
function L1_8334(A0_8349)
  local L1_8350
  if A0_8349 ~= nil and A0_8349 ~= "" then
    L1_8350 = Sound.GetAudioEnvironmentID(A0_8349)
  end
  return L1_8350
end
L0_8333.LookupAudioEnvironmentID = L1_8334
L0_8333 = AudioUtils
function L1_8334()
  local L0_8351
  L0_8351 = AudioUtils
  L0_8351 = L0_8351.LookupSwitchID
  L0_8351 = L0_8351(AudioUtils.sObstructionCalcSwitchName)
  return {
    hSwitchID = L0_8351,
    tStateIDs = AudioUtils.LookupSwitchStateIDs(L0_8351, AudioUtils.sObstructionStateNames)
  }
end
L0_8333.LookupObstructionSwitchAndStates = L1_8334
