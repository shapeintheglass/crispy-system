
<AnimDB FragDef="Animations/Mannequin/ADB/ArkTurretEntityActions.xml" TagDef="Animations/Mannequin/ADB/ArkTurretEntityTags.xml">
 <FragmentList>
  <Searching>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Turret_Searching"/>
    </AnimLayer>
   </Fragment>
  </Searching>
  <Recoil>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="turret_recoil"/>
     <Blend ExitTime="1.2" StartTime="0" Duration="0"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.Turret.ShellEject_00"/>
       <JointName value=""/>
       <AttachmentName value="shelleject"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="33"/>
        <Element value="-0.69999999"/>
        <Element value="0"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.2" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.Turret.MuzzleFlash"/>
       <JointName value=""/>
       <AttachmentName value="muzzle"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.075000003"/>
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
     <Blend ExitTime="1.2" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Recoil>
  <Idle_Deployed>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="TechnopathHeld">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="turret_held" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="turret_idle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Idle_Deployed>
  <Idle_Closed>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="turret_idle_close" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Idle_Closed>
  <Broken>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="turret_broken"/>
    </AnimLayer>
   </Fragment>
  </Broken>
  <Recoil_Laser>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Turret_Recoil_TurretLaser" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.Turret.LaserBeamImpact_00.Laser.Laser_MuzzleGlow_00"/>
       <JointName value=""/>
       <AttachmentName value="muzzle"/>
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
  </Recoil_Laser>
  <Recoil_Gloo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="turret_recoil"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.Turret.Gloo.MuzzleFlash"/>
       <JointName value=""/>
       <AttachmentName value="weapon_jnt"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.075000003"/>
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
  </Recoil_Gloo>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="Searching" to="Idle_Closed">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.20332241"/>
      <Animation name="turret_deactivating" speed="1.4"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Idle_Deployed" to="Idle_Closed">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Turret_Deactivating" speed="1.4"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Idle_Closed" to="Searching">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Turret_Activating" speed="1.4"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Idle_Closed" to="Idle_Deployed">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Turret_Activating" speed="1.4"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>