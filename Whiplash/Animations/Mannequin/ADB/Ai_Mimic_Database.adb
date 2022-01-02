
<AnimDB FragDef="Animations/Mannequin/ADB/Ai_Mimic_FragmentIds.xml" TagDef="Animations/Mannequin/ADB/Ai_Mimic_Tags.xml">
 <FragmentList>
  <Motion_Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Motion_RestrictXY">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2" flags="Idle2Move"/>
     <Animation name="Combat_Idle_NoMove_C" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Motion_RestrictZ">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2" flags="Idle2Move"/>
     <Animation name="Combat_Idle_NoMove_C" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Disable">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Idle_A" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Disable">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Idle_C" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="3" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Idle_D" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Motion_Idle>
  <Motion_Move>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="3D-BSpace_Combat_MoveStrafeTurn" flags="Loop" speed="0.75"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="3D-BSpace_Combat_MoveStrafeTurn" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Motion_Move>
  <Melee_JumpAttack>
   <Fragment BlendOutDuration="0.2" Weight="5" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Combat_JumpAttack" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="10" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Combat_JumpAttack_B" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Melee_JumpAttack>
  <Melee_JumpAttack_Bump>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1D-BSpace_Combat_JumpAttack_Bump"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1D-BSpace_Combat_JumpAttack_Bump"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1D-BSpace_Combat_JumpAttack_Bump_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Melee_JumpAttack_Bump>
  <Reaction_Death>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Front_RL_A" flags="FullRootPriority" speed="0.60000002"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
       <StopTrigger value=""/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Front_RL_A" flags="FullRootPriority" speed="0.60000002"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
       <StopTrigger value=""/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Front_LR_A" speed="0.60000002"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
       <StopTrigger value=""/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Front_LR_A" speed="0.60000002"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
       <StopTrigger value=""/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Front_LR_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
       <StopTrigger value=""/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Front_LR_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
       <StopTrigger value=""/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Front_RL_A" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
       <StopTrigger value=""/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Front_RL_A" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
       <StopTrigger value=""/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Front_LR_C"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.17499995" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Front_RL_C"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.16666667" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="Combat_MediumHit_Front_A" speed="0.60000002"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
       <StopTrigger value=""/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="Combat_MediumHit_Front_C" speed="0.60000002"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
       <StopTrigger value=""/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
       <StopTrigger value=""/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Front_C"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
       <StopTrigger value=""/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_smallhit_front_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_death_front_b"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.16952142"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="LaserExplosion+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Explode"/>
     <Blend ExitTime="0.26249999" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ActionEventOnExit">
      <ProceduralParams>
       <EventName value="StartDeathBlendToCorpse"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ActionEventOnExit">
      <ProceduralParams>
       <EventName value="EnergizedExplosion"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="LaserExplosion+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Explode_A"/>
     <Blend ExitTime="0.26249999" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ActionEventOnExit">
      <ProceduralParams>
       <EventName value="StartDeathBlendToCorpse"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ActionEventOnExit">
      <ProceduralParams>
       <EventName value="EnergizedExplosion"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="DiscHit+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Explode_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ActionEventOnExit">
      <ProceduralParams>
       <EventName value="StartDeathBlendToCorpse"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ActionEventOnExit">
      <ProceduralParams>
       <EventName value="OnDiscExplosion"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="death+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Front_LR_C"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1375" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="death+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Front_LR_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="death+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Front_RL_C"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="death+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Front_RL_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.175" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_SmallHit_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.32499999" StartTime="0" Duration="0.52415156"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="death+Impact_High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.050000001" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="death+Impact_High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Front_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_SmallHit_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.32499999" StartTime="0" Duration="0.52415156"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Reaction_Death>
  <BlendRagdoll>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="blendIn+standup+ragdoll">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="1"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="2" StartTime="0" Duration="0.39000058"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="1"/>
     <Animation name="ragdoll_recovery_back"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="1"/>
     <Animation name="ragdoll_recovery_front"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </BlendRagdoll>
  <Cs_SimulationLabs_Sq11_MimicAttack_Mimic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq11_MimicAttack_Mimic"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_SimulationLabs_Sq11_MimicAttack_Mimic>
  <Motion_WallJump_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.14429443"/>
     <Animation name="1D-BSpace_Combat_JumpWall_In_Low" speed="0.5"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Medium">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.14429443"/>
     <Animation name="1D-BSpace_Combat_JumpWall_In_Medium" speed="0.5"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.14429443"/>
     <Animation name="1D-BSpace_Combat_JumpWall_In_High" speed="0.5"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.14429443"/>
     <Animation name="1D-BSpace_Combat_JumpWall_In_High"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Medium">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.14429443"/>
     <Animation name="1D-BSpace_Combat_JumpWall_In_Medium" speed="0.80000001"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.14429443"/>
     <Animation name="1D-BSpace_Combat_JumpWall_In_Low" speed="0.89999998"/>
    </AnimLayer>
   </Fragment>
  </Motion_WallJump_In>
  <MantleUp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Combat_Mantle"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </MantleUp>
  <Motion_WallJump_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_JumpWall_Out_Telegraph"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0"/>
     <Animation name="1D-BSpace_Combat_JumpWall_Out_High" speed="0.5"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Medium">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_JumpWall_Out_Telegraph"/>
     <Blend ExitTime="-1" StartTime="0.1" Duration="0"/>
     <Animation name="1D-BSpace_Combat_JumpWall_Out_Medium" speed="0.5"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_JumpWall_Out_Telegraph"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0"/>
     <Animation name="1D-BSpace_Combat_JumpWall_Out_Low" speed="0.5"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_JumpWall_Out_Telegraph"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0"/>
     <Animation name="1D-BSpace_Combat_JumpWall_Out_High"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Medium">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_JumpWall_Out_Telegraph"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0"/>
     <Animation name="1D-BSpace_Combat_JumpWall_Out_Medium" speed="0.60000002"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_JumpWall_Out_Telegraph"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0"/>
     <Animation name="1D-BSpace_Combat_JumpWall_Out_Low"/>
    </AnimLayer>
   </Fragment>
  </Motion_WallJump_Out>
  <Motion_Leap>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Long">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_leap_forward_long"/>
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.19999999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Medium">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_leap_forward_medium"/>
     <Blend ExitTime="0.30000007" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000019"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Motion_Leap>
  <Melee>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat+Motion_RestrictZ" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Melee_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.34999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat+Motion_RestrictZ" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Melee_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Melee_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.41249999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.37500003" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="-70"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.46666667" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Melee_Left_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.28750002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="-70"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.63333333" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Melee_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.10069448"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="90"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Melee_Right_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.67500001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.19166666" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.10069448"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="90"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.67500001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.19166666" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat+Motion_RestrictZ">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Melee_Front_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.82499999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftLeg"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.47499996" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.00035114586"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="1080"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.55000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="1080"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.074999988" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.82499999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftLeg"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.47499996" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="0.66000003" Cooldown="5" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Melee_Front_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.77499998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftLeg"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.57500005" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="1080"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
     <Blend ExitTime="0.32499999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="1080"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.47500002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_mvmt_darkRise"/>
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
    <ProcLayer>
     <Blend ExitTime="0.77499998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftLeg"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.52499998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Melee_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.82499999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftLeg"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.27500004" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="1080"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.82499999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.79999995" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftLeg"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.4000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="0.33000001" Cooldown="15" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Combat_Melee_Front_C"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.14999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="-1"/>
       <RelativeDesiredDegrees value="720"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.61666667" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.48906249" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.58593756" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.48906255" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <ValidHitRadius value="0.15000001"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.41093743" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="0.5" Cooldown="10" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Combat_Melee_Front_D"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="-1"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.36666667" StartTime="0" Duration="0"/>
     <Procedural type=""/>
     <Blend ExitTime="1.2833333" StartTime="0" Duration="0.15000001"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.26666665" StartTime="0" Duration="0"/>
     <Procedural type=""/>
     <Blend ExitTime="0.34583342" StartTime="0" Duration="0.15000001"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.26666665" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.725" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftLeg"/>
       <AttachmentRadius value="0.25"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.16250002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
     <Blend ExitTime="0.4749999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftLeg"/>
       <AttachmentRadius value="0.25"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.140625" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.71875" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <AttachmentRadius value="0.25"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.16250002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
     <Blend ExitTime="0.50624979" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <AttachmentRadius value="0.25"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.10312486" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.7125001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftLeg"/>
       <ValidHitRadius value="0.15000001"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.1937499" StartTime="0" Duration="0"/>
     <Procedural type=""/>
     <Blend ExitTime="0.45624995" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftLeg"/>
       <ValidHitRadius value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.140625" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.7" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <ValidHitRadius value="0.15000001"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0"/>
     <Procedural type=""/>
     <Blend ExitTime="0.48749971" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <ValidHitRadius value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.10312486" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="0.5" Cooldown="10" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Combat_Melee_Front_E"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.93333334" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.23750001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.19375002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.19375002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.23750001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Combat_Melee_Front_F"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.5" StartTime="0" Duration="0.15000001"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.9333334" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.9875001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <AttachmentRadius value="0.25"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.37500012" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="2.0625" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <AttachmentRadius value="0.25"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000019" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.9875001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.37500012" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="2.0625" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000019" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="0.33000001" Cooldown="15" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Combat_Melee_Front_G"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.075" StartTime="0" Duration="0.15000001"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.93333364" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.6" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.50408304" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.6" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.49574983" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Combat_Melee_Front_H"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.93333334" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.64999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <AttachmentRadius value="0.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.28333336" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.64999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.27500004" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Melee>
  <DodgeRoll>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Dodge_Left_A" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Dodge_Right_A" speed="0.85000002"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.1" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="500"/>
       <NpcHitImpulse value="500"/>
       <OtherHitImpulse value="50"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.16666663" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.1333333" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="500"/>
       <NpcHitImpulse value="500"/>
       <OtherHitImpulse value="50"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Dodge_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.1" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="500"/>
       <NpcHitImpulse value="500"/>
       <OtherHitImpulse value="50"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.16666663" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.1333333" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="500"/>
       <NpcHitImpulse value="500"/>
       <OtherHitImpulse value="50"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Dodge_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </DodgeRoll>
  <CombatReaction>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Detect_Player_Front"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.83333331" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </CombatReaction>
  <Distractor_SnakesCheck>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Distractor_SnakesCheck"/>
    </AnimLayer>
   </Fragment>
  </Distractor_SnakesCheck>
  <CS_SimulationLabs_GooedMimic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Detect_Player_Front"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="LayerManualUpdate">
      <ProceduralParams>
       <ParamName value=""/>
       <ScopeLayer value="0"/>
       <Invert value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </CS_SimulationLabs_GooedMimic>
  <GrabPlayer_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_GrabPlayer_In"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Elite_Grab_Rise"/>
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
  </GrabPlayer_In>
  <GrabPlayer_Jump>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_GrabPlayer_Jump"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.099999905" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Elite_GrabFace_Jump"/>
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
  </GrabPlayer_Jump>
  <GrabPlayer_Abort>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_GrabPlayer_Abort"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Grab_Out_Retreat"/>
       <StopTrigger value=""/>
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
  </GrabPlayer_Abort>
  <GrabPlayer_Wrestling>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_grabplayer_mimic_wrestling" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Grab_In"/>
       <StopTrigger value="Play_Mimic_Grab_Out_Retreat"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_grabplayer_wrestling" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAttachEntity">
      <ProceduralParams>
       <ScopeName value="SlaveChar"/>
       <BoneAttachmentName value="anchor"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </GrabPlayer_Wrestling>
  <GrabPlayer_PlayerWin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_grabplayer_mimic_playerwin"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.099999905" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Grab_Out_Retreat"/>
       <StopTrigger value=""/>
       <FireAndForget value="false"/>
       <AttachmentJoint value=""/>
       <Radius value="0"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.3333334" StartTime="0" Duration="0"/>
     <Procedural type="ArkReleaseSlave">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="combat_grabplayer_playerwin"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </GrabPlayer_PlayerWin>
  <Distractor_DeskSwipe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Distractor_DeskSwipe"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPushObstaclesEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <Impulse value="0.25"/>
       <ImpulseAddOnReattempt value="0.25"/>
       <Radius value="1.5"/>
       <RadiusAddOnReattempt value="0.25"/>
       <Falloff value="0.60000002"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.32812497" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.42500001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPushObstaclesEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftLeg"/>
       <Impulse value="0.25"/>
       <ImpulseAddOnReattempt value="0.25"/>
       <Radius value="1.5"/>
       <RadiusAddOnReattempt value="0.25"/>
       <Falloff value="0.60000002"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.32499999" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Distractor_DeskSwipe>
  <Hypnotized>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_hypnotized_in_medium"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_hypnotized_loop_medium"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Hypnotized>
  <Blinded>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_blinded_medium"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEventOnExit">
      <ProceduralParams>
       <EventName value="mimicentity"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Blinded>
  <Distractor_Sniff>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Distractor_Sniff"/>
    </AnimLayer>
   </Fragment>
  </Distractor_Sniff>
  <Cs_SimulationLabs_Sq12_ShadowMimic_Start_Mimic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Sq12_Shadow_Start_Mimic"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_SimulationLabs_Sq12_ShadowMimic_Start_Mimic>
  <Cs_SimulationLabs_Sq12_ShadowMimic_Loop_Mimic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Sq12_Shadow_Loop_Mimic" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_SimulationLabs_Sq12_ShadowMimic_Loop_Mimic>
  <Cs_SimulationLabs_Sq12_ShadowMimic_End_Mimic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="Sq12_Shadow_End_Mimic"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_SimulationLabs_Sq12_ShadowMimic_End_Mimic>
  <Distractor_Poke>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Distractor_Poke"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.775" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.25"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="100"/>
       <NpcHitImpulse value="15"/>
       <OtherHitImpulse value="15"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.25000012" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Distractor_Poke>
  <Distractor_Swipe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Distractor_Swipe_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.6375" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPushObstaclesEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <Impulse value="0.5"/>
       <ImpulseAddOnReattempt value="0.5"/>
       <Radius value="1.5"/>
       <RadiusAddOnReattempt value="0.25"/>
       <Falloff value="0.60000002"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Distractor_Swipe>
  <Distractor_Swipe_B>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Distractor_Swipe_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.10400003"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.85000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPushObstaclesEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <Impulse value="0.25"/>
       <ImpulseAddOnReattempt value="0.25"/>
       <Radius value="1.5"/>
       <RadiusAddOnReattempt value="0.25"/>
       <Falloff value="0.60000002"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Distractor_Swipe_B>
  <Lifted>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Lifted" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Lifted>
  <Fall>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Fall" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Fall>
  <Land_Bump>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Land_Bump"/>
    </AnimLayer>
   </Fragment>
  </Land_Bump>
  <Land_Stumble>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Land_Stumble"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Land_Stumble_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Land_Stumble>
  <Lifted_BumpCeiling>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Lifted_BumpCeiling"/>
    </AnimLayer>
   </Fragment>
  </Lifted_BumpCeiling>
  <Taunt>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_crazyidle_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_crazyidle_b"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_CrazyIdle_E"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Taunt>
  <Fatality_Front_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.2" Duration="0.2"/>
     <Animation name="1p_fatality_mimic_front_a_wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.86666667" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.25" StartTime="0" Duration="0.1"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
       <StopTrigger value="null"/>
       <FireAndForget value="true"/>
       <AttachmentJoint value=""/>
       <Radius value="0"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.64999998" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchGenericFatality"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="landFF"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.2" Duration="0"/>
     <Animation name="Combat_Fatality_Front_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAttachEntity">
      <ProceduralParams>
       <ScopeName value="SlaveChar"/>
       <BoneAttachmentName value="anchor"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.125" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.26666665" StartTime="0" Duration="0.001901269"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Shared.Death.FatalityStrike"/>
       <JointName value=""/>
       <AttachmentName value="fx_head"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="45"/>
        <Element value="0"/>
        <Element value="-45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1333333" StartTime="0" Duration="0.0021332502"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_Wrench>
  <Stunned>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Stunned_In"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Stunned_Loop" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Stunned_Out"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Stunned>
  <PushObstacle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Relaxed_Distractor_Swipe"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.6" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPushObstaclesEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <Impulse value="0.5"/>
       <ImpulseAddOnReattempt value="0.5"/>
       <Radius value="1.5"/>
       <RadiusAddOnReattempt value="0.25"/>
       <Falloff value="0.60000002"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.6700002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Relaxed_Distractor_Swipe_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPushObstaclesEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <Impulse value="0.5"/>
       <ImpulseAddOnReattempt value="0.5"/>
       <Radius value="1.5"/>
       <RadiusAddOnReattempt value="0.25"/>
       <Falloff value="0.60000002"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.12"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </PushObstacle>
  <SideStep>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="Front">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_SideStep_Front_A" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Front">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_SideStep_Front_B" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="Back">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_SideStep_Back_A" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Back">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_SideStep_Back_B" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_SideStep_Left_A" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_SideStep_Left_B" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_SideStep_Right_A" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_SideStep_Right_B" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_SideStep_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_SideStep_Front_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_SideStep_Back_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Back">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_SideStep_Back_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_SideStep_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_SideStep_Left_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_SideStep_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_SideStep_Right_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </SideStep>
  <Dodge>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_DodgeAttack_Back_B" speed="0.85000002"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Dodge"/>
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
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="-1"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="true"/>
       <PlayerHitImpulse value="1000"/>
       <NpcHitImpulse value="1000"/>
       <OtherHitImpulse value="100"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="true"/>
       <PlayerHitImpulse value="1000"/>
       <NpcHitImpulse value="1000"/>
       <OtherHitImpulse value="100"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.22499996" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Dodge_Back_A" speed="0.69999999"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Dodge_Back_B" speed="0.69999999"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_DodgeAttack_Back_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Mimic_Dodge"/>
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
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="-1"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="true"/>
       <PlayerHitImpulse value="1000"/>
       <NpcHitImpulse value="1000"/>
       <OtherHitImpulse value="100"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="true"/>
       <PlayerHitImpulse value="1000"/>
       <NpcHitImpulse value="1000"/>
       <OtherHitImpulse value="100"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.22499996" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Dodge_Back_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Dodge_Back_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Dodge>
  <Melee_JumpAttack_Telegraph>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_jumpattack_telegraph_a_front" speed="0.80000001"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_jumpattack_telegraph_b_front" speed="0.80000001"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_jumpattack_telegraph_c_front" speed="0.80000001"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Melee_JumpAttack_Telegraph>
  <Mimic_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Mimic_In"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Mimic_In>
  <Mimic_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Mimic_Out"/>
    </AnimLayer>
   </Fragment>
  </Mimic_Out>
  <BreakOutOfGloo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.2" Duration="0"/>
     <Animation name="combat_smallhit_front_a" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </BreakOutOfGloo>
  <BreakGloo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Relaxed_Distractor_Swipe"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.6" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPushObstaclesEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <Impulse value="0.5"/>
       <ImpulseAddOnReattempt value="0.5"/>
       <Radius value="1.5"/>
       <RadiusAddOnReattempt value="0.25"/>
       <Falloff value="0.60000002"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.6700002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Relaxed_Distractor_Swipe_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPushObstaclesEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <Impulse value="0.5"/>
       <ImpulseAddOnReattempt value="0.5"/>
       <Radius value="1.5"/>
       <RadiusAddOnReattempt value="0.25"/>
       <Falloff value="0.60000002"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.12"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </BreakGloo>
  <UnMimic_Attack>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_UnMimic_Attack_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftLeg"/>
       <ValidHitRadius value="0.40000001"/>
       <DoesHalfDamage value="true"/>
       <PlayerHitImpulse value="500"/>
       <NpcHitImpulse value="500"/>
       <OtherHitImpulse value="500"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.55000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightLeg"/>
       <ValidHitRadius value="0.40000001"/>
       <DoesHalfDamage value="true"/>
       <PlayerHitImpulse value="500"/>
       <NpcHitImpulse value="500"/>
       <OtherHitImpulse value="500"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </UnMimic_Attack>
  <MantleDown>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Combat_ClimbDown"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </MantleDown>
  <MindJack_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MindJack_In"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </MindJack_In>
  <MindJack_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MindJack_Out"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </MindJack_Out>
  <Notice>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Danger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Noticed_Danger_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Danger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Noticed_Danger_Front_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Notice>
  <Distractor_LookAt_High_A>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="distractor_lookat_high_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Distractor_LookAt_High_A>
  <Fatality_Front_A_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.2" Duration="0.2"/>
     <Animation name="1p_fatality_mimic_front_a_wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.86666667" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.25" StartTime="0" Duration="0.1"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
       <StopTrigger value="null"/>
       <FireAndForget value="true"/>
       <AttachmentJoint value=""/>
       <Radius value="0"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchGenericFatality"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="Stomp"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.2" Duration="0"/>
     <Animation name="Combat_Fatality_Front_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAttachEntity">
      <ProceduralParams>
       <ScopeName value="SlaveChar"/>
       <BoneAttachmentName value="anchor"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.125" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.26666665" StartTime="0" Duration="0.001901269"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Shared.Death.FatalityStrike"/>
       <JointName value=""/>
       <AttachmentName value="fx_head"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="45"/>
        <Element value="0"/>
        <Element value="-45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1333333" StartTime="0" Duration="0.0021332502"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_A_Wrench>
  <Fatality_Front_B_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.2" Duration="0.2"/>
     <Animation name="1p_fatality_mimic_front_a_wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.86666667" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.25" StartTime="0" Duration="0.1"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
       <StopTrigger value="null"/>
       <FireAndForget value="true"/>
       <AttachmentJoint value=""/>
       <Radius value="0"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchGenericFatality"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="Stomp"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.2" Duration="0"/>
     <Animation name="Combat_Fatality_Front_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAttachEntity">
      <ProceduralParams>
       <ScopeName value="SlaveChar"/>
       <BoneAttachmentName value="anchor"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.125" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.26666665" StartTime="0" Duration="0.001901269"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Shared.Death.FatalityStrike"/>
       <JointName value=""/>
       <AttachmentName value="fx_head"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="45"/>
        <Element value="0"/>
        <Element value="-45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1333333" StartTime="0" Duration="0.0021332502"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_B_Wrench>
  <Fatality_Front_C_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.2" Duration="0.2"/>
     <Animation name="1p_fatality_mimic_front_a_wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.86666667" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.25" StartTime="0" Duration="0.1"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
       <StopTrigger value="null"/>
       <FireAndForget value="true"/>
       <AttachmentJoint value=""/>
       <Radius value="0"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchGenericFatality"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="Stomp"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.2" Duration="0"/>
     <Animation name="Combat_Fatality_Front_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAttachEntity">
      <ProceduralParams>
       <ScopeName value="SlaveChar"/>
       <BoneAttachmentName value="anchor"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.125" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.26666665" StartTime="0" Duration="0.001901269"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Shared.Death.FatalityStrike"/>
       <JointName value=""/>
       <AttachmentName value="fx_head"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="45"/>
        <Element value="0"/>
        <Element value="-45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1333333" StartTime="0" Duration="0.0021332502"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_C_Wrench>
  <Fatality_Front_LR_A_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Fatality_Mimic_Front_LR_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.86666667" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.1333333" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
       <StopTrigger value="null"/>
       <FireAndForget value="true"/>
       <AttachmentJoint value=""/>
       <Radius value="0"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.42500001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchGenericFatality"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Fatality_Front_LR_A_Wrench"/>
     <Blend ExitTime="1.3999999" StartTime="0" Duration="0"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAttachEntity">
      <ProceduralParams>
       <ScopeName value="SlaveChar"/>
       <BoneAttachmentName value="anchor"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.001901269"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Shared.Death.FatalityStrike"/>
       <JointName value=""/>
       <AttachmentName value="fx_head"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="45"/>
        <Element value="0"/>
        <Element value="-45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.22500002" StartTime="0" Duration="0.16906667"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_LR_A_Wrench>
  <Fatality_Front_LR_B_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Fatality_Mimic_Front_LR_B_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.1666666" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.25" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.66666669" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
       <StopTrigger value="null"/>
       <FireAndForget value="true"/>
       <AttachmentJoint value=""/>
       <Radius value="0"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.75" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchGenericFatality"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Fatality_Front_LR_B_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAttachEntity">
      <ProceduralParams>
       <ScopeName value="SlaveChar"/>
       <BoneAttachmentName value="anchor"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.2333333" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.001901269"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Shared.Death.FatalityStrike"/>
       <JointName value=""/>
       <AttachmentName value="fx_head"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="45"/>
        <Element value="0"/>
        <Element value="-45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.59999996" StartTime="0" Duration="0.0021332502"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.80190128" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_LR_B_Wrench>
  <Fatality_Front_RL_A_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Fatality_Mimic_Front_RL_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.86666667" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.25" StartTime="0" Duration="0.1"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
       <StopTrigger value="null"/>
       <FireAndForget value="true"/>
       <AttachmentJoint value=""/>
       <Radius value="0"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchGenericFatality"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Fatality_Front_RL_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAttachEntity">
      <ProceduralParams>
       <ScopeName value="SlaveChar"/>
       <BoneAttachmentName value="anchor"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.125" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.26666665" StartTime="0" Duration="0.001901269"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Shared.Death.FatalityStrike"/>
       <JointName value=""/>
       <AttachmentName value="fx_head"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="45"/>
        <Element value="0"/>
        <Element value="-45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1333333" StartTime="0" Duration="0.0021332502"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.3" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="-8.0297587e+18"/>
       <Stiffness value="-8.0297587e+18"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_RL_A_Wrench>
  <Fatality_Front_RL_B_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Fatality_Mimic_Front_RL_B_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.0333333" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.25" StartTime="0" Duration="0.1"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
       <StopTrigger value="null"/>
       <FireAndForget value="true"/>
       <AttachmentJoint value=""/>
       <Radius value="0"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchGenericFatality"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.0333333" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="Stomp"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Fatality_Front_RL_B_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAttachEntity">
      <ProceduralParams>
       <ScopeName value="SlaveChar"/>
       <BoneAttachmentName value="anchor"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.16666667" StartTime="0" Duration="0.001901269"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Shared.Death.FatalityStrike"/>
       <JointName value=""/>
       <AttachmentName value="fx_head"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="45"/>
        <Element value="0"/>
        <Element value="-45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.2333333" StartTime="0" Duration="0.0021332502"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.0666667" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.1666666" StartTime="0" Duration="0"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="-8.0297587e+18"/>
       <Stiffness value="-8.0297587e+18"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_RL_B_Wrench>
  <Search>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Alerted_Search_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Alerted_Search_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Alerted_Search_C"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Search>
  <Glood_Pose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Glood_Pose_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Glood_Pose_B"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Glood_Pose_C"/>
    </AnimLayer>
   </Fragment>
  </Glood_Pose>
  <distractor_conference_room>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_CrazyIdle_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </distractor_conference_room>
  <Feed>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Cannibal_HarvestA" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Cannibal_Harvest_In"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Cannibal_Harvest_Out"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Feed>
  <Cocoon>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Cannibal_Cocoon" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Cannibal_Cocoon_In"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cocoon>
  <TentacleTrap_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_TentacleTrap_In"/>
    </AnimLayer>
   </Fragment>
  </TentacleTrap_In>
  <TentacleTrap_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_tentacleTrap_Out"/>
    </AnimLayer>
   </Fragment>
  </TentacleTrap_Out>
  <Jump_Start>
   <Fragment BlendOutDuration="0.2" Weight="5" Cooldown="5" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Combat_JumpAttack" speed="0.75"/>
     <Blend ExitTime="0.21250001" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Jump_Start>
  <Jump_InAir>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="Combat_Fall" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Jump_InAir>
  <Jump_Land>
   <Fragment BlendOutDuration="0.2" Weight="3" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Idle_D"/>
    </AnimLayer>
   </Fragment>
  </Jump_Land>
  <Burrow_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Burrow_In"/>
    </AnimLayer>
   </Fragment>
  </Burrow_In>
  <Burrow_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Burrow_Out"/>
    </AnimLayer>
   </Fragment>
  </Burrow_Out>
  <Burrow_Lifted>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Burrow_Lifted_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Burrow_Lifted_B"/>
    </AnimLayer>
   </Fragment>
  </Burrow_Lifted>
  <Mark>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Detect_Mimic_A" speed="2"/>
    </AnimLayer>
   </Fragment>
  </Mark>
  <Cs_TranstarLabs_Sq05_Wormhole_In_Mimic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="TranstarLabs_Sq05_Wormhole_In_Mimic"/>
    </AnimLayer>
   </Fragment>
  </Cs_TranstarLabs_Sq05_Wormhole_In_Mimic>
  <Cs_TranstarLabs_Sq05_Wormhole_Idle_Mimic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="TranstarLabs_Sq05_Wormhole_Idle_Mimic" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Cs_TranstarLabs_Sq05_Wormhole_Idle_Mimic>
  <Cs_TranstarLabs_Sq05_Wormhole_Out_Mimic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="TranstarLabs_Sq05_Wormhole_Out_Mimic"/>
    </AnimLayer>
   </Fragment>
  </Cs_TranstarLabs_Sq05_Wormhole_Out_Mimic>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="Motion_Idle" to="">
   <Variant from="Combat" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.2" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Motion_Idle" to="Motion_Move">
   <Variant from="Unmimicking" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-1.6000001" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="2.3841858e-07"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Motion_Idle" to="Melee_JumpAttack">
   <Variant from="Unmimicking" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-1.6000001" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="2.3841858e-07" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Motion_Move" to="">
   <Variant from="Combat" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.5" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Melee_JumpAttack" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Melee_JumpAttack" to="Fall">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0.57753599" startTime="-0.75579739" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.15833592" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.0033919811" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Melee_JumpAttack_Bump" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.25" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Melee_JumpAttack_Bump" to="Fall">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0.48742402" startTime="-0.62368715" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.44166392" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.44414389" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Reaction_Death" to="">
   <Variant from="" to="" fromFrag="hit+Stagger+LeftRight">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.2" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="hit+Stagger+RightLeft">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.2" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="hit+Stagger">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" startTime="-0.29999995" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="MantleUp" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.30000001" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Motion_WallJump_Out" to="Motion_Move">
   <Variant from="" to="" fromFrag="High">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.16268367" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="Medium">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.17184937" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="Low">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.15175897" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Motion_WallJump_Out" to="Fall">
   <Variant from="" to="" fromFrag="High">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.86051095" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.10387838" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="" fromFrag="Medium">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.58118725" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-0.050000072" StartTime="0" Duration="0.072903931" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="" fromFrag="Low">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.774351" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.068069279" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Motion_Leap" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.25" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Motion_Leap" to="Fall">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0.69999999" startTime="-0.97333336" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-0.53333336" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Melee" to="">
   <Variant from="Combat" to="" fromFrag="Left">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.30000001" enterTime="0"/>
   </Variant>
   <Variant from="Combat" to="" fromFrag="Right">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.39999998" enterTime="0"/>
   </Variant>
   <Variant from="Combat" to="">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="0" selectTime="0" startTime="-0.39999998" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="PushObstacle" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.25" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="SideStep" to="">
   <Variant from="Front" to="" fromFrag="Front">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.30000001" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="Back">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.5" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="Left">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.40000001" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="Right">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.30000001" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Dodge" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.25" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Melee_JumpAttack_Telegraph" to="Melee_JumpAttack">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.10745209" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.13" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>