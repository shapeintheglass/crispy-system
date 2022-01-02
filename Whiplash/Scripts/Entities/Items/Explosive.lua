function CreateExplosive(A0_5577)
  local L1_5578, L2_5579
  L1_5578 = _G
  L1_5578 = L1_5578[A0_5577]
  if not L1_5578 then
    L1_5578 = {}
    function L2_5579(A0_5580, A1_5581)
      local L2_5582
      L2_5582 = true
      return L2_5582
    end
    L1_5578.CanDisarm = L2_5579
    L2_5579 = _G
    L2_5579[A0_5577] = L1_5578
  end
end
CreateExplosive("c4explosive")
