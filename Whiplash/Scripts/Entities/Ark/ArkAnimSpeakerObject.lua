Script.ReloadScript("Scripts/Entities/Physics/BasicEntity.lua")
PROP_SPEAKER = 0
ArkAnimSpeakerObject = {
  Properties = {
    ArkCharacter = {character_Character = "", bMuteVO = 0},
    ArkSpeakerExtension = {nSpeakerType = PROP_SPEAKER}
  }
}
MakeDerivedEntityOverride(ArkAnimSpeakerObject, AnimObject)
function ArkAnimSpeakerObject.LoadAndPhysicalizeModel(A0_3340)
  if not A0_3340.isModelLoaded then
    A0_3340:LoadObject(0, A0_3340.Properties.object_Model)
    A0_3340:RenderAlways(A0_3340.Properties.Cinematic.bRenderAlways)
    if A0_3340.Properties.Physics.bPhysicalize == 1 then
      A0_3340:PhysicalizeThis()
    end
    A0_3340.isModelLoaded = true
    CryAction.CreateGameObjectForEntity(A0_3340.id)
    CryAction.ActivateExtensionForGameObject(A0_3340.id, "ArkSpeakerExtension", true)
    return 1
  end
  return 0
end
