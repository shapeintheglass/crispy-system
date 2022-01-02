local L0_6385, L1_6386
L0_6385 = {}
L0_6385.None = 0
L0_6385.SelfNotAffected = 1
L0_6385.TeamNotAffected = 2
FriendlyFire = L0_6385
L0_6385 = {}
L0_6385.unspecified = 0
L0_6385.panel = 1
L0_6385.pole = 2
L0_6385.other = 3
Classifications = L0_6385
L0_6385 = {}
L1_6386 = {}
L0_6385.Server = L1_6386
L1_6386 = {}
L0_6385.Client = L1_6386
L1_6386 = {}
L1_6386.szUseMessage = "@pick_object"
L1_6386.szMFXLibrary = "melee"
L1_6386.fileModelOverride = ""
L1_6386.bPickable = 1
L1_6386.szRootedGrabAnimTagOverride = ""
L1_6386.szGrabAnimTagOverride = ""
L1_6386.bInitiallyRooted = 1
L1_6386.RagdollPostMeleeImpactSpeed = 20
L1_6386.RagdollPostThrowImpactSpeed = 17
L1_6386.classification = ""
L1_6386.RootedAngleMin = 0
L1_6386.RootedAngleMax = 180
L1_6386.initialHealth = 800
L1_6386.damageable = 0
L1_6386.idleKillTime = -1
L1_6386.States = {}
L1_6386.shieldsFromExplosionConeAngle = 0
L1_6386.collisionDamageScale = 0.5
L1_6386.explosionMinDamageToDestroy = 100
L0_6385.Properties = L1_6386
L1_6386 = {}
L1_6386.Icon = "Item.bmp"
L1_6386.IconOnTop = 1
L1_6386.ShowBounds = 1
L0_6385.Editor = L1_6386
L0_6385.ModelSlot = -1
L0_6385.currentHealth = 800
L1_6386 = NULL_ENTITY
L0_6385.ownerID = L1_6386
L0_6385.lowestThresholdFractionReached = 1.1
L0_6385.IsRooted = true
L0_6385.bCurrentlyPickable = 0
L0_6385.teamID = -1
EnvironmentalWeapon = L0_6385
L0_6385 = EnvironmentalWeapon
L1_6386 = {}
L1_6386.flags = 0
L1_6386.mass = 250
L0_6385.physParams = L1_6386
L0_6385 = EnvironmentalWeapon
L0_6385.DEFAULT_FILE_MODEL = "Objects/props/c3mp_strfrn/c3mp_lamp_post/c3mp_sign_post.cgf"
L0_6385 = EnvironmentalWeapon
function L1_6386(A0_6387, A1_6388)
  local L2_6389
  L2_6389 = A0_6387.Properties
  L2_6389 = L2_6389.bPickable
  L2_6389 = L2_6389 and A0_6387.bCurrentlyPickable
  return L2_6389
end
L0_6385.IsUsable = L1_6386
L0_6385 = EnvironmentalWeapon
function L1_6386(A0_6390)
  A0_6390:Physicalize(A0_6390.ModelSlot, PE_RIGID, A0_6390.physParams)
  A0_6390.IsRooted = false
end
L0_6385.OnAttached = L1_6386
L0_6385 = EnvironmentalWeapon
function L1_6386(A0_6391)
  return A0_6391.Properties.szUseMessage
end
L0_6385.GetUsableMessage = L1_6386
L0_6385 = EnvironmentalWeapon
L0_6385 = L0_6385.Server
function L1_6386(A0_6392)
  if not A0_6392.bInitialized then
    A0_6392:OnReset()
    A0_6392.bInitialized = 1
    A0_6392:SetViewDistRatio(255)
  end
end
L0_6385.OnInit = L1_6386
L0_6385 = EnvironmentalWeapon
function L1_6386(A0_6393, A1_6394)
  A0_6393.ownerID = A1_6394
  if A1_6394 == NULL_ENTITY then
    if A0_6393.originalViewDistRatio ~= nil then
      A0_6393:SetViewDistRatio(A0_6393.originalViewDistRatio)
    end
    A0_6393.teamID = -1
  else
    A0_6393.originalViewDistRatio = A0_6393:GetViewDistRatio()
    A0_6393:SetViewDistRatio(255)
    if g_gameRules.game:IsMultiplayer() then
      A0_6393.teamID = g_gameRules.game:GetTeam(A1_6394)
    end
  end
