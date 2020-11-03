
<AnimDB FragDef="Animations/Mannequin/ADB/ArkPlayerFragments.xml" TagDef="Animations/Mannequin/ADB/ArkPlayerTags.xml">
 <SubADBs>
  <SubADB Tags="wrench+forceFeedback" File="Animations/Mannequin/ADB/ArkWrenchFFEvents.adb"/>
 </SubADBs>
 <FragmentList>
  <Wpn_Melee_LeftRight>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <ProcLayer>
     <Blend ExitTime="0.1125" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.Wrench.WeaponTrail_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_trail"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Melee_LeftRight>
  <Wpn_Melee_RightLeft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <ProcLayer>
     <Blend ExitTime="0.050000001" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.Wrench.WeaponTrail_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_trail"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Melee_RightLeft>
 </FragmentList>
</AnimDB>