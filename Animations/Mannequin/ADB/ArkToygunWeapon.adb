
<AnimDB FragDef="Animations/Mannequin/ADB/ArkPlayerFragments.xml" TagDef="Animations/Mannequin/ADB/ArkPlayerTags.xml">
 <SubADBs>
  <SubADB Tags="toygun+forceFeedback" File="Animations/Mannequin/ADB/ArkToygunFFEvent.adb"/>
 </SubADBs>
 <FragmentList>
  <Wpn_Fire>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="toygun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0099999998"/>
     <Animation name="wpn_1p_fire_toygun" speed="1.5"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Fire>
  <Wpn_Reload>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="toygun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="wpn_1p_reload_toygun"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Reload>
  <Wpn_Unselect>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="toygun+broken">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.Pistol.Broken.MetalShards_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_malfunction_forend_01"/>
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
  </Wpn_Unselect>
  <Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="toygun">
    <AnimLayer>
     <Blend ExitTime="0.16666667" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
   </Fragment>
  </Idle>
  <Wpn_Malfunction>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="toygun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Wpn_1p_Malfunction_Toygun"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.Pistol.Muzzle.MuzzleFlash_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_malfunction_forend_01"/>
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
  </Wpn_Malfunction>
  <Wpn_PickUp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="toygun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Wpn_1p_Pickup_Toygun"/>
    </AnimLayer>
   </Fragment>
  </Wpn_PickUp>
  <Wpn_Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="toygun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_Idle_Toygun" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Idle>
 </FragmentList>
</AnimDB>