
<AnimDB FragDef="Animations/Mannequin/ADB/ArkTurretEntityActions.xml" TagDef="Animations/Mannequin/ADB/ArkTurretEntityTags.xml">
 <FragmentList>
  <Deploying>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Turret_Activating" speed="1.5"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Turret_Open"/>
       <StopTrigger value="null"/>
       <FireAndForget value="false"/>
       <AttachmentJoint value=""/>
       <Radius value="0"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Deploying>
  <UnDeploying>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Turret_Deactivating"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Turret_Close"/>
       <StopTrigger value="null"/>
       <FireAndForget value="false"/>
       <AttachmentJoint value=""/>
       <Radius value="0"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </UnDeploying>
  <Searching>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="turret_idle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Idle_Deployed>
  <Idle_Closed>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
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
 </FragmentList>
</AnimDB>