
<AnimDB FragDef="Animations/Mannequin/ADB/Ai_Operator_FragmentIds.xml" TagDef="Animations/Mannequin/ADB/Ai_Operator_Tags.xml">
 <FragmentList>
  <Motion_Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_idle_a" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Idle_A" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Motion_Idle>
  <Motion_Move>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_idle_a" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Idle_A" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Turn"/>
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
  </Motion_Move>
  <Reaction_Death>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_left_a"/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
     <Animation name="mediumhit_left_a"/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
     <Animation name="mediumhit_right_a"/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
     <Animation name="mediumhit_front_a"/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
     <Animation name="mediumhit_back_a"/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
     <Animation name="mediumhit_front_a"/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
     <Animation name="mediumhit_back_a"/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="mediumhit_right_a"/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.28904328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.28904328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.28904328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.28904328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.28904328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Back_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.28904328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Back_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.28904328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.28904328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Back_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Front_A"/>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact_Small"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="1"/>
       <Vertical value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Back_A"/>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact_Small"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Left_A"/>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Eng_Corrupted_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Right_A"/>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact_Small"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Knockdown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact_Knockdown"/>
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
     <Blend ExitTime="0.125" StartTime="0" Duration="0.39062405"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Knockdown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact_Small"/>
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
     <Blend ExitTime="0.125" StartTime="0" Duration="0.37782401"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Knockdown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact_Knockdown"/>
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
     <Blend ExitTime="0.125" StartTime="0" Duration="0.37782401"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Knockdown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Back_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact_Knockdown"/>
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
     <Blend ExitTime="0.125" StartTime="0" Duration="0.37782401"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.28904328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Back_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.28904328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.28904328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.28904328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="0.5"/>
       <MaxTimeInRagdoll value="1"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_HitReact"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Eng_Corrupted_HitReact"/>
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
     <Blend ExitTime="0.125" StartTime="0" Duration="0.416224"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="1"/>
       <MaxTimeInRagdoll value="3"/>
       <StopCurrentFragment value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Back_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Eng_Corrupted_HitReact"/>
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
     <Blend ExitTime="0.125" StartTime="0" Duration="0.37782401"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="1"/>
       <MaxTimeInRagdoll value="3"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Left_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Eng_Corrupted_HitReact"/>
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
     <Blend ExitTime="0.125" StartTime="0" Duration="0.37782401"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="1"/>
       <MaxTimeInRagdoll value="3"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="MediumHit_Right_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Eng_Corrupted_HitReact"/>
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
     <Blend ExitTime="0.125" StartTime="0" Duration="0.37782401"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="1"/>
       <MaxTimeInRagdoll value="3"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Reaction_Death>
  <Distractor_Collision_Forward>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_distractor_collision_forward_end"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Relaxed_Distractor_Collision_Forward_Loop_A" flags="Loop"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Relaxed_Distractor_Collision_Forward_Loop_B" flags="Loop"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Relaxed_Distractor_Collision_Forward_Loop_C" flags="Loop"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Relaxed_Distractor_Collision_Forward_Loop_D" flags="Loop"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_distractor_collision_forward_start"/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="NextStage"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Distractor_Collision_Forward>
  <BlendRagdoll>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="blendIn+standup+ragdoll">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="1"/>
       <Stiffness value="10"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="30" StartTime="0" Duration="1.3045471"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="idle_a"/>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
   </Fragment>
  </BlendRagdoll>
  <ForceResist>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Front_In"/>
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Death_Front"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Eng_Corrupted_ForceResist"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Front" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+End">
    <AnimLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Front_Out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Back_In"/>
     <Blend ExitTime="0.47499999" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Death_Back"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Eng_Corrupted_ForceResist"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Back" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Back_Out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Left_In"/>
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Death_Left"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Eng_Corrupted_ForceResist"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Left" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Left_Out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Right_In"/>
     <Blend ExitTime="0.47499999" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Death_Right"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Eng_Corrupted_ForceResist"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Right" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ForceResist_Right_Out"/>
    </AnimLayer>
   </Fragment>
  </ForceResist>
  <Hypnotized>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Hypnotized_A" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Hypnotized>
  <Blinded>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Blinded_A"/>
    </AnimLayer>
   </Fragment>
  </Blinded>
  <GetUp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Disabled_GetUp_LeftSideDown"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_GetUp"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Disabled_GetUp_RightSideDown"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_GetUp"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Disabled_GetUp_BottomSideDown"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Engineering_GetUp"/>
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
  </GetUp>
  <Dormant>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="DeathPose_Generic_A" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Dormant>
  <BreakGloo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="BreakGloo"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.375" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.14999998" StartTime="0" Duration="0.00022447109"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </BreakGloo>
  <PushObstacle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="BreakGloo"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.36250001" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.1875" StartTime="0" Duration="9.894371e-05"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </PushObstacle>
  <Lifted>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_idle_a" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="idle_a" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Lifted>
  <Lifted_BumpCeiling>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="-0.1" StartTime="0" Duration="0.2"/>
     <Animation name="idle_a"/>
    </AnimLayer>
   </Fragment>
  </Lifted_BumpCeiling>
  <Aiming>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Aiming">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Aiming>
  <AimPose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="aimposes_combat_idle"/>
    </AnimLayer>
   </Fragment>
  </AimPose>
  <Engineer_Torch>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_melee_torch_in"/>
     <Blend ExitTime="1.2" StartTime="0" Duration="0.2"/>
     <Animation name="combat_melee_torch_attack_a" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkNpConeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <ConeAngle value="45"/>
       <ConeLength value="3.4000001"/>
       <ConeOffset value="-1.5"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="0"/>
       <NpcHitImpulse value="0"/>
       <OtherHitImpulse value="0"/>
       <DamageCooldown value="0.25"/>
       <SingleHitPerEntity value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Engineer_Torch>
  <Notice>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Idle_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Medical_NoticePlayer"/>
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
  </Notice>
  <ProbeExtend>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_melee_probe_extended" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </ProbeExtend>
  <ProbeAttack>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_melee_probe_attack_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.94375002" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="DoZap0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.1" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="DoZap1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </ProbeAttack>
  <Scan>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Scan"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ScanMedic"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorMedical.Scanner_00"/>
       <JointName value="fx_scan_jnt"/>
       <AttachmentName value=""/>
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
       <KillOnExit value="true"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_Medical_Scan"/>
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
   </Fragment>
  </Scan>
  <Dispenser_Pose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Dispenser_Pose"/>
    </AnimLayer>
   </Fragment>
  </Dispenser_Pose>
  <Distractor_Inspect_A>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="Relaxed_Distractor_Inspect_A"/>
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
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1" StartTime="0" Duration="0.33425534"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.56"/>
     <Animation name="Relaxed_Distractor_Inspect_B"/>
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
    <ProcLayer>
     <Blend ExitTime="0.70000005" StartTime="0" Duration="0.099999905"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.8" StartTime="0" Duration="0.13600016"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.63"/>
     <Animation name="Relaxed_Distractor_Inspect_C"/>
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
    <ProcLayer>
     <Blend ExitTime="0.63" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.8200001" StartTime="0" Duration="0.11199999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.63"/>
     <Animation name="Relaxed_Distractor_Inspect_D"/>
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
    <ProcLayer>
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1500001" StartTime="0" Duration="0.11200023"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.58999997"/>
     <Animation name="Relaxed_Distractor_Inspect_E"/>
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
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1" StartTime="0" Duration="0.11199999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Distractor_Inspect_A>
  <Distractor_Inspect_High_A>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Distractor_Inspect_High_A"/>
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
    <ProcLayer>
     <Blend ExitTime="0.63" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.8200001" StartTime="0" Duration="0.11199999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Distractor_Inspect_High_B"/>
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
    <ProcLayer>
     <Blend ExitTime="0.63" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.8200001" StartTime="0" Duration="0.11199999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Distractor_Inspect_High_C"/>
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
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.85" StartTime="0" Duration="0.11199999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Distractor_Inspect_High_D"/>
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
    <ProcLayer>
     <Blend ExitTime="0.64999998" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.8000001" StartTime="0" Duration="0.11199999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Distractor_Inspect_High_E"/>
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
    <ProcLayer>
     <Blend ExitTime="0.63" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.8200001" StartTime="0" Duration="0.11199999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Distractor_Inspect_High_A>
  <Glood_Pose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Glood_Pose_A"/>
    </AnimLayer>
   </Fragment>
  </Glood_Pose>
  <ArmsRetracted>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ArmsRetracted" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </ArmsRetracted>
  <ProbeAttackFast>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_melee_probe_attack_a_fast" speed="0.40000001"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.72500002" StartTime="0" Duration="2.9802322e-08"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="DoZap0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="2.9802322e-08"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="DoZap1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Operator_CRPT_Medical_Corrupt_Zap"/>
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
  </ProbeAttackFast>
  <GetCorrupted>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_getcorrupted"/>
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
   </Fragment>
  </GetCorrupted>
  <Distractor_Inspect_Low_A>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Distractor_Inspect_Low_A"/>
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
    <ProcLayer>
     <Blend ExitTime="0.63" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.97000003" StartTime="0" Duration="0.11199999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Distractor_Inspect_Low_B"/>
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
    <ProcLayer>
     <Blend ExitTime="0.63" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.91999996" StartTime="0" Duration="0.11199999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Distractor_Inspect_Low_C"/>
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
    <ProcLayer>
     <Blend ExitTime="0.63" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.87" StartTime="0" Duration="0.11199999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Distractor_Inspect_Low_D"/>
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
    <ProcLayer>
     <Blend ExitTime="0.55000001" StartTime="0" Duration="0.1"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.05" StartTime="0" Duration="0.11199999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Distractor_Inspect_Low_E"/>
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
    <ProcLayer>
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0.10200012"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Robots.OperatorEngineer.BlowTorchRepair_00"/>
       <JointName value=""/>
       <AttachmentName value="operatorengineer01_blowtorch"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0.025"/>
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
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1500001" StartTime="0" Duration="0.11199999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Distractor_Inspect_Low_A>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="" to="ProbeExtend">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="combat_melee_probe_in"/>
      <Blend ExitTime="1.9666667" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="" to="ProbeAttack">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="combat_melee_probe_in"/>
      <Blend ExitTime="1.9666667" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Engineer_Torch" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="combat_melee_torch_out"/>
      <Blend ExitTime="0.83333325" StartTime="0" Duration="0.19999981"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="ProbeExtend" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="ProbeExtend" to="ProbeAttack">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="ProbeAttack" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
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
  <Blend from="ProbeAttack" to="ProbeExtend">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0"/>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>