end
L0_6385.SetOwnerID = L1_6386
L0_6385 = EnvironmentalWeapon
L0_6385 = L0_6385.Client
function L1_6386(A0_6395)
  if not A0_6395.bInitialized then
    A0_6395:OnReset()
    A0_6395.bInitialized = 1
  end
end
L0_6385.OnInit = L1_6386
L0_6385 = EnvironmentalWeapon
function L1_6386(A0_6396)
  local L1_6397, L2_6398, L3_6399, L4_6400, L5_6401, L6_6402, L7_6403
  L1_6397 = A0_6396.ModelSlot
  L1_6397 = L1_6397 == -1
  if L1_6397 then
    A0_6396.ModelSlot = -1
    L2_6398 = A0_6396.DEFAULT_FILE_MODEL
    if L3_6399 then
      if L3_6399 ~= "" then
        L2_6398 = L3_6399.fileModelOverride
      end
    end
    L6_6402 = L2_6398
    A0_6396.ModelSlot = L3_6399
    if L3_6399 ~= nil then
      for L6_6402, L7_6403 in L3_6399(L4_6400) do
        if L7_6403 ~= nil and type(L7_6403) == "table" and L7_6403.Model ~= nil then
          L7_6403.Slot = A0_6396:LoadObject(-1, L7_6403.Model)
          if L7_6403 ~= -1 then
            A0_6396:DrawSlot(L7_6403.Slot, 0)
          end
        end
      end
    end
  end
  L2_6398 = A0_6396.Properties
  L2_6398 = L2_6398.initialHealth
  A0_6396.currentHealth = L2_6398
  L2_6398 = NULL_ENTITY
  A0_6396.ownerID = L2_6398
  A0_6396.lowestThresholdFractionReached = 1.1
  L2_6398 = A0_6396.Properties
  L2_6398 = L2_6398.bInitiallyRooted
  A0_6396.IsRooted = L2_6398
  L2_6398 = A0_6396.IsRooted
  if L2_6398 then
    L2_6398 = A0_6396.Physicalize
    L6_6402 = {}
    L6_6402.mass = 0
    L2_6398(L3_6399, L4_6400, L5_6401, L6_6402)
  else
    L2_6398 = A0_6396.Physicalize
    L6_6402 = A0_6396.physParams
    L2_6398(L3_6399, L4_6400, L5_6401, L6_6402)
  end
  L2_6398 = A0_6396.Properties
  L2_6398 = L2_6398.bPickable
  A0_6396.bCurrentlyPickable = L2_6398
end
L0_6385.OnReset = L1_6386
L0_6385 = EnvironmentalWeapon
function L1_6386(A0_6404)
  A0_6404:OnReset()
end
L0_6385.OnPropertyChange = L1_6386
L0_6385 = EnvironmentalWeapon
function L1_6386(A0_6405)
  A0_6405:OnReset()
end
L0_6385.OnSpawn = L1_6386
L0_6385 = EnvironmentalWeapon
L0_6385 = L0_6385.Server
function L1_6386(A0_6406, A1_6407)
  local L2_6408, L3_6409
  L2_6408 = A0_6406.Properties
  L2_6408 = L2_6408.damageable
  if L2_6408 ~= 0 then
    L2_6408 = A0_6406.IsRooted
    if L2_6408 == false then
      L2_6408 = A0_6406.ownerID
      L3_6409 = NULL_ENTITY
      if L2_6408 ~= L3_6409 then
        L2_6408 = g_gameRules
        L2_6408 = L2_6408.game
        L3_6409 = L2_6408
        L2_6408 = L2_6408.IsMultiplayer
        L2_6408 = L2_6408(L3_6409)
        if L2_6408 then
          L2_6408 = g_gameRules
          L2_6408 = L2_6408.game
          L3_6409 = L2_6408
          L2_6408 = L2_6408.GetTeam
          L2_6408 = L2_6408(L3_6409, A1_6407.shooterId)
          L3_6409 = A0_6406.teamID
        elseif L2_6408 ~= L3_6409 then
          L2_6408 = A1_6407.damage
          L3_6409 = A1_6407.type
          if L3_6409 == "collision" then
            L3_6409 = A0_6406.Properties
            L3_6409 = L3_6409.collisionDamageScale
            L2_6408 = L2_6408 * L3_6409
          else
            L3_6409 = A1_6407.damage
            if L3_6409 >= A0_6406.Properties.explosionMinDamageToDestroy then
              L3_6409 = A1_6407.type
              if L3_6409 == "frag" then
                L2_6408 = A0_6406.currentHealth
              end
            end
          end
          L3_6409 = A0_6406.currentHealth
          A0_6406.currentHealth = A0_6406.currentHealth - L2_6408
          Game.OnEnvironmentalWeaponHealthChanged(A0_6406.id, L3_6409, A0_6406.currentHealth)
          A0_6406:OnClientHealthChanged()
        end
      end
    end
  end
  L2_6408 = false
  return L2_6408
