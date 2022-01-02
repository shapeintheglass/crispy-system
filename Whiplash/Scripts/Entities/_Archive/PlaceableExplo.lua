local L0_796, L1_797, L2_798, L3_799
L0_796 = {}
L0_796.type = "Trigger"
L1_797 = {}
L1_797.DimX = 5
L1_797.DimY = 5
L1_797.DimZ = 5
L1_797.ScriptCommand = ""
L1_797.PlaySequence = ""
L1_797.dummyModel = "Objects/Pickups/explosive/explosive_dummy.cgf"
L1_797.fileModel = "objects/pickups/explosive/explosive.cgf"
L1_797.object_ModelDestroyed = ""
L1_797.ExplosionEffect = ""
L1_797.ExplosionScale = 1
L1_797.countdown = 10
L1_797.explDamage = 100
L1_797.explRmin = 2
L1_797.explRmax = 20.5
L1_797.explRadius = 3
L1_797.explImpulsive_pressure = 200
L1_797.bInitiallyVisible = 1
L1_797.bAutomaticPlaceable = 1
L1_797.TextInstruction = ""
L1_797.bActive = 1
L0_796.Properties = L1_797
L1_797 = {}
L1_797.pos = nil
L1_797.damage = 100
L1_797.rmin = 2
L1_797.rmax = 20.5
L1_797.radius = 3
L1_797.impulsive_pressure = 200
L1_797.shooter = nil
L1_797.weapon = nil
L0_796.explosion_params = L1_797
L0_796.countdown_step = 0
L1_797 = {}
L1_797.Model = "Objects/Editor/T.cgf"
L1_797.ShowBounds = 1
L0_796.Editor = L1_797
L0_796.timing_soundfile = "SOUNDS/items/bombcount.wav"
L0_796.timing_sound = nil
PlaceableExplo = L0_796
L0_796 = PlaceableExplo
function L1_797(A0_800)
  if A0_800.Properties.dummyModel ~= "" then
    A0_800:LoadObject(A0_800.Properties.dummyModel, 0, 1)
  end
  if A0_800.Properties.fileModel ~= "" then
    A0_800:LoadObject(A0_800.Properties.fileModel, 1, 1)
  end
  if A0_800.Properties.object_ModelDestroyed ~= "" then
    A0_800:LoadObject(A0_800.Properties.object_ModelDestroyed, 2, 1)
  end
end
L0_796.LoadGeometry = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_801)
  A0_801:RegisterState("placeable")
  A0_801:RegisterState("notarmed")
  A0_801:RegisterState("armed")
  A0_801:RegisterState("detonated")
end
L0_796.RegisterStates = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_802)
  local L1_803, L2_804
  L2_804 = A0_802
  L1_803 = A0_802.Activate
  L1_803(L2_804, 0)
  L2_804 = A0_802
  L1_803 = A0_802.TrackColliders
  L1_803(L2_804, 1)
  L2_804 = A0_802
  L1_803 = A0_802.GotoState
  L1_803(L2_804, "placeable")
  L1_803 = {}
  L2_804 = A0_802.Properties
  L2_804 = L2_804.DimX
  L2_804 = -L2_804
  L2_804 = L2_804 / 2
  L1_803.x = L2_804
  L2_804 = A0_802.Properties
  L2_804 = L2_804.DimY
  L2_804 = -L2_804
  L2_804 = L2_804 / 2
  L1_803.y = L2_804
  L2_804 = A0_802.Properties
  L2_804 = L2_804.DimZ
  L2_804 = -L2_804
  L2_804 = L2_804 / 2
  L1_803.z = L2_804
  L2_804 = {}
  L2_804.x = A0_802.Properties.DimX / 2
  L2_804.y = A0_802.Properties.DimY / 2
  L2_804.z = A0_802.Properties.DimZ / 2
  A0_802:SetBBox(L1_803, L2_804)
  if A0_802.Properties.ExplosionEffect ~= "" then
    A0_802.explosion_effect = A0_802.Properties.ExplosionEffect
  else
    A0_802.explosion_effect = "explosions.grenade_air.explosion"
  end
  if A0_802.Properties.bInitiallyVisible == 1 then
    A0_802:DrawObject(0, 1)
  else
    A0_802:DrawObject(0, 0)
  end
  A0_802.bActive = A0_802.Properties.bActive
end
L0_796.OnReset = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_805)
  A0_805:OnReset()
end
L0_796.OnMultiplayerReset = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_806)
  A0_806:OnReset()
end
L0_796.OnPropertyChange = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_807, A1_808, A2_809)
  if A1_808 then
    if A1_808 == 0 then
      A1_808 = _localplayer.id
    end
    if Server:GetServerSlotByEntityId(A1_808) then
      Server:GetServerSlotByEntityId(A1_808):SendText(A2_809, 0.9)
    end
  end
