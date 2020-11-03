
<AnimDB FragDef="Animations/Mannequin/ADB/Ai_Poltergeist_FragmentIds.xml" TagDef="Animations/Mannequin/ADB/Ai_Poltergeist_Tags.xml">
 <FragmentList>
  <Motion_Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_idle_a"/>
    </AnimLayer>
   </Fragment>
  </Motion_Idle>
  <Motion_Move>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_MoveTurn" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Motion_Move>
  <Motion_IdleTurn>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_MoveTurn"/>
    </AnimLayer>
   </Fragment>
  </Motion_IdleTurn>
  <Motion_IdleTurnBig>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_MoveTurn"/>
    </AnimLayer>
   </Fragment>
  </Motion_IdleTurnBig>
  <Reaction_Death>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_torso_front_lr_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_torso_front_rl_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_torso_left_lr_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_torso_left_rl_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_torso_back_lr_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_torso_back_rl_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_torso_right_lr_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_torso_right_rl_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_forward+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_forward+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_back+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.26249999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_back+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.26249999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_right+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Back_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_right+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_left+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_left+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Back_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_torso_front_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="MediumHit_Torso_Front_B"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_torso_left_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_torso_back_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_torso_right_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_ahead+hit+Knockdown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="bighit_torso_front_a_in"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
     <Blend ExitTime="0.19000006" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_behind+hit+Knockdown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="bighit_torso_front_a_in"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Poltergeist_Vox_Pain"/>
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
     <Blend ExitTime="0.099999994" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_forward+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_left+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_back+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Back_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.26249999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_right+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Death"/>
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
     <Blend ExitTime="0.27500001" StartTime="0" Duration="0"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Back_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Death"/>
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
     <Blend ExitTime="0.22499999" StartTime="0" Duration="0"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Death"/>
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
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_death_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Death"/>
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
     <Blend ExitTime="0.125" StartTime="0" Duration="0"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="LaserExplosion+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_death_explode"/>
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_death_explode" speed="0.60000002"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="1"/>
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
     <Blend ExitTime="2.0999999" StartTime="0" Duration="0.019999981"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="BigHit_Torso_Back_A_Out"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="BigHit_Torso_Front_A_Out"/>
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
  <Blinded>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_stunned_in"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_stunned_out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_stunned_loop"/>
    </AnimLayer>
   </Fragment>
  </Blinded>
  <BreakGloo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Push_Obstacles"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPushObstaclesEvent">
      <ProceduralParams>
       <AttachmentName value=""/>
       <Impulse value="0.5"/>
       <ImpulseAddOnReattempt value="0.5"/>
       <Radius value="1.5"/>
       <RadiusAddOnReattempt value="0.25"/>
       <Falloff value="0.60000002"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </BreakGloo>
  <Hypnotized>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_stunned_in"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_stunned_loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_stunned_out"/>
    </AnimLayer>
   </Fragment>
  </Hypnotized>
  <Stunned>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_stunned_in"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_stunned_loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_stunned_out"/>
    </AnimLayer>
   </Fragment>
  </Stunned>
  <Power_Throw>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_throw_front"/>
    </AnimLayer>
   </Fragment>
  </Power_Throw>
  <Power_Lift>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_lift_a"/>
    </AnimLayer>
   </Fragment>
  </Power_Lift>
  <Goo_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_goo_in"/>
    </AnimLayer>
   </Fragment>
  </Goo_In>
  <Goo_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_goo_out"/>
    </AnimLayer>
   </Fragment>
  </Goo_Out>
  <PushObstacle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Combat_Push_Obstacles"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPushObstaclesEvent">
      <ProceduralParams>
       <AttachmentName value=""/>
       <Impulse value="0.5"/>
       <ImpulseAddOnReattempt value="0.5"/>
       <Radius value="2"/>
       <RadiusAddOnReattempt value="0.5"/>
       <Falloff value="0.69999999"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </PushObstacle>
  <Nullwave_React>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="BigHit_Torso_Front_A_In"/>
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
  </Nullwave_React>
  <Mind_Jack_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MindJack_In"/>
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
  </Mind_Jack_In>
  <Mind_Jack_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MindJack_Out"/>
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
  </Mind_Jack_Out>
  <Force_Resist>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Back+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Back_In"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Front_In"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Force_Resist_Left_In"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Force_Resist_Right_In"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Back+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Back"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Front"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Force_Resist_Left"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Force_Resist_Right"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Back+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Back_Out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Front_Out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Force_Resist_Left_Out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Force_Resist_Right_Out"/>
    </AnimLayer>
   </Fragment>
  </Force_Resist>
  <Glood_Pose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Glood_Pose_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Glood_Pose_B"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Glood_Pose_C"/>
    </AnimLayer>
   </Fragment>
  </Glood_Pose>
 </FragmentList>
</AnimDB>