end
L0_6385.OnHit = L1_6386
L0_6385 = EnvironmentalWeapon
function L1_6386(A0_6410)
  A0_6410:UpdateHealthState()
end
L0_6385.OnClientHealthChanged = L1_6386
L0_6385 = EnvironmentalWeapon
function L1_6386(A0_6411)
  local L1_6412, L2_6413, L3_6414, L4_6415, L5_6416, L6_6417, L7_6418, L8_6419, L9_6420
  L2_6413 = A0_6411.lowestThresholdFractionReached
  L3_6414 = nil
  L4_6415 = A0_6411.Properties
  L4_6415 = L4_6415.initialHealth
  if L4_6415 == nil then
    return
  end
  L4_6415 = A0_6411.currentHealth
  L4_6415 = L4_6415 / L5_6416
  if L5_6416 ~= nil then
    for L8_6419, L9_6420 in L5_6416(L6_6417) do
      if L9_6420 ~= nil and type(L9_6420) == "table" and L9_6420.ThresholdFraction ~= nil and L9_6420.Model ~= nil and L4_6415 <= L9_6420.ThresholdFraction and L2_6413 >= L9_6420.ThresholdFraction then
        L1_6412 = L9_6420.Model
        L2_6413 = L9_6420.ThresholdFraction
        L3_6414 = L9_6420.Slot
      end
    end
    if L5_6416 ~= L2_6413 then
      L8_6419 = A0_6411
      L9_6420 = -1
      L7_6418(L8_6419, L9_6420, 0)
      L8_6419 = A0_6411
      L9_6420 = L3_6414
      L7_6418(L8_6419, L9_6420, 1)
      L8_6419 = A0_6411
      L9_6420 = L3_6414
      L7_6418(L8_6419, L9_6420, PE_RIGID, A0_6411.physParams)
      A0_6411.ModelSlot = L3_6414
      L8_6419 = A0_6411
      L9_6420 = L5_6416
      L7_6418(L8_6419, L9_6420, L6_6417)
      A0_6411.lowestThresholdFractionReached = L2_6413
      L8_6419 = NULL_ENTITY
      if L7_6418 ~= L8_6419 then
        L8_6419 = A0_6411.ownerID
        if L7_6418 then
          L8_6419 = L7_6418.actor
          L9_6420 = L8_6419
          L8_6419 = L8_6419.RefreshPickAndThrowObjectPhysics
          L8_6419(L9_6420)
        end
      end
    end
  end
end
L0_6385.UpdateHealthState = L1_6386
L0_6385 = EnvironmentalWeapon
function L1_6386(A0_6421)
  local L1_6422, L2_6423
  L1_6422 = 0
  id = L1_6422
  L1_6422 = Classifications
  L2_6423 = A0_6421.Properties
  L2_6423 = L2_6423.classification
  L1_6422 = L1_6422[L2_6423]
  id = L1_6422
  L1_6422 = A0_6421.Properties
  L1_6422 = L1_6422.classification
  if L1_6422 == "" then
    L1_6422 = Classifications
    L1_6422 = L1_6422.Unspecified
    id = L1_6422
  else
    L1_6422 = id
    if L1_6422 == nil then
      L1_6422 = Classifications
      L1_6422 = L1_6422.Other
      id = L1_6422
    end
  end
  L1_6422 = id
  return L1_6422
end
L0_6385.GetClassification = L1_6386