end
L0_796.PrintMessage = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_810, A1_811)
  A1_811:WriteInt(A0_810.countdown_step)
  if A0_810.target then
    if A0_810.target == _localplayer.id then
      A1_811:WriteInt(0)
    else
      A1_811:WriteInt(A0_810.target)
    end
  else
    A1_811:WriteInt(-1)
  end
end
L0_796.OnSave = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_812, A1_813)
  A0_812.countdown_step = A1_813:ReadInt()
  A0_812.target = A1_813:ReadInt()
  if A0_812.target < 0 then
    A0_812.target = nil
  end
end
L0_796.OnLoad = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_814, A1_815)
end
L0_796.OnLoadRELEASE = L1_797
L0_796 = PlaceableExplo
L1_797 = {}
function L2_798(A0_816)
  A0_816:LoadGeometry()
  A0_816:RegisterStates()
  A0_816:OnReset()
  A0_816:NetPresent(nil)
end
L1_797.OnInit = L2_798
L2_798 = {}
function L3_799(A0_817)
  A0_817:DestroyPhysics()
end
L2_798.OnBeginState = L3_799
function L3_799(A0_818, A1_819)
  if GameRules:IsInteractionPossible(A1_819, A0_818) and A1_819.type == "Player" and not A1_819:IsDead() then
    A0_818.Who = A1_819
    A0_818:SetTimer(1)
  end
end
L2_798.OnEnterArea = L3_799
function L3_799(A0_820, A1_821)
  if A1_821 == A0_820.Who then
    A0_820.Who = nil
  end
end
L2_798.OnLeaveArea = L3_799
function L3_799(A0_822, A1_823)
  if A0_822.Who then
    A0_822:Collide(A0_822.Who)
    A0_822:SetTimer(1)
  end
end
L2_798.OnTimer = L3_799
L1_797.placeable = L2_798
L2_798 = {}
function L3_799(A0_824)
  A0_824:DestroyPhysics()
end
L2_798.OnBeginState = L3_799
L1_797.notarmed = L2_798
L2_798 = {}
function L3_799(A0_825)
  A0_825:DestroyPhysics()
  if A0_825.Properties.countdown >= 0 then
    A0_825:SetTimer(1000)
  end
end
L2_798.OnBeginState = L3_799
function L3_799(A0_826)
  if A0_826.Properties.countdown >= 0 then
    if A0_826.countdown_step == 0 then
      A0_826:GotoState("detonated")
      A0_826:Event_Explode()
    else
      A0_826:PrintMessage(A0_826.target, A0_826.countdown_step .. " @secondsleft")
      A0_826.countdown_step = A0_826.countdown_step - 1
      A0_826:SetTimer(1000)
      A0_826:PlaySound(A0_826.timing_sound)
    end
  end
end
L2_798.OnTimer = L3_799
L1_797.armed = L2_798
L2_798 = {}
function L3_799(A0_827)
  if A0_827.Properties.object_ModelDestroyed ~= "" then
    A0_827:CreateStaticEntity(10, 100)
  end
  A0_827.target = nil
end
L2_798.OnBeginState = L3_799
L1_797.detonated = L2_798
L0_796.Server = L1_797
L0_796 = PlaceableExplo
L1_797 = {}
function L2_798(A0_828)
  A0_828:LoadGeometry()
  A0_828:RegisterStates()
  A0_828.timing_sound = Sound.Load3DSound(A0_828.timing_soundfile, 0, 0, 255, 10, 250)
  A0_828:OnReset()
end
L1_797.OnInit = L2_798
L2_798 = {}
function L3_799(A0_829)
  A0_829:DrawObject(0, 1)
  A0_829:DrawObject(1, 0)
  A0_829:DrawObject(2, 0)
  A0_829:DestroyPhysics()
  Sound.StopSound(A0_829.timing_sound)
end
L2_798.OnBeginState = L3_799
L1_797.placeable = L2_798
L2_798 = {}
function L3_799(A0_830)
  A0_830:DrawObject(0, 0)
  A0_830:DrawObject(1, 1)
  A0_830:DrawObject(2, 0)
  A0_830:DestroyPhysics()
  Sound.StopSound(A0_830.timing_sound)
end
L2_798.OnBeginState = L3_799
L1_797.notarmed = L2_798
L2_798 = {}
function L3_799(A0_831)
  A0_831:DrawObject(0, 0)
  A0_831:DrawObject(1, 1)
  A0_831:DrawObject(2, 0)
  A0_831:DestroyPhysics()
  A0_831:PlaySound(A0_831.timing_sound)
