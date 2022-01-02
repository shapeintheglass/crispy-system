PickableAmmo = {
  type = "PickableAmmo",
  Client = {},
  Server = {},
  Properties = {
    bUsable = 1,
    bAutoPickable = 0,
    AmmoType = "Bullet",
    SoundSignal = "Player_GrabAmmo",
    UseMessage = ""
  },
  Editor = {Icon = "item.bmp", IconOnTop = 1},
  bUsed = false,
  bInitialized = false,
  fAliveTime = 0,
  bDestroyOnUse = 0
}
MakeUsable(PickableAmmo)
function PickableAmmo.Server.OnInit(A0_5772)
  if not A0_5772.bInitialized then
    A0_5772:OnReset()
    A0_5772.bInitialized = true
  end
end
function PickableAmmo.Client.OnInit(A0_5773)
  if not A0_5773.bInitialized then
    A0_5773:OnReset()
    A0_5773.bInitialized = true
  end
end
function PickableAmmo.OnReset(A0_5774, A1_5775, A2_5776)
  local L3_5777
  L3_5777 = {}
  L3_5777.bPhysicalize = 1
  L3_5777.bPushableByPlayers = 0
  L3_5777.bPushableByAI = 0
  L3_5777.Density = -1
  L3_5777.Mass = -1
  EntityCommon.PhysicalizeRigid(A0_5774, 0, L3_5777, 1)
  A0_5774.bUsed = false
end
function PickableAmmo.OnUsed(A0_5778, A1_5779, A2_5780)
  A0_5778:PickAmmo(A1_5779)
end
function PickableAmmo.IsUsable(A0_5781, A1_5782)
  bIsUsable = A0_5781.Properties.bUsable == 1 and not A0_5781.bUsed and A0_5781.Properties.bAutoPickable ~= 1
  bCanPickupAmmo = A0_5781:CanPickUpAmmo(A1_5782)
  if bIsUsable and bCanPickupAmmo then
    return 1
  else
    return 0
  end
end
function PickableAmmo.CanPickUpAmmo(A0_5783, A1_5784)
  return A1_5784.inventory:GetAmmoCapacity(A0_5783.Properties.AmmoType) > A1_5784.inventory:GetAmmoCount(A0_5783.Properties.AmmoType)
end
function PickableAmmo.OnUnhidden(A0_5785)
  CryAction.ForceGameObjectUpdate(A0_5785.id, true)
end
function PickableAmmo.PickAmmo(A0_5786, A1_5787)
  bCanPickupAmmo = A0_5786:CanPickUpAmmo(A1_5787)
  if bCanPickupAmmo then
    A1_5787.actor:PickUpPickableAmmo(A0_5786.Properties.AmmoType, 1)
    audio = GameAudio.GetSignal(A0_5786.Properties.SoundSignal)
    GameAudio.JustPlayEntitySignal(audio, A1_5787.id)
  end
  A0_5786.bUsed = true
  if A0_5786.bDestroyOnUse == 1 then
    System.RemoveEntity(A0_5786.id)
  end
  A0_5786:Activate(0)
end