end
L2_798.OnBeginState = L3_799
L1_797.armed = L2_798
L2_798 = {}
function L3_799(A0_832)
  A0_832:DrawObject(0, 0)
  A0_832:DrawObject(1, 0)
  A0_832:DrawObject(2, 1)
  Sound.StopSound(A0_832.timing_sound)
  if A0_832.Properties.object_ModelDestroyed ~= "" then
    A0_832:CreateStaticEntity(10, 100)
  end
end
L2_798.OnBeginState = L3_799
L1_797.detonated = L2_798
L0_796.Client = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_833, A1_834)
  if A1_834.type ~= "Player" or A1_834.theVehicle then
    return
  end
  if A0_833.bActive == 0 then
    return
  end
  for _FORV_5_, _FORV_6_ in pairs(A1_834.explosives) do
    if _FORV_6_ == 1 then
      if A0_833.Properties.bAutomaticPlaceable ~= 1 and not A1_834.cnt.use_pressed then
        Hud.label = A0_833.Properties.TextInstruction
        return
      end
      A1_834.explosives[_FORV_5_] = 0
      A0_833.target = A1_834.id
      A0_833:GotoState("armed")
      A0_833.countdown_step = A0_833.Properties.countdown
      A0_833:Event_ExplosivePlaced()
      break
    end
  end
end
L0_796.Collide = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_835, A1_836)
  A0_835.bActive = 1
  BroadcastEvent(A0_835, "Activate")
end
L0_796.Event_Activate = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_837, A1_838)
  A0_837.bActive = 0
  BroadcastEvent(A0_837, "DeActivateAndHide")
  A0_837:Event_Hide()
end
L0_796.Event_DeActivateAndHide = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_839, A1_840)
  BroadcastEvent(A0_839, "ExplosivePlaced")
end
L0_796.Event_ExplosivePlaced = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_841, A1_842)
  BroadcastEvent(A0_841, "Explode")
  A0_841:Explode()
end
L0_796.Event_Explode = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_843, A1_844)
  A0_843:Hide(1)
end
L0_796.Event_Hide = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_845, A1_846)
  A0_845:Hide(0)
end
L0_796.Event_Show = L1_797
L0_796 = PlaceableExplo
function L1_797(A0_847)
  local L1_848, L2_849
  L1_848 = {}
  L1_848.x = 0
  L1_848.y = 0
  L1_848.z = 0.7
  L2_849 = A0_847.GetPos
  L2_849 = L2_849(A0_847)
  Particle.SpawnEffect(A0_847.explosion_effect, L2_849, L1_848, A0_847.Properties.ExplosionScale)
  CreateEntityLight(A0_847, 7, 1, 1, 0.7, 0.5)
  A0_847.explosion_params.pos = L2_849
  A0_847.explosion_params.shooter = A0_847
  A0_847.explosion_params.damage = A0_847.Properties.explDamage
  A0_847.explosion_params.rmin = A0_847.Properties.explRmin
  A0_847.explosion_params.rmax = A0_847.Properties.explRmax
  A0_847.explosion_params.radius = A0_847.Properties.explRadius
  A0_847.explosion_params.impulsive_pressure = A0_847.Properties.explImpulsive_pressure
  Game:CreateExplosion(A0_847.explosion_params)
  if A0_847.Properties.ScriptCommand and A0_847.Properties.ScriptCommand ~= "" then
    dostring(A0_847.Properties.ScriptCommand)
  end
  if A0_847.Properties.PlaySequence ~= "" then
    Movie.PlaySequence(A0_847.Properties.PlaySequence)
  end
end
L0_796.Explode = L1_797
L0_796 = PlaceableExplo
L1_797 = {}
L2_798 = {}
L3_799 = {
  PlaceableExplo.Event_Activate,
  "bool"
}
L2_798.Activate = L3_799
L3_799 = {
  PlaceableExplo.Event_DeActivate,
  "bool"
}
L2_798.DeActivate = L3_799
L3_799 = {
  PlaceableExplo.Event_Explode,
  "bool"
}
L2_798.Explode = L3_799
L3_799 = {
  PlaceableExplo.Event_ExplosivePlaced,
  "bool"
}
L2_798.ExplosivePlaced = L3_799
L3_799 = {
  PlaceableExplo.Event_Hide,
  "bool"
}
L2_798.Hide = L3_799
L3_799 = {
  PlaceableExplo.Event_Show,
  "bool"
}
L2_798.Show = L3_799
L1_797.Inputs = L2_798
L2_798 = {}
L2_798.Activate = "bool"
L2_798.DeActivate = "bool"
L2_798.Explode = "bool"
L2_798.ExplosivePlaced = "bool"
L2_798.Hide = "bool"
L2_798.Show = "bool"
L1_797.Outputs = L2_798
L0_796.FlowEvents = L1_797
