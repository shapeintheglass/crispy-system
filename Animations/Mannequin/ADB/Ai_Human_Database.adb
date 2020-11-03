
<AnimDB FragDef="Animations/Mannequin/ADB/Ai_Human_FragmentIds.xml" TagDef="Animations/Mannequin/ADB/Ai_Human_Tags.xml">
 <FragmentList>
  <Motion_Idle>
   <Fragment BlendOutDuration="0.2" Weight="5" Cooldown="5" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_idle_pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Relaxed+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Idle_Pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Relaxed+Transcribe">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_idle_a_empty"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_Walk_LeftArmTranscribe_Anita"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="10" Cooldown="1" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Idle_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="5" Cooldown="5" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Idle_B"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="10" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Idle_C"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="10" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Idle_D"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Idle_A_Empty" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Idle_A_Empty" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_aiming_idle_pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Charge">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Idle_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Idle_Pistol"/>
    </AnimLayer>
   </Fragment>
  </Motion_Idle>
  <Motion_Move>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="4d-Bspace_Combat_MoveTurnStrafeSlope_Pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="4d-Bspace_Combat_MoveTurnStrafeSlope_Pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="3d-Bspace_Corrupted_MoveTurnSlope" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="4d-Bspace_Relaxed_MoveTurnStrafeSlope_Empty" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="4d-Bspace_Relaxed_MoveTurnStrafeSlope_Empty" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="4d-Bspace_Combat_Aiming_MoveTurnStrafeSlope_Pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Transcribe">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="4d-Bspace_Relaxed_MoveTurnStrafeSlope_Empty" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="simulationlabs_sq10_walk_leftarmtranscribe_anita" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="4d-Bspace_Combat_MoveTurnStrafeSlope_Pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Charge">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="3d-Bspace_Corrupted_ChargeTurnSlope" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Fear">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2" flags="TimeWarping"/>
     <Animation name="Fear_Run_Forward_Empty" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="GunUp">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="4d-Bspace_Combat_MoveTurnStrafeSlope_Pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Motion_Move>
  <Motion_IdleTurn>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_StepRot_Pistol"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Relaxed+Transcribe">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Relaxed_MoveStart_Empty"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_Walk_LeftArmTranscribe_Anita"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Relaxed_StepRot_Empty"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Corrupted_StepRot"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Relaxed_StepRot_Empty"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Relaxed_StepRot_Empty"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_Aiming_StepRot_Pistol"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Charge">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Corrupted_StepRot"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_StepRot_Pistol"/>
    </AnimLayer>
   </Fragment>
  </Motion_IdleTurn>
  <AimPose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat+Pistol+Disable">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="AimPoses_Combat_Idle_Pistol"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="AimPoses_Combat_Aiming_Idle_Pistol"/>
    </AnimLayer>
   </Fragment>
  </AimPose>
  <Aiming>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Aiming">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Aiming>
  <LookPose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="SimulationLabs_Sq08_Alex_LookPose">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="lookposes_relaxed_torso_empty" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="LookPoses_Relaxed_Torso_Empty" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </LookPose>
  <Looking>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Looking">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Looking>
  <LookPoseHead>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="SimulationLabs_Sq08_Alex_LookPose">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq08_Head_LookPoses_Alex" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="lookposes_relaxed_head_empty" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </LookPoseHead>
  <LookBlink>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Blink"/>
    </AnimLayer>
   </Fragment>
  </LookBlink>
  <LookSaccade>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="saccade" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </LookSaccade>
  <Reaction_Death>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_forward+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_front_lr_a_pistol"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_forward+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_front_rl_a_pistol"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_back+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_back_lr_a_pistol"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_back+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_back_rl_a_pistol"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_left+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_left_lr_a_pistol"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_left+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_left_rl_a_pistol"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_right+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_right_lr_a_pistol"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_right+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MediumHit_Torso_Right_RL_A_Pistol"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_forward+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_death_right_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.11105067"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_forward+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Left_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1875" StartTime="0" Duration="0.078278273"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_left+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Front_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15625" StartTime="0" Duration="0.10808614"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_left+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Back_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.11250898"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_right+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Back_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15625" StartTime="0" Duration="0.10752329"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_right+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_death_front_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15625" StartTime="0" Duration="0.10896841"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_back+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15533249"/>
     <Animation name="combat_aiming_death_left_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15533251" StartTime="0" Duration="0.10445328"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_back+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.12633295"/>
     <Animation name="combat_aiming_death_right_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.12633294" StartTime="0" Duration="0.073073223"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_front_lr_a_empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_front_rl_a_empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_back_lr_a_empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_back_rl_a_empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_left_lr_a_empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_left_rl_a_empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MediumHit_Torso_Right_LR_A_Empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MediumHit_Torso_Right_RL_A_Empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Death_Right_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.11105067"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.12479366"/>
     <Animation name="Relaxed_Death_Left_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.046724692"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Death_Front_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15625" StartTime="0" Duration="0.10865629"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Death_Back_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1875" StartTime="0" Duration="0.077937275"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Death_Back_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.190625" StartTime="0" Duration="0.075298443"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Death_Front_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.13944736"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.12028566"/>
     <Animation name="Relaxed_Death_Left_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.069708839"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Death_Right_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15625" StartTime="0" Duration="0.10915428"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_forward+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MediumHit_Torso_Front_A_Pistol"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_back+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_back_a_pistol"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_left+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_left_a_pistol"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_right+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_right_a_pistol"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_forward+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Front_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15937501" StartTime="0" Duration="0.10291396"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_left+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.13227023"/>
     <Animation name="Combat_Death_Left_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.16875002" StartTime="0" Duration="0.09499307"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_right+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.056118682"/>
     <Animation name="Combat_Death_Right_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.11239973"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_back+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_aiming_death_back_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0.06621787"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_ahead+hit+Knockdown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1254217"/>
     <Animation name="Combat_BigHit_Torso_Front_A_In_Pistol"/>
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
     <Blend ExitTime="0.1254217" StartTime="0" Duration="0.1517655"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_behind+hit+Knockdown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_BigHit_Torso_Back_A_In_Pistol"/>
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
     <Blend ExitTime="0.22499996" StartTime="0" Duration="0.2"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_front_a_empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_back_a_empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_left_a_empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MediumHit_Torso_Right_A_Empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_death_front_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.140625" StartTime="0" Duration="0.12182552"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.051346347"/>
     <Animation name="Relaxed_Death_Left_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.070368603"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Death_Right_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15625" StartTime="0" Duration="0.10896841"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Death_Back_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.18695024" StartTime="0" Duration="0.077450097"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_ahead+hit+Knockdown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.12450253"/>
     <Animation name="combat_bighit_torso_front_a_in_empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0014338568"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.099999994" StartTime="0" Duration="0.14757121"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_behind+hit+Knockdown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_BigHit_Torso_Back_A_In_Empty"/>
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
     <Blend ExitTime="0.22500002" StartTime="0" Duration="0.2"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="4"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_forward+death+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_lr_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.21250001" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_forward+death+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_rl_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.175" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_left+death+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_lr_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_left+death+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_rl_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.11250001" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_back+death+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_back_lr_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_back+death+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_back_rl_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_right+death+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Torso_Right_LR_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_right+death+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Torso_Right_RL_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+death+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_lr_a_empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000004" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+death+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_rl_a_empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.17500001" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+death+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_lr_a_empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+death+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_rl_a_empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.11250001" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+death+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_back_lr_a_empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+death+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_back_rl_a_empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+death+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Torso_Right_LR_A_Empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.175" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+death+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Torso_Right_RL_A_Empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.22499999" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_forward+death+Impact_High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Front_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_forward+death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.34999999" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_left+death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_left_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_left+death+Impact_High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Left_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1375" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_back+death+Impact_High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Back_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_back+death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_back_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_right+death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Torso_Right_a_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_right+death+Impact_High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Right_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_forward+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="combat_death_front_a_pistol"/>
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
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_right+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="combat_death_right_a_pistol"/>
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
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0.2"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_left+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="combat_death_left_a_pistol"/>
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
     <Blend ExitTime="0.13749999" StartTime="0" Duration="0.2"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="so_back+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="combat_death_back_a_pistol"/>
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
     <Blend ExitTime="0.175" StartTime="0" Duration="0.2"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+death+Impact_High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Relaxed_Death_Front_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.22499999" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_a_empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_left_a_empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+death+Impact_High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Relaxed_Death_Left_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.13750005" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+death+Impact_High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Relaxed_Death_Back_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_back_a_empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Torso_Right_A_Empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+death+Impact_High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Relaxed_Death_Right_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.175" StartTime="0" Duration="0.2"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="Relaxed_Death_Left_A_Pistol"/>
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
     <Blend ExitTime="0.12187499" StartTime="0" Duration="0.2"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="relaxed_death_right_a_pistol"/>
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
     <Blend ExitTime="0.15625" StartTime="0" Duration="0.2"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="relaxed_death_back_a_pistol"/>
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
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="relaxed_death_front_a_pistol"/>
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
     <Blend ExitTime="0.17499995" StartTime="0" Duration="0.2"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="LaserExplosion+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_death_explode_pistol"/>
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
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="EnergizedExplosion"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="LaserExplosion+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Explode_Empty"/>
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
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="EnergizedExplosion"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Reaction_Death>
  <CODE_MT_idleToMove>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_MoveStart_Pistol"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_MoveStart_Pistol"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2" flags="TimeWarping"/>
     <Animation name="2d-Bspace_Relaxed_MoveStart_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Corrupted_MoveStart" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2" flags="TimeWarping"/>
     <Animation name="2d-Bspace_Relaxed_MoveStart_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_Aiming_MoveStart_Pistol"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Transcribe">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Relaxed_MoveStart_Empty" flags="FullRootPriority"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_Walk_LeftArmTranscribe_Anita"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_idleToMove>
  <CODE_MT_walkToIdle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="2d-Bspace_Combat_MoveStop_Walk_Pistol"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="2d-Bspace_Relaxed_MoveStop_Walk_Empty"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="2d-Bspace_Corrupted_MoveStop_Walk"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="2d-Bspace_Relaxed_MoveStop_Walk_Empty"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_Aiming_MoveStop_Walk_Pistol"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkToIdle>
  <CODE_MT_runToIdle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="2d-Bspace_Combat_MoveStop_Run_Pistol"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="2d-Bspace_Relaxed_MoveStop_Run_Empty"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="2d-Bspace_Relaxed_MoveStop_Run_Empty"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_Aiming_MoveStop_Run_Pistol"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_runToIdle>
  <Cs_SimulationLabs_Sq11_MimicAttack_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq11_MimicAttack_Bellamy"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="20.799999" StartTime="0" Duration="0"/>
     <Animation name="husk_a"/>
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
     <Blend ExitTime="30.299999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_SimulationLabs_Sq11_MimicAttack_Bellamy>
  <Cs_SimulationLabs_Sq11_MimicAttack_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq11_MimicAttack_Anita"/>
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
  </Cs_SimulationLabs_Sq11_MimicAttack_Anita>
  <Cs_SimulationLabs_Sq11_MimicAttack_SecuritiyGuard>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq11_MimicAttack_SecurityGuard"/>
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
  </Cs_SimulationLabs_Sq11_MimicAttack_SecuritiyGuard>
  <Cs_SimulationLabs_Sq04_Mechanic_Hello_Mechanic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq04_Mechanic_Hello_Mechanic"/>
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
  </Cs_SimulationLabs_Sq04_Mechanic_Hello_Mechanic>
  <Cs_SimulationLabs_Sq04_Mechanic_Idle_Mechanic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq04_Mechanic_Idle_Mechanic" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq04_Mechanic_Idle_Mechanic>
  <Cs_SimulationLabs_Sq04_Mechanic_Working_Mechanic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq04_Mechanic_Working_Mechanic" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq04_Mechanic_Working_Mechanic>
  <Cs_SimulationLabs_Sq10_TestD_Start_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="SimulationLabs_Sq10_TestD_Start_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestD_Start_Bellamy>
  <Cs_SimulationLabs_Sq10_TestD_Start_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="SimulationLabs_Sq10_TestD_Start_Simmons"/>
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
  </Cs_SimulationLabs_Sq10_TestD_Start_Simmons>
  <Cs_SimulationLabs_Sq10_TestD_Start_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq10_TestD_Start_Anita"/>
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
  </Cs_SimulationLabs_Sq10_TestD_Start_Anita>
  <Cs_SimulationLabs_Sq10_TestD_Wait_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestD_Wait_Bellamy" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestD_Wait_Bellamy>
  <Cs_SimulationLabs_Sq10_TestD_Wait_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq10_TestD_Wait_Anita" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestD_Wait_Anita>
  <Cs_SimulationLabs_Sq10_TestD_Part1_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="SimulationLabs_Sq10_TestD_Part1_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestD_Part1_Bellamy>
  <Cs_SimulationLabs_Sq10_TestD_Part2_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="SimulationLabs_Sq10_TestD_Part2_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestD_Part2_Bellamy>
  <Cs_SimulationLabs_Sq10_TestD_Part3_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="SimulationLabs_Sq10_TestD_Part3_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestD_Part3_Bellamy>
  <Cs_SimulationLabs_Sq10_TestD_Part4_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="SimulationLabs_Sq10_TestD_Part4_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestD_Part4_Bellamy>
  <Cs_SimulationLabs_Sq10_TestD_Part5_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="SimulationLabs_Sq10_TestD_Part5_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestD_Part5_Bellamy>
  <Cs_SimulationLabs_Sq10_TestB_End_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_End_Anita"/>
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
  </Cs_SimulationLabs_Sq10_TestB_End_Anita>
  <Cs_SimulationLabs_Sq10_TestB_End_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_End_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestB_End_Bellamy>
  <Cs_SimulationLabs_Sq10_TestB_End_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_End_Simmons"/>
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
  </Cs_SimulationLabs_Sq10_TestB_End_Simmons>
  <Cs_SimulationLabs_Sq10_TestB_Start_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_Start_Anita"/>
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
  </Cs_SimulationLabs_Sq10_TestB_Start_Anita>
  <Cs_SimulationLabs_Sq10_TestB_Start_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_Start_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestB_Start_Bellamy>
  <Cs_SimulationLabs_Sq10_TestB_Start_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_Start_Simmons"/>
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
  </Cs_SimulationLabs_Sq10_TestB_Start_Simmons>
  <Cs_SimulationLabs_Sq10_TestB_Wait_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_Wait_Anita" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestB_Wait_Anita>
  <Cs_SimulationLabs_Sq10_TestB_Wait_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_Wait_Bellamy" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestB_Wait_Bellamy>
  <Cs_SimulationLabs_Sq10_TestB_Wait_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_Wait_Simmons" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestB_Wait_Simmons>
  <Cs_SimulationLabs_Sq10_TestA_Start_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestA_Start_Bellamy"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq10_TestA_Start_Face_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestA_Start_Bellamy>
  <Cs_SimulationLabs_Sq10_TestA_Start_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestA_Start_Anita"/>
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
  </Cs_SimulationLabs_Sq10_TestA_Start_Anita>
  <Cs_SimulationLabs_Sq10_TestA_Start_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Simulationlabs_Sq10_TestA_Start_Simmons"/>
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
  </Cs_SimulationLabs_Sq10_TestA_Start_Simmons>
  <Cs_SimulationLabs_Sq10_TestA_Wait_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestA_Wait_Bellamy" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestA_Wait_Bellamy>
  <Cs_SimulationLabs_Sq10_TestA_Wait_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestA_Wait_Anita" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestA_Wait_Anita>
  <Cs_SimulationLabs_Sq10_TestA_Wait_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestA_Wait_Simmons" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestA_Wait_Simmons>
  <Cs_SimulationLabs_Sq10_TestA_End_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestA_End_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestA_End_Bellamy>
  <Cs_SimulationLabs_Sq10_TestA_End_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestA_End_Anita"/>
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
  </Cs_SimulationLabs_Sq10_TestA_End_Anita>
  <Cs_SimulationLabs_Sq10_TestA_End_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestA_End_Simmons"/>
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
  </Cs_SimulationLabs_Sq10_TestA_End_Simmons>
  <Cs_SimulationLabs_Sq08_Greeting_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq08_Greeting_Alex"/>
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
  </Cs_SimulationLabs_Sq08_Greeting_Alex>
  <Cs_SimulationLabs_Sq08_TestIntro_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq08_TestIntro_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq08_TestIntro_Pt2_Face_Alex"/>
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
  </Cs_SimulationLabs_Sq08_TestIntro_Alex>
  <Cs_SimulationLabs_Sq08_Greeting_Idle_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="2.9802322e-008"/>
     <Animation name="SimulationLabs_Sq08_Greeting_Idle_Alex" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq08_Greeting_Idle_Alex>
  <Cs_SimulationLabs_Sq08_Idle_SecurityGuard>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq08_Idle_SecurityGuard" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq08_Idle_SecurityGuard>
  <Cs_SimulationLabs_Sq08_TestIntro_EndIdle_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq08_TestIntro_EndIdle_Alex" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq08_TestIntro_EndIdle_Alex>
  <Cs_SimulationLabs_Sq08_TestIntro_SecurityGuard>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq08_TestIntro_SecurityGuard"/>
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
  </Cs_SimulationLabs_Sq08_TestIntro_SecurityGuard>
  <Cs_SimulationLabs_Sq08_WaitIdle_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq08_WaitIdle_Alex" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq08_WaitIdle_Alex>
  <Cs_SimulationLabs_Sq10_TestC_Start_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="simulationlabs_sq10_testc_start_bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestC_Start_Bellamy>
  <Cs_SimulationLabs_Sq10_TestC_Start_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_Start_Anita"/>
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
  </Cs_SimulationLabs_Sq10_TestC_Start_Anita>
  <Cs_SimulationLabs_Sq10_TestC_Start_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_Start_Simmons"/>
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
  </Cs_SimulationLabs_Sq10_TestC_Start_Simmons>
  <Cs_SimulationLabs_Sq10_TestC_Wait_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_Wait_Bellamy" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestC_Wait_Bellamy>
  <Cs_SimulationLabs_Sq10_TestC_Wait_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_Wait_Anita" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestC_Wait_Anita>
  <Cs_SimulationLabs_Sq10_TestC_Wait_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_Wait_Simmons" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestC_Wait_Simmons>
  <Cs_SimulationLabs_Sq10_TestC_End_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_End_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestC_End_Bellamy>
  <Cs_SimulationLabs_Sq10_TestC_End_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_End_Anita"/>
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
  </Cs_SimulationLabs_Sq10_TestC_End_Anita>
  <Cs_SimulationLabs_Sq10_TestC_End_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_End_Simmons"/>
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
  </Cs_SimulationLabs_Sq10_TestC_End_Simmons>
  <Cs_Lobby_Sq02_LookingGlassVideo_Morgan>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq02_LookingGlassVideo_Morgan"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Lobby_Sq02_LookingGlassVideo_Face_Morgan"/>
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
  </Cs_Lobby_Sq02_LookingGlassVideo_Morgan>
  <Cs_SimulationLabs_Sq10_TestD_Part6_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="SimulationLabs_Sq10_TestD_Part6_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestD_Part6_Bellamy>
  <Cs_SimulationLabs_Sq10_TestD_Part7_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="SimulationLabs_Sq10_TestD_Part7_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestD_Part7_Bellamy>
  <Cs_SimulationLabs_Sq08_AlexHoldPlayer_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq08_AlexHoldsPlayer_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq08_AlexHoldsPlayer_Face_Alex"/>
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
  </Cs_SimulationLabs_Sq08_AlexHoldPlayer_Alex>
  <Cs_Lobby_Sq02_CameraTurnOn_Morgan>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq02_CameraTurnOn_Morgan"/>
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
  </Cs_Lobby_Sq02_CameraTurnOn_Morgan>
  <Cs_Simulationlabs_Sq10_TestA_StartIdle_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Simulationlabs_Sq10_TestA_Start_Idle_Anita" flags="Loop"/>
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
  </Cs_Simulationlabs_Sq10_TestA_StartIdle_Anita>
  <Cs_SimulationLabs_Sq10_TestA_StartIdle_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Simulationlabs_Sq10_TestA_Start_Idle_Bellamy" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestA_StartIdle_Bellamy>
  <Cs_SimulationLabs_Sq10_TestA_StartIdle_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Simulationlabs_Sq10_TestA_Start_Idle_Simmons" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq10_TestA_StartIdle_Simmons>
  <Cs_Protype_Sq02_GoogunReveal_Thaddeus>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Prototype_Sq02_GoogunReveal_Thaddeus"/>
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
  </Cs_Protype_Sq02_GoogunReveal_Thaddeus>
  <Cs_SimulationLabs_Sq10_TestB_StartIdle_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="SimulationLabs_Sq10_TestB_StartIdle_Anita" flags="Loop"/>
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
   </Fragment>
  </Cs_SimulationLabs_Sq10_TestB_StartIdle_Anita>
  <Cs_SimulationLabs_Sq10_TestB_StartIdle_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="SimulationLabs_Sq10_TestB_StartIdle_Bellamy" flags="Loop"/>
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
   </Fragment>
  </Cs_SimulationLabs_Sq10_TestB_StartIdle_Bellamy>
  <Cs_SimulationLabs_Sq10_TestB_StartIdle_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="SimulationLabs_Sq10_TestB_StartIdle_Simmons" flags="Loop"/>
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
   </Fragment>
  </Cs_SimulationLabs_Sq10_TestB_StartIdle_Simmons>
  <Cs_SimulationLabs_Sq10_TestC_StartIdle_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="SimulationLabs_Sq10_TestC_StartIdle_Anita" flags="Loop"/>
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
   </Fragment>
  </Cs_SimulationLabs_Sq10_TestC_StartIdle_Anita>
  <Cs_SimulationLabs_Sq10_TestC_StartIdle_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="SimulationLabs_Sq10_TestC_StartIdle_Bellamy" flags="Loop"/>
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
   </Fragment>
  </Cs_SimulationLabs_Sq10_TestC_StartIdle_Bellamy>
  <Cs_SimulationLabs_Sq10_TestC_StartIdle_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="SimulationLabs_Sq10_TestC_StartIdle_Simmons" flags="Loop"/>
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
   </Fragment>
  </Cs_SimulationLabs_Sq10_TestC_StartIdle_Simmons>
  <Cs_SimulationLabs_Sq10_Walk_LeftArmTranscribe_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_Walk_LeftArmTranscribe_Anita" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Cs_SimulationLabs_Sq10_Walk_LeftArmTranscribe_Anita>
  <Cs_SimulationLabs_Sq10_TestB_EndIdle_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_EndIdle_Anita"/>
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
  </Cs_SimulationLabs_Sq10_TestB_EndIdle_Anita>
  <Cs_SimulationLabs_Sq10_TestB_EndIdle_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_EndIdle_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestB_EndIdle_Bellamy>
  <Cs_SimulationLabs_Sq10_TestB_EndIdle_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_EndIdle_Simmons"/>
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
  </Cs_SimulationLabs_Sq10_TestB_EndIdle_Simmons>
  <Cs_SimulationLabs_Sq10_TestC_EndIdle_Anita>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq10_TestC_EndIdle_Anita"/>
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
  </Cs_SimulationLabs_Sq10_TestC_EndIdle_Anita>
  <Cs_SimulationLabs_Sq10_TestC_EndIdle_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="SimulationLabs_Sq10_TestC_EndIdle_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestC_EndIdle_Bellamy>
  <Cs_SimulationLabs_Sq10_TestC_EndIdle_Simmons>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_EndIdle_Simmons"/>
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
  </Cs_SimulationLabs_Sq10_TestC_EndIdle_Simmons>
  <Cs_Prototype_Sq03_CalvinoLookingGlass_Calvino>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Prototype_Sq03_CalvinoLookingGlass_Calvino"/>
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
  </Cs_Prototype_Sq03_CalvinoLookingGlass_Calvino>
  <Cs_Prototype_Sq03_CalvinoLookingGlass_Sato>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Prototype_Sq03_CalvinoLookingGlass_Sato"/>
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
  </Cs_Prototype_Sq03_CalvinoLookingGlass_Sato>
  <Cs_Prototype_Sq04_CalvinoSecret_Calvino>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="prototype_sq04_recording02_calvino"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Prototype_Sq04_Recording02_Face_Calvino"/>
    </AnimLayer>
   </Fragment>
  </Cs_Prototype_Sq04_CalvinoSecret_Calvino>
  <Cs_Prototype_Sq04_CalvinoSecret_Sato>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Prototype_Sq04_Recording02_Sato"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Prototype_Sq04_Recording02_Face_Sato"/>
    </AnimLayer>
   </Fragment>
  </Cs_Prototype_Sq04_CalvinoSecret_Sato>
  <Cs_Lobby_Sq02_CameraTurnOn_MorganFemale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq02_CameraTurnOn_MorganFemale"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="-8.0297587e+018"/>
       <Vertical value="-8.0297587e+018"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_Lobby_Sq02_CameraTurnOn_MorganFemale>
  <Cs_Lobby_Sq02_LookingGlassVideo_MorganFemale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq02_LookingGlassVideo_MorganFemale"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Lobby_Sq02_LookingGlassVideo_Face_MorganFemale"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="-8.0297587e+018"/>
       <Vertical value="-8.0297587e+018"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_Lobby_Sq02_LookingGlassVideo_MorganFemale>
  <Land_Bump>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_land_bump_pistol"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_land_bump_empty"/>
    </AnimLayer>
   </Fragment>
  </Land_Bump>
  <Lifted_BumpCeiling>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_lifted_bumpceiling_pistol"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Lifted_BumpCeiling_Empty"/>
    </AnimLayer>
   </Fragment>
  </Lifted_BumpCeiling>
  <Fall>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_fall_pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="28.285172"/>
     <Animation name="Combat_Fall_Empty" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Fall>
  <Lifted>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_lifted_pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Lifted_Empty" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Lifted>
  <Land_Stumble>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_land_stumble_pistol"/>
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
     <Animation name="Combat_Land_Stumble_Empty"/>
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
  </Land_Stumble>
  <WanderIdle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="30" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Painful_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="30" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Painful_B"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="30" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Painful_C"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="30" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Painful_D"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Painful_E"/>
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
  </WanderIdle>
  <LookPoseEyes>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Charge">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="LookPoses_Relaxed_Eyes_Empty" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </LookPoseEyes>
  <BlendRagdoll>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Ragdoll_Recovery_Back"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Ragdoll_Recovery_Front"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="blendIn+standup+ragdoll">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="1"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="30" StartTime="0" Duration="2.9847279"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Charge" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Ragdoll_Recovery_Back"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Charge" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Ragdoll_Recovery_Front"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_ragdoll_recovery_back"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Ragdoll_Recovery_Front"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Ragdoll_Recovery_Back"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Ragdoll_Recovery_Front"/>
    </AnimLayer>
   </Fragment>
  </BlendRagdoll>
  <Cowering>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="fear_cower_a_empty" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="fear_cower_b_empty" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="fear_cower_c_empty" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="fear_cower_d_empty" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="fear_cower_e_empty" flags="Loop"/>
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
  </Cowering>
  <Stunned>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="Corrupted_Stunned_In"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Stunned_Loop" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0099999998"/>
     <Animation name="Corrupted_Stunned_Out_Ragdoll"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_stunned_in_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_stunned_pistol" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="combat_stunned_out_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Stunned_Empty" flags="Loop"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="Combat_Stunned_Out_Empty"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Stunned_In_Empty"/>
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
   </Fragment>
  </Stunned>
  <Detect_Player>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_detect_player_a_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_detect_player_b_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_detect_player_c_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_detect_player_d_pistol"/>
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
  </Detect_Player>
  <Wpn_Fire>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0099999998"/>
     <Animation name="Combat_Aiming_Fire_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_NPC_Weapon_Fire"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="ShootBullet"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="GameNoise">
      <ProceduralParams>
       <type value="Danger"/>
       <loudness value="30m"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Fire>
  <ForceResist>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Front+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_front_in"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Back+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_back_in"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Left+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_left_in"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Right+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_right_in"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Front+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_front" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Back+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_back" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Left+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_left" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Right+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_right" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Front+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_front_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Back+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_back_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Left+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_left_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Right+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_right_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Back+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Back_In_Pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Front+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Front_In_Pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Left+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Left_In_Pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Right+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Right_In_Pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Front+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_pistol" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Back+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_back_pistol" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Left+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_left_pistol" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Right+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_right_pistol" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Front+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_out_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Back+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_back_out_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Left+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_left_out_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Right+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_right_out_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Front_In_Empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_back_in_empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_left_in_empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_right_in_empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_empty" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_back_empty" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_left_empty" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_right_empty" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_out_empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_back_out_empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_left_out_empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_right_out_empty"/>
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
  </ForceResist>
  <ForceResistScrunch>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Front+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_front_in"/>
     <Blend ExitTime="1.05" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_ForceResist_Death_Front"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Back+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_back_in"/>
     <Blend ExitTime="1.075" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_ForceResist_Death_Back"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Left+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_left_in"/>
     <Blend ExitTime="0.85000002" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_ForceResist_Death_Left"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Right+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_right_in"/>
     <Blend ExitTime="1.225" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_ForceResist_Death_Right"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Front+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Back+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Left+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Right+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Front+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathOut"/>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_front_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Back+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathOut"/>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_back_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Left+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathOut"/>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_left_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Right+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathOut"/>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_forceresist_right_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Back+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Back_In_Pistol"/>
     <Blend ExitTime="1.225" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Death_Back_Pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Front+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Front_In_Pistol"/>
     <Blend ExitTime="1.075" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Death_Front_Pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Left+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Left_In_Pistol"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Death_Left_Pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Right+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Right_In_Pistol"/>
     <Blend ExitTime="1.1" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Death_Right_Pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Front+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Back+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Left+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Right+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Front+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathOut"/>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_out_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Back+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathOut"/>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_back_out_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Left+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathOut"/>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_left_out_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol" FragTags="Right+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathOut"/>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_right_out_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Front_In_Empty"/>
     <Blend ExitTime="1.05" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Death_Front_Empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_back_in_empty"/>
     <Blend ExitTime="1.225" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Death_Back_Empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_left_in_empty"/>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Death_Left_Empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_right_in_empty"/>
     <Blend ExitTime="1.225" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Death_Right_Empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.20000005"/>
     <Animation name="Combat_ForceResist_DeathOut"/>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_out_empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathOut"/>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_back_out_empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathOut"/>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_left_out_empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathOut"/>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_right_out_empty"/>
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
  </ForceResistScrunch>
  <Blinded>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Blinded_In"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Blinded_Loop_A" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Blinded_Loop_B" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Blinded_Out"/>
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
  </Blinded>
  <Hypnotized>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Hypnotized_In"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_Hypnotized_Loop" flags="Loop"/>
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
  </Hypnotized>
  <Wpn_Reload>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_aiming_reload_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.3" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Reloaded"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_reload_pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.1" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Reloaded"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Reload>
  <GrabPlayer>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_GrabPlayer"/>
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
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_NPC_Human_Foley_Worksuit_Attack"/>
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
  </GrabPlayer>
  <Explode>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="corrupted_death_explode"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.25"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.47499999" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Explode"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Charge">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_ChargeExplode"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.075000003" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Explode"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_NPC_HumanPossessed_HeadExplode"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.25"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Explode>
  <Cs_SimulationLabs_Sq14_ContaminationMimic_GenMale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq14_MimicDuplication_GenMale"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="1.9" StartTime="0" Duration="0"/>
     <Animation name="Husk_A"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="1.7" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq14_MimicDuplication_Face_GenMale"/>
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
  </Cs_SimulationLabs_Sq14_ContaminationMimic_GenMale>
  <Cs_CargoBay_Sq02_HumanIdentifiesCatwalk_AustinCool>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq02_HumanIdentifiesCatwalk_AustinCool" flags="Loop"/>
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
  </Cs_CargoBay_Sq02_HumanIdentifiesCatwalk_AustinCool>
  <Cs_CargoBay_Sq02_HumanIdentifiesCatwalk_In_AustinCool>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq02_HumanIdentifiesCatwalk_In_AustinCool"/>
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
  </Cs_CargoBay_Sq02_HumanIdentifiesCatwalk_In_AustinCool>
  <Cs_CargoBay_Sq02_HumanIdentifiesCatwalk_Out_AustinCool>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq02_HumanIdentifiesCatwalk_Out_AustinCool"/>
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
  </Cs_CargoBay_Sq02_HumanIdentifiesCatwalk_Out_AustinCool>
  <Cs_CargoBay_Sq03_WeaverTurnsCorpsesintoPhantoms_AlfredRose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq03_WeaverTurnsCorpsesIntoPhantoms_AlfredRose"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="CargoBay_Sq03_WeaverTurnsCorpsesIntoPhantoms_Face_AlfredRose"/>
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
  </Cs_CargoBay_Sq03_WeaverTurnsCorpsesintoPhantoms_AlfredRose>
  <Cs_CargoBay_Sq03_WeaverTurnsCorpsesIntoPhantoms_SamHertz>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq03_WeaverTurnsCorpsesIntoPhantoms_SamHertz"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="CargoBay_Sq03_WeaverTurnsCorpsesIntoPhantoms_Face_SamHertz"/>
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
  </Cs_CargoBay_Sq03_WeaverTurnsCorpsesIntoPhantoms_SamHertz>
  <Cs_CargoBay_Sq04_EngineerSitsOnFloor_EkaterinaMulsaev>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq04_EngineerSitsOnFloor_Loop1_EkaterinaMulsaev" flags="Loop"/>
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
  </Cs_CargoBay_Sq04_EngineerSitsOnFloor_EkaterinaMulsaev>
  <Cs_CargoBay_Sq07D_SecurityGuard_StandsGuard_TamikoHayashi>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq07_SecurityGuard_StandsGuard_TamikoHayashi"/>
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
  </Cs_CargoBay_Sq07D_SecurityGuard_StandsGuard_TamikoHayashi>
  <Cs_CargoBay_Sq07C_SecurityGuard_StandsGuard_DarcyMaddox>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq07_SecurityGuard_StandsGuard_DarcyMaddox" flags="Loop"/>
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
  </Cs_CargoBay_Sq07C_SecurityGuard_StandsGuard_DarcyMaddox>
  <Cs_CargoBay_Sq07B_SecurityGuard_StandsGuard_KevinHague>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq07_SecurityGuard_StandsGuard_KevinHague" flags="Loop"/>
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
  </Cs_CargoBay_Sq07B_SecurityGuard_StandsGuard_KevinHague>
  <Cs_CargoBay_Sq07A_SecurityGuard_StandsGuard_AustinCool>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq07_SecurityGuard_StandsGuard_AustinCool" flags="Loop"/>
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
  </Cs_CargoBay_Sq07A_SecurityGuard_StandsGuard_AustinCool>
  <Cs_CargoBay_Sq01_HumanOnCatwalkSignals_AustinCool>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq01_HumanOnCatwalkSignals_AustinCool"/>
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
  </Cs_CargoBay_Sq01_HumanOnCatwalkSignals_AustinCool>
  <Cs_CargoBay_Sq01_HumanonCatwalkSignals_Start_AustinCool>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq01_HumanOnCatwalkSignals_Start_AustinCool" flags="Loop"/>
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
  </Cs_CargoBay_Sq01_HumanonCatwalkSignals_Start_AustinCool>
  <Cs_Arboretum_Sq01_TelepathIntro_In_GenMale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq01_TelepathIntro_In_GenMale"/>
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
  </Cs_Arboretum_Sq01_TelepathIntro_In_GenMale>
  <Cs_Arboretum_Sq01_TelepathIntro_Loop_GenMale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq01_TelepathIntro_Loop_GenMale" flags="Loop"/>
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
  </Cs_Arboretum_Sq01_TelepathIntro_Loop_GenMale>
  <Cs_Arboretum_Sq01_GetCorrupted_GenMale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq01_GetCorrupted_GenMale"/>
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
  </Cs_Arboretum_Sq01_GetCorrupted_GenMale>
  <GetCorrupted>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_GetCorrupted"/>
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
  </GetCorrupted>
  <Cs_SimulationLabs_Sq16_DahlReprogram_Essential_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_Essential_Igwe"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_Essential_Igwe>
  <Cs_SimulationLabs_Sq16_DahlReprogram_EssentialIdle_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_EssentialIdle_Igwe" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_EssentialIdle_Igwe>
  <Cs_SimulationLabs_Sq16_DahlReprogram_Greeting_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_Greeting_Igwe"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_Greeting_Face_Igwe"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_Greeting_Igwe>
  <Cs_SimulationLabs_Sq16_DahlReprogram_GreetingIdle_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_GreetingIdle_Igwe" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_GreetingIdle_Igwe>
  <Cs_SimulationLabs_Sq16_DahlReprogram_Idle_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_Idle_Igwe" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_Idle_Igwe>
  <Cs_SimulationLabs_Sq16_DahlReprogram_SeatedIdle_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_SeatedIdle_Dahl" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_SeatedIdle_Dahl>
  <Cs_SimulationLabs_Sq16_DahlReprogram_CommDahl_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_CommDahl_Igwe"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_CommDahl_Igwe>
  <Cs_SimulationLabs_Sq16_DahlReprogram_CommDahlIdle_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_CommDahlIdle_Igwe" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_CommDahlIdle_Igwe>
  <Cs_SimulationLabs_Sq16_DahlReprogram_LetsGo_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_LetsGo_Dahl"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_LetsGo_Dahl>
  <Cs_SimulationLabs_Sq16_DahlReprogram_Hnnnh_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_Hnnnh_Dahl"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_Hnnnh_Dahl>
  <Cs_SimulationLabs_Sq16_DahlReprogram_HeadInjury_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_HeadInjury_Igwe"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_HeadInjury_Igwe>
  <Cs_SimulationLabs_Sq16_DahlReprogram_WakeUp_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_WakeUp_Dahl"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_WakeUp_Face_Dahl"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_WakeUp_Dahl>
  <Cs_SimulationLabs_Sq16_DahlReprogram_FidgetA_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_FidgetA_Dahl"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_FidgetA_Dahl>
  <Cs_SimulationLabs_Sq16_DahlReprogram_SeatedIdleB_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_SeatedIdleB_Dahl" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_SeatedIdleB_Dahl>
  <Fidget_A>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_FidgetA_Empty"/>
    </AnimLayer>
   </Fragment>
  </Fidget_A>
  <Fidget_No>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_No_Empty"/>
    </AnimLayer>
   </Fragment>
  </Fidget_No>
  <Fidget_ThatWay_Left>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_ThatWay_Left_Empty"/>
    </AnimLayer>
   </Fragment>
  </Fidget_ThatWay_Left>
  <CODE_MT_walkJukeTurnFwdLft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Left90_Pistol" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_WalkJuke_Left90_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_WalkJuke_Left90_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Aiming_WalkJuke_Left90_Pistol"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkJukeTurnFwdLft>
  <CODE_MT_walkJukeTurnFwdLft180>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Left180_Pistol" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_WalkJuke_Left180_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_WalkJuke_Left180_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Aiming_WalkJuke_Left180_Pistol"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkJukeTurnFwdLft180>
  <CODE_MT_walkJukeTurnFwdRgt>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Right90_Pistol" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_WalkJuke_Right90_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_WalkJuke_Right90_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Aiming_WalkJuke_Right90_Pistol"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkJukeTurnFwdRgt>
  <CODE_MT_runJukeTurnFwdLft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_RunJuke_Left90_Pistol" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_RunJuke_Left90_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_RunJuke_Left90_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Aiming_WalkJuke_Left90_Pistol"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_runJukeTurnFwdLft>
  <CODE_MT_runJukeTurnFwdLft180>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_RunJuke_Left180_Pistol" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_RunJuke_Left180_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_RunJuke_Left180_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Aiming_WalkJuke_Left180_Pistol"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_runJukeTurnFwdLft180>
  <CODE_MT_runJukeTurnFwdRgt>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_RunJuke_Right90_Pistol" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_RunJuke_Right90_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_RunJuke_Right90_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Aiming_WalkJuke_Right90_Pistol"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_runJukeTurnFwdRgt>
  <PushObstacle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_BreakGloo_B_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.12499997" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="1.275" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_BreakGloo_A_Empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.12812501" StartTime="0" Duration="0.00070309639"/>
     <Procedural type=""/>
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
  </PushObstacle>
  <Cs_Arboretum_Sq03_MeetAlex_Speech_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="Arboretum_Sq03_MeetAlex_AlexMainSpeech_Alex"/>
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
  </Cs_Arboretum_Sq03_MeetAlex_Speech_Alex>
  <Cs_Arboretum_Sq03_MeetAlex_ApexArrives_ArmKey_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq03_MeetAlex_ApexArrives_ArmingKey_Alex" flags="FullRootPriority"/>
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
  </Cs_Arboretum_Sq03_MeetAlex_ApexArrives_ArmKey_Alex>
  <Cs_Arboretum_Sq03_MeetAlex_HandOutLoop_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="Arboretum_Sq03_MeetAlex_HandOutloop_Alex" flags="Loop"/>
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
  </Cs_Arboretum_Sq03_MeetAlex_HandOutLoop_Alex>
  <Cs_Arboretum_Sq03_MeetAlex_ApexArrives_NoTake_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq03_MeetAlex_ApexArrives_NoTakePlans_Alex"/>
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
  </Cs_Arboretum_Sq03_MeetAlex_ApexArrives_NoTake_Alex>
  <Cs_Arboretum_Sq04_DahlHackStart_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_DahlHackStart_Dahl"/>
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
  </Cs_Arboretum_Sq04_DahlHackStart_Dahl>
  <Cs_Arboretum_Sq04_DahlHackingLoop_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_DahlHack_Dahl" flags="Loop"/>
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
  </Cs_Arboretum_Sq04_DahlHackingLoop_Dahl>
  <Cs_Arboretum_Sq04_DahlPostHack_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_DahlPostHack_Dahl"/>
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
  </Cs_Arboretum_Sq04_DahlPostHack_Dahl>
  <Cs_Arboretum_Sq04_DahlPostHack_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_DahlPostHack_Alex"/>
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
  </Cs_Arboretum_Sq04_DahlPostHack_Alex>
  <Cs_Arboretum_Sq04_DahlWaitForAlexLoop_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_DahlWaitsForAlex_Dahl" flags="Loop"/>
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
  </Cs_Arboretum_Sq04_DahlWaitForAlexLoop_Dahl>
  <Cs_Arboretum_Sq04_DahlGestureAlex_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_DahlGestureAlex_Dahl"/>
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
  </Cs_Arboretum_Sq04_DahlGestureAlex_Dahl>
  <Cs_Arboretum_DahlGesturePostLoop_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_DahlGesturePostLoop_Dahl" flags="Loop"/>
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
  </Cs_Arboretum_DahlGesturePostLoop_Dahl>
  <Cs_Arboretum_Sq04_DahlExecutesAlex_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_DahlExecutesAlex_Dahl"/>
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
  </Cs_Arboretum_Sq04_DahlExecutesAlex_Dahl>
  <Cs_Arboretum_Sq04_DahlExecutesAlex_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_DahlExecutesAlex_Alex"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="21.5" StartTime="0" Duration="0"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_Arboretum_Sq04_DahlExecutesAlex_Alex>
  <Cs_Arboretum_Sq04_DahlHackStart_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_DahlHackStart_Alex"/>
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
  </Cs_Arboretum_Sq04_DahlHackStart_Alex>
  <Cs_Arboretum_Sq04_DahlHackingLoop_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_DahlHack_Alex" flags="Loop"/>
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
  </Cs_Arboretum_Sq04_DahlHackingLoop_Alex>
  <Cs_Arboretum_Sq04_DahlGesturePostLoop_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_DahlGesturePostLoop_Dahl" flags="Loop"/>
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
  </Cs_Arboretum_Sq04_DahlGesturePostLoop_Dahl>
  <Cs_Arboretum_Sq04_AlexHandsUp_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq04_AlexHandsUp_Alex" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Cs_Arboretum_Sq04_AlexHandsUp_Alex>
  <Cs_Prototype_Sq14_ContaminationMimic_GenMale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Prototype_Sq14_MimicDuplication_GenMale"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="1.9" StartTime="0" Duration="0"/>
     <Animation name="Husk_A"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="1.7" StartTime="0" Duration="0"/>
     <Animation name="Prototype_Sq14_MimicDuplication_Face_GenMale"/>
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
  </Cs_Prototype_Sq14_ContaminationMimic_GenMale>
  <Cs_CargoBay_Sq05_SarahAndIgweInteract_Sarah>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq05_SarahAndIgweInteract_SarahElazar"/>
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
  </Cs_CargoBay_Sq05_SarahAndIgweInteract_Sarah>
  <Cs_CargoBay_Sq05_SarahAndIgweInteract_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq05_SarahAndIgweInteract_Igwe"/>
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
  </Cs_CargoBay_Sq05_SarahAndIgweInteract_Igwe>
  <Cs_CargoBay_Sq05_IgweAfterInteract_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq05_IgweAfterInteract_Igwe"/>
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
  </Cs_CargoBay_Sq05_IgweAfterInteract_Igwe>
  <Cs_CargoBay_Sq06_SecurityGuardInspectsCorpse_GenMale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq06_SecurityGuardInspectsCorpse_GenMale"/>
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
  </Cs_CargoBay_Sq06_SecurityGuardInspectsCorpse_GenMale>
  <Cs_CargoBay_Sq03_WeaverTurnsCorpsesIntoPhantoms_Start_SamHertz>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq03_WeaverTurnsCorpsesIntoPhantoms_Start_SamHertz" flags="Loop"/>
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
  </Cs_CargoBay_Sq03_WeaverTurnsCorpsesIntoPhantoms_Start_SamHertz>
  <Cs_CargoBay_Sq03_WeaverTurnsCorpsesIntoPhantoms_Start_Alfred>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq03_WeaverTurnsCorpsesIntoPhantoms_Start_AlfredRose" flags="Loop"/>
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
  </Cs_CargoBay_Sq03_WeaverTurnsCorpsesIntoPhantoms_Start_Alfred>
  <Cs_CargoBay_Sq03_SecurityGuard_StandsGuard_SamHertz>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq03_SecurityGuard_StandsGuard_SamHertz" flags="Loop"/>
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
  </Cs_CargoBay_Sq03_SecurityGuard_StandsGuard_SamHertz>
  <Cs_Lobby_Sq02_LookingGlassVideo_Pt2_Morgan>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq02_LookingGlassVideo_Pt2_Morgan"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Lobby_Sq02_LookingGlassVideo_Pt2_Face_Morgan"/>
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
  </Cs_Lobby_Sq02_LookingGlassVideo_Pt2_Morgan>
  <CODE_MT_runJukeTurnFwdRt180>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_RunJuke_Right180_Pistol" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_RunJuke_Right180_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_RunJuke_Right180_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Aiming_WalkJuke_Right180_Pistol"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_runJukeTurnFwdRt180>
  <CODE_MT_walkJukeTurnFwdRt180>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Right180_Pistol" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_WalkJuke_Right180_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_WalkJuke_Right180_Empty" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="GunUp+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Aiming_WalkJuke_Right180_Pistol"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkJukeTurnFwdRt180>
  <Distractor_Desk>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Relaxed_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Relaxed_B"/>
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
  </Distractor_Desk>
  <Cs_CrewFacilities_Sq01_CookIntro_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq01_CookIntro_LukaGolubkin"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="CrewFacilities_Sq01_CookIntro_Face_LukaGolubkin"/>
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
  </Cs_CrewFacilities_Sq01_CookIntro_LukaGolubkin>
  <Cs_CrewFacilities_Sq02_CookRevisit_A_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq02_CookRevisit_A_LukaGolubkin"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq02_CookRevisit_A_Face_LukaGolubkin"/>
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
  </Cs_CrewFacilities_Sq02_CookRevisit_A_LukaGolubkin>
  <Cs_CrewFacilities_Sq03_CookRevisit_B_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq03_CookRevisit_B_LukaGolubkin"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="CrewFacilities_Sq03_CookRevisit_B_Face_LukaGolubkin"/>
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
  </Cs_CrewFacilities_Sq03_CookRevisit_B_LukaGolubkin>
  <Cs_CrewFacilities_Sq03_CookRevisit_B2_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq03_CookRevisit_B2_LukaGolubkin"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="CrewFacilities_Sq03_CookRevisit_B2_Face_LukaGolubkin"/>
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
  </Cs_CrewFacilities_Sq03_CookRevisit_B2_LukaGolubkin>
  <Cs_CrewFacilities_Sq03_CookRevisit_B3_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq03_CookRevisit_B3_LukaGolubkin"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="CrewFacilities_Sq03_CookRevisit_B3_Face_LukaGolubkin"/>
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
  </Cs_CrewFacilities_Sq03_CookRevisit_B3_LukaGolubkin>
  <Cs_CrewFacilities_Sq02_CookRevisit_A3_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq02_CookRevisit_A3_LukaGolubkin"/>
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
  </Cs_CrewFacilities_Sq02_CookRevisit_A3_LukaGolubkin>
  <Cs_CrewFacilities_Sq02_CookRevisit_A2_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq02_CookRevisit_A2_LukaGolubkin"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq02_CookRevisit_A2_Face_LukaGolubkin"/>
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
  </Cs_CrewFacilities_Sq02_CookRevisit_A2_LukaGolubkin>
  <Cs_CrewFacilities_Sq04_CookFinal_A_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq04_CookFinal_A_LukaGolubkin"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
     <Blend ExitTime="0.050000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_CrewFacilities_Sq04_CookFinal_A_LukaGolubkin>
  <Cs_CrewFacilities_Sq04_CookFinal_A2_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq04_CookFinal_A2_LukaGolubkin" flags="Loop"/>
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
  </Cs_CrewFacilities_Sq04_CookFinal_A2_LukaGolubkin>
  <Cs_Lobby_Sq10_AudioLogListen_MikhailaIlyushin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq10_AudioLogListen_MikhailaIlyushin"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Lobby_Sq10_AudioLogListen_Face_MikhailaIlyushin"/>
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
  </Cs_Lobby_Sq10_AudioLogListen_MikhailaIlyushin>
  <Cs_Lobby_Sq10A_AudioLogReact_MikhailaIlyushin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq10A_AudioLogReact_MikhailaIlyushin"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Lobby_Sq10A_AudioLogReact_Face_MikhailaIlyushin"/>
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
  </Cs_Lobby_Sq10A_AudioLogReact_MikhailaIlyushin>
  <Cs_Lobby_Sq10B_AudioLogDelete_MikhailaIlyushin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq10B_AudioLogDelete_MikhailaIlyushin"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Lobby_Sq10B_AudioLogDelete_Face_MikhailaIlyushin"/>
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
  </Cs_Lobby_Sq10B_AudioLogDelete_MikhailaIlyushin>
  <Cs_Bridge_Sq01A_AlexJanuaryArgueMale_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq01A_AlexJanuaryArgueMale_Alex"/>
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
  </Cs_Bridge_Sq01A_AlexJanuaryArgueMale_Alex>
  <Cs_Bridge_Sq01B_AlexJanuaryArgueFemale_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq01A_AlexJanuaryArgueMale_Alex"/>
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
  </Cs_Bridge_Sq01B_AlexJanuaryArgueFemale_Alex>
  <Cs_Bridge_Sq06A_AlexJanuaryArgueMale_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_AlexShootsJanuary_Alex"/>
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
  </Cs_Bridge_Sq06A_AlexJanuaryArgueMale_Alex>
  <Cs_Bridge_Sq06B_AlexJanuaryArgueFemale_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_AlexShootsJanuary_Alex"/>
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
  </Cs_Bridge_Sq06B_AlexJanuaryArgueFemale_Alex>
  <Cs_Bridge_Sq14_LukaEscapePod_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq14_LukaEscapePod_LukaGolubkin"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="2"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_Bridge_Sq14_LukaEscapePod_LukaGolubkin>
  <Cs_Bridge_Sq14A_LukaEscapePod_WaitIdle_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq14_LukaEscapePod_WaitIdle_LukaGolubkin" flags="Loop"/>
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
  </Cs_Bridge_Sq14A_LukaEscapePod_WaitIdle_LukaGolubkin>
  <Cs_Bridge_Sq15_LukaDetonatesExplosives_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq15_LukaDetonatesExplosives_LukaGolubkin"/>
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
  </Cs_Bridge_Sq15_LukaDetonatesExplosives_LukaGolubkin>
  <Cs_Bridge_Sq10A_AlexReadyDestruct_StartIdleAlex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq10A_AlexReadyDistruct_StartIdle_Alex" flags="Loop"/>
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
  </Cs_Bridge_Sq10A_AlexReadyDestruct_StartIdleAlex>
  <Cs_Bridge_AlexShootsJanuary_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_AlexShootsJanuary_Alex"/>
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
  </Cs_Bridge_AlexShootsJanuary_Alex>
  <Cs_Bridge_AlexPullsGunGetsZapped_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_AlexPullsGunGetsZapped_Alex"/>
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
  </Cs_Bridge_AlexPullsGunGetsZapped_Alex>
  <Cs_Bridge_AlexReactsToJanuaryDeath_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_AlexReactsToJanuaryDeath_Alex"/>
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
  </Cs_Bridge_AlexReactsToJanuaryDeath_Alex>
  <Cs_Bridge_PistolGripIdleAdditive_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_AlexRHandPistolGrip_Alex" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Cs_Bridge_PistolGripIdleAdditive_Alex>
  <BreakGloo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_BreakGloo_A_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.33750001" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.090624988" StartTime="0" Duration="0.00070309639"/>
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
     <Blend ExitTime="1.25" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_BreakGloo_A_Empty"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.12812501" StartTime="0" Duration="0.00070309639"/>
     <Procedural type=""/>
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
  </BreakGloo>
  <BreakOutOfGloo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_front_a_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_front_a_empty"/>
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
  <Cs_Lobby_Sq10C_AudioLogReact_Alternate_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq10C_AudioLogReact_alternate_Igwe"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Lobby_Sq10C_AudioLogReact_alternate_Face_Igwe"/>
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
  </Cs_Lobby_Sq10C_AudioLogReact_Alternate_Igwe>
  <Cs_Lobby_Sq10C_AudioLogReact_Alternate_MikhailaIlyushin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq10C_AudioLogReact_Alternate_MikhailaIlyushin"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Lobby_Sq10C_AudioLogReact_Alternate_Face_MikhailaIlyushin"/>
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
  </Cs_Lobby_Sq10C_AudioLogReact_Alternate_MikhailaIlyushin>
  <Cs_Bridge_Sq14_LukaEscapePod_WaitIdle_Start_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq14_LukaEscapePod_WaitIdle_Start_LukaGolubkin" flags="Loop"/>
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
  </Cs_Bridge_Sq14_LukaEscapePod_WaitIdle_Start_LukaGolubkin>
  <MindJack_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MindJack_In_Pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_MindJack_In_Empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_MindJack_In_Empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_MindJack_In_Empty"/>
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
  <Cs_CrewFacilities_Sq05_DanielleInSpace_Intro_DanielleSho>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="CrewFacilities_Sq05_DanielleInSpace_Intro_DanielleSho"/>
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
  </Cs_CrewFacilities_Sq05_DanielleInSpace_Intro_DanielleSho>
  <Cs_CrewFacilities_Sq05_DanielleInSpace_WaitLoop_DanielleSho>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq05_DanielleInSpace_WaitLoop_DanielleSho" flags="Loop"/>
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
  </Cs_CrewFacilities_Sq05_DanielleInSpace_WaitLoop_DanielleSho>
  <Cs_CrewFacilities_Sq05A_DanielleInSpace_CookAliveA_DanielleSho>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq05A_DanielleInSpace_CookAliveNeedSample_DanielleSho"/>
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
  </Cs_CrewFacilities_Sq05A_DanielleInSpace_CookAliveA_DanielleSho>
  <Cs_CrewFacilities_Sq05B_DanielleInSpace_CookDeadA_DanielleSho>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq05B_DanielleInSpace_CookDeadNeedSample_DanielleSho"/>
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
  </Cs_CrewFacilities_Sq05B_DanielleInSpace_CookDeadA_DanielleSho>
  <Cs_CrewFacilities_Sq05C_DanielleInSpace_CookAliveB_DanielleSho>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq05C_DanielleInSpace_CookAliveDoesntNeedSample_DanielleSho"/>
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
  </Cs_CrewFacilities_Sq05C_DanielleInSpace_CookAliveB_DanielleSho>
  <Cs_CrewFacilities_Sq05D_DanielleInSpace_CookDeadB_DanielleSho>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq05D_DanielleInSpace_CookDeadDoesntNeedSample_DanielleSho"/>
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
  </Cs_CrewFacilities_Sq05D_DanielleInSpace_CookDeadB_DanielleSho>
  <ShiftPose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="zeroG+Forward">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="ShiftPose_ZeroG_Forward_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="zeroG+Backward">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="ShiftPose_ZeroG_Backward_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="zeroG+Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="ShiftPose_ZeroG_Left_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="zeroG+Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="ShiftPose_ZeroG_Right_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Forward">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="ShiftPose_Forward_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Backward">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="ShiftPose_Backward_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="ShiftPose_Left_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="ShiftPose_Right_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="ShiftPose_Forward_A"/>
    </AnimLayer>
   </Fragment>
  </ShiftPose>
  <MindJack_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat+Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MindJack_Out_Pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_MindJack_Out_Empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_MindJack_Out_Empty"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_MindJack_Out_Empty"/>
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
  <Cs_CrewFacilities_Sq05_DanielleInSpace_Outro_DanielleSho>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq05_DanielleInSpace_Outro_DanielleSho"/>
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
  </Cs_CrewFacilities_Sq05_DanielleInSpace_Outro_DanielleSho>
  <Cs_SimulationLabs_Sq00_FaceTest_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Idle_A_Empty" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="simulationlabs_sq00_facetest_lukagolubkin"/>
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
  </Cs_SimulationLabs_Sq00_FaceTest_LukaGolubkin>
  <LookEyesClosed>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="eyesclosed" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </LookEyesClosed>
  <Cs_SimulationLabs_Sq10_Test_Loiter_01_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_Test_Loiter_01_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_Test_Loiter_01_Bellamy>
  <Cs_SimulationLabs_Sq10_Test_Loiter_02_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_Test_Loiter_02_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_Test_Loiter_02_Bellamy>
  <Cs_SimulationLabs_Sq10_Test_Loiter_03_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_Test_Loiter_03_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_Test_Loiter_03_Bellamy>
  <Cs_SimulationLabs_Sq10_Test_Loiter_04_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_Test_Loiter_04_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_Test_Loiter_04_Bellamy>
  <Cs_SimulationLabs_Sq10_Test_Loiter_05_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_Test_Loiter_05_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_Test_Loiter_05_Bellamy>
  <Cs_SimulationLabs_Sq10_Test_Loiter_06_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_Test_Loiter_06_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_Test_Loiter_06_Bellamy>
  <Cs_SimulationLabs_Sq10_TestB_Loiter_01_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_Loiter_01_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestB_Loiter_01_Bellamy>
  <Cs_SimulationLabs_Sq10_TestB_Loiter_02_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_Loiter_02_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestB_Loiter_02_Bellamy>
  <Cs_SimulationLabs_Sq10_TestB_Loiter_03_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_Loiter_03_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestB_Loiter_03_Bellamy>
  <Cs_SimulationLabs_Sq10_TestB_Loiter_04_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_Loiter_04_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestB_Loiter_04_Bellamy>
  <Cs_SimulationLabs_Sq10_TestB_Loiter_05_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_Loiter_05_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestB_Loiter_05_Bellamy>
  <Cs_SimulationLabs_Sq10_TestB_Loiter_06_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestB_Loiter_06_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestB_Loiter_06_Bellamy>
  <Cs_SimulationLabs_Sq10_TestC_Loiter_01_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_Loiter_01_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestC_Loiter_01_Bellamy>
  <Cs_SimulationLabs_Sq10_TestC_Loiter_02_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_Loiter_02_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestC_Loiter_02_Bellamy>
  <Cs_SimulationLabs_Sq10_TestC_Loiter_03_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_Loiter_03_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestC_Loiter_03_Bellamy>
  <Cs_SimulationLabs_Sq10_TestC_Loiter_04_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_Loiter_04_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestC_Loiter_04_Bellamy>
  <Cs_SimulationLabs_Sq10_TestC_Loiter_05_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_Loiter_05_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestC_Loiter_05_Bellamy>
  <Cs_SimulationLabs_Sq10_TestC_Loiter_06_Bellamy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq10_TestC_Loiter_06_Bellamy"/>
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
  </Cs_SimulationLabs_Sq10_TestC_Loiter_06_Bellamy>
  <Cs_Lobby_Sq02_LookingGlassVideo_Pt2_MorganFemale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq02_LookingGlassVideo_Pt2_MorganFemale"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Lobby_Sq02_LookingGlassVideo_Pt2_Face_MorganFemale"/>
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
  </Cs_Lobby_Sq02_LookingGlassVideo_Pt2_MorganFemale>
  <Cs_LifeSupport_Sq01_DahlKasper_Convo1_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="LifeSupport_Sq01_DahlKaspar_Convo1_Dahl"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="LifeSupport_Sq01_DahlKasper_Convo1_Face_Dahl"/>
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
  </Cs_LifeSupport_Sq01_DahlKasper_Convo1_Dahl>
  <Cs_LifeSupport_Sq01_DahlKasper_Convo2_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="LifeSupport_Sq01_DahlKaspar_Convo2_Dahl"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="LifeSupport_Sq01_DahlKaspar_Convo2_Face_Dahl"/>
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
  </Cs_LifeSupport_Sq01_DahlKasper_Convo2_Dahl>
  <Cs_LifeSupport_Sq02_DahlPassesOut>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="1.0700001"/>
     <Animation name="LifeSupport_Sq02_DahlPassesOut_Dahl"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="LifeSupport_Sq02_DahPassesOut_Face_Dahl"/>
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
  </Cs_LifeSupport_Sq02_DahlPassesOut>
  <Cs_PowerSource_Sq02B_GiveMikhailaMed_EIdle_MikhailaIlyushin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="PowerSource_Sq02B_GiveMikhailaMedicine_EndIdle_MikhailaIlyushin" flags="Loop"/>
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
  </Cs_PowerSource_Sq02B_GiveMikhailaMed_EIdle_MikhailaIlyushin>
  <Cs_PowerSource_Sq01_GiveMikhailaMedicine_SIdle_MikhailaIlyushin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="PowerSource_Sq01_GiveMikhailaMedicine_Startidle_MikhailaIlyushin" flags="Loop"/>
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
  </Cs_PowerSource_Sq01_GiveMikhailaMedicine_SIdle_MikhailaIlyushin>
  <Cs_ShuttleBay_Sq06_DahlWaiting_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ShuttleBay_Sq06_DahlWaitingLoop_Dahl"/>
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
  </Cs_ShuttleBay_Sq06_DahlWaiting_Dahl>
  <Cs_ShuttleBay_Sq05_DahlAttack_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ShuttleBay_Sq05_DahlAttack_Dahl"/>
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
  </Cs_ShuttleBay_Sq05_DahlAttack_Dahl>
  <Distractor_AroundTheRoom>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Relaxed_D"/>
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
  </Distractor_AroundTheRoom>
  <Distractor_ArmsCrossed>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Relaxed_ArmsCrossed_In"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Relaxed_ArmsCrossed_Loop" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Distractor_Relaxed_ArmsCrossed_Out"/>
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
  </Distractor_ArmsCrossed>
  <Distractor_ArmsCrossed_EyesDown>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Relaxed_ArmsCrossed_EyesDown_In"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Relaxed_ArmsCrossed_EyesDown_Loop" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Relaxed_ArmsCrossed_EyesDown_Out"/>
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
  </Distractor_ArmsCrossed_EyesDown>
  <Distractor_ArmsDown>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Relaxed_ArmsDown_In"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Relaxed_ArmsDown_Loop" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Distractor_Relaxed_ArmsDown_Out"/>
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
  </Distractor_ArmsDown>
  <Distractor_ArmsDown_EyesDown>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Relaxed_ArmsDown_EyesDown_In"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Relaxed_ArmsDown_EyesDown_Loop" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Relaxed" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Distractor_Relaxed_ArmsDown_EyesDown_Out"/>
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
  </Distractor_ArmsDown_EyesDown>
  <Cs_CargoBay_Sq04_EngineerSitsOnFloor_Start_EkaterinaMulsaev>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CargoBay_Sq04_EngineerSitsOnFloor_Loop2_EkaterinaMulsaev"/>
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
  </Cs_CargoBay_Sq04_EngineerSitsOnFloor_Start_EkaterinaMulsaev>
  <Cs_SimulationLabs_Sq16_DahlReporgram_WakeUp_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_WakeUp_Igwe"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_WakeUp_Face_Igwe"/>
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
  </Cs_SimulationLabs_Sq16_DahlReporgram_WakeUp_Igwe>
  <Cs_SimulationLabs_Sq04_Mechanic_Working_2_Mechanic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq04_Mechanic_Working_2_Mechanic"/>
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
  </Cs_SimulationLabs_Sq04_Mechanic_Working_2_Mechanic>
  <Cs_SimulationLabs_Sq04_Mechanic_Working_3_Mechanic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.93242168"/>
     <Animation name="SimulationLabs_Sq04_Mechanic_Working_3_Mechanic"/>
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
  </Cs_SimulationLabs_Sq04_Mechanic_Working_3_Mechanic>
  <Cs_SimulationLabs_Sq16_DahlReprogram_EndIdle_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_EndIdle_Igwe" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq16_DahlReprogram_EndIdle_Igwe>
  <Cs_Simulationlabs_Sq16_DahlReprogram_EndIdle_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq16_DahlReprogram_EndIdle_Dahl"/>
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
  </Cs_Simulationlabs_Sq16_DahlReprogram_EndIdle_Dahl>
  <Cs_Psychotronics_Sq01A_MimicExtract_InitialIdle_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01A_MimicExtract_InitialIdle_AaronIngram" flags="Loop"/>
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
  </Cs_Psychotronics_Sq01A_MimicExtract_InitialIdle_AaronIngram>
  <Cs_Psychotronics_Sq01B_MimicExtract_InitialShout_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01B_MimicExtract_InitialShout_AaronIngram"/>
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
  </Cs_Psychotronics_Sq01B_MimicExtract_InitialShout_AaronIngram>
  <Cs_Psychotronics_Sq01C_MimicExtract_PesteringIdle_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01C_MimicExtract_PesteringIdle_AaronIngram" flags="Loop"/>
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
  </Cs_Psychotronics_Sq01C_MimicExtract_PesteringIdle_AaronIngram>
  <Cs_Psychotronics_Sq01D_MimicExtract_BegsNoCode_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01D_MimicExtract_BegsNoCode_AaronIngram"/>
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
  </Cs_Psychotronics_Sq01D_MimicExtract_BegsNoCode_AaronIngram>
  <Cs_Psychotronics_Sq01E_MimicExtract_BegsWithCode_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01E_MimicExtract_BegsWithCode_AaronIngram"/>
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
  </Cs_Psychotronics_Sq01E_MimicExtract_BegsWithCode_AaronIngram>
  <Cs_Psychotronics_Sq01F_MimicExtract_Gesture_A_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01F_MimicExtract_Gesture_A_AaronIngram"/>
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
  </Cs_Psychotronics_Sq01F_MimicExtract_Gesture_A_AaronIngram>
  <Cs_Psychotronics_Sq01F_MimicExtract_Gesture_B_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01F_MimicExtract_Gesture_B_AaronIngram"/>
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
  </Cs_Psychotronics_Sq01F_MimicExtract_Gesture_B_AaronIngram>
  <Cs_Psychotronics_Sq01F_MimicExtract_Gesture_C_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01F_MimicExtract_Gesture_C_AaronIngram"/>
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
  </Cs_Psychotronics_Sq01F_MimicExtract_Gesture_C_AaronIngram>
  <Cs_Psychotronics_Sq01F_MimicExtract_Gesture_D_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01F_MimicExtract_Gesture_D_AaronIngram"/>
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
  </Cs_Psychotronics_Sq01F_MimicExtract_Gesture_D_AaronIngram>
  <Cs_Psychotronics_Sq01F_MimicExtract_Gesture_E_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01E_MimicExtract_BegsWithCode_AaronIngram"/>
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
  </Cs_Psychotronics_Sq01F_MimicExtract_Gesture_E_AaronIngram>
  <Cs_Psychotronics_Sq01F_MimicExtract_Gesture_F_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01F_MimicExtract_RevDialogue_AaronIngram"/>
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
  </Cs_Psychotronics_Sq01F_MimicExtract_Gesture_F_AaronIngram>
  <Cs_Psychotronics_Sq01F_MimicExtract_Gesture_G_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01F_MimicExtract_Gesture_G_AaronIngram"/>
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
  </Cs_Psychotronics_Sq01F_MimicExtract_Gesture_G_AaronIngram>
  <Cs_Psychotronics_Sq01F_MimicExtract_Gesture_H_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01F_MimicExtract_Gesture_H_AaronIngram"/>
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
  </Cs_Psychotronics_Sq01F_MimicExtract_Gesture_H_AaronIngram>
  <Cs_Psychotronics_Sq01F_MimicExtract_Gesture_I_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq01F_MimicExtract_Gesture_I_AaronIngram"/>
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
  </Cs_Psychotronics_Sq01F_MimicExtract_Gesture_I_AaronIngram>
  <Cs_Psychotronics_Sq02E_MimicExtract_AaronPacing_A_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq_02E_Mimicextract_AaronPacing_A_AaronIngram"/>
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
  </Cs_Psychotronics_Sq02E_MimicExtract_AaronPacing_A_AaronIngram>
  <Cs_Psychotronics_Sq02F_MimicExtract_AaronPacing_B_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.22118609"/>
     <Animation name="Psychotronics_Sq02F_MimicExtract_AaronPacing_B_AaronIngram"/>
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
  </Cs_Psychotronics_Sq02F_MimicExtract_AaronPacing_B_AaronIngram>
  <Cs_Psychotronics_Sq02A_MimicExtract_AaronWaiting_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq02A_MimicExtract_AaronWaiting_AaronIngram" flags="Loop"/>
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
  </Cs_Psychotronics_Sq02A_MimicExtract_AaronWaiting_AaronIngram>
  <Cs_Psychotronics_Sq02B_MimicExtract_MimicEnterTube_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq02B_MimicExtract_MimicEnteringTube_AaronIngram"/>
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
  </Cs_Psychotronics_Sq02B_MimicExtract_MimicEnterTube_AaronIngram>
  <Cs_Psychotronics_Sq02C_MimicExtract_MimicInTubeIdle_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq02C_MimicExtract_MimicInTubeIdle_AaronIngram"/>
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
  </Cs_Psychotronics_Sq02C_MimicExtract_MimicInTubeIdle_AaronIngram>
  <Cs_Psychotronics_Sq02D_MimicInTubeReaction_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq02D_MimicExtract_MimicInTubeReaction_AaronIngram" flags="Loop"/>
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
  </Cs_Psychotronics_Sq02D_MimicInTubeReaction_AaronIngram>
  <Cs_Psychotronics_Sq03A_MimicExtract_Death_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq03A_MimicExtract_Death_AaronIngram"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="8.8000002" StartTime="0" Duration="0"/>
     <Animation name="Husk_A"/>
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
     <Blend ExitTime="13" StartTime="0" Duration="0"/>
     <Procedural type="ArkCorpsePose">
      <ProceduralParams>
       <PoseName value=""/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_Psychotronics_Sq03A_MimicExtract_Death_AaronIngram>
  <Cs_Psychotronics_Sq04A_MimicExtract_AaronRelease_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq04A_MimicExtract_MimicInTubeRelease_AaronIngram"/>
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
  </Cs_Psychotronics_Sq04A_MimicExtract_AaronRelease_AaronIngram>
  <Cs_Psychotronics_Sq04B_MimicExtract_AaronReleaseB_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq04B_MimicExtract_PesteringRelease_AaronIngram"/>
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
  </Cs_Psychotronics_Sq04B_MimicExtract_AaronReleaseB_AaronIngram>
  <Cs_Psychotronics_Sq04C_ArmoryIdle_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Psychotronics_Sq04C_MimicExtract_ArmoryIdle_AaronIngram" flags="Loop"/>
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
  </Cs_Psychotronics_Sq04C_ArmoryIdle_AaronIngram>
  <CODE_MT_Charge_IdleToMove_Front>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Charge">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Corrupted_ChargeStart_Front" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_Charge_IdleToMove_Front>
  <CODE_MT_Charge_IdleToMove_Left>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Charge">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Corrupted_ChargeStart_Left" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_Charge_IdleToMove_Left>
  <CODE_MT_Charge_IdleToMove_Back>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Charge">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Corrupted_ChargeStart_Right" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_Charge_IdleToMove_Back>
  <CODE_MT_Charge_IdleToMove_Right>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Charge">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Corrupted_ChargeStart_Right" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_Charge_IdleToMove_Right>
  <Cs_Bridge_Sq10B_AlexReadyDistruct_FinalSpeech_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq10B_AlexReadyDistruct_FinalSpeech_Alex"/>
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
  </Cs_Bridge_Sq10B_AlexReadyDistruct_FinalSpeech_Alex>
  <Cs_Bridge_Sq10C_AlexReadyDistruct_EndIdle_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq10C_AlexReadyDistruct_EndIdle_Alex" flags="Loop"/>
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
  </Cs_Bridge_Sq10C_AlexReadyDistruct_EndIdle_Alex>
  <Cs_Bridge_Sq10D_AlexReadyDestruct_StepsToChair_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq10D_AlexReadyDestruct_StepsToChair_Alex"/>
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
  </Cs_Bridge_Sq10D_AlexReadyDestruct_StepsToChair_Alex>
  <Cs_Bridge_Sq10E_AlexReadyDestruct_IdleAtChair_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq10E_AlexReadyDestruct_IdleAtChair_Alex" flags="Loop"/>
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
  </Cs_Bridge_Sq10E_AlexReadyDestruct_IdleAtChair_Alex>
  <Cs_CrewFacilities_Sq02_CookRevisit_A_Idle_LukaGolubkin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="CrewFacilities_Sq02_CookRevisitA_Idle_LukaGolubkin" flags="Loop"/>
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
  </Cs_CrewFacilities_Sq02_CookRevisit_A_Idle_LukaGolubkin>
  <Cs_Bridge_Sq01A_AlexJanuaryArgue_StartLoop_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq01A_AlexJanuaryArgue_StartLoop_Alex"/>
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
  </Cs_Bridge_Sq01A_AlexJanuaryArgue_StartLoop_Alex>
  <Cs_Arboretum_Sq03_MeetAlex_StartIdle_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq03_MeetAlex_StartIdle_Alex" flags="Loop"/>
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
  </Cs_Arboretum_Sq03_MeetAlex_StartIdle_Alex>
  <Cs_SimulationLabs_Sq08_TestIntro_StartIdle_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Simulationlabs_Sq08_TestIntro_StartIdle_Alex" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq08_TestIntro_StartIdle_Alex>
  <Cs_SimulationLabs_Sq08_TestIntro_StartIdle_SecurityGuard>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Simulationlabs_Sq08_TestIntro_StartIdle_SecurityGuard" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq08_TestIntro_StartIdle_SecurityGuard>
  <Cs_SimulationLabs_Sq08_Greeting_SecurityGuard>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Simulationlabs_Sq08_Greeting_SecurityGuard"/>
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
  </Cs_SimulationLabs_Sq08_Greeting_SecurityGuard>
  <Cs_SimulationLabs_Sq08_Greeting_Idle_SecurityGuard>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq08_Greeting_Ildle_SecurityGuard" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq08_Greeting_Idle_SecurityGuard>
  <Cs_SimulationLabs_Sq08_AlexHoldsPlayer_SecurityGuard>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq08_AlexHoldsPlayer_SecurityGuard"/>
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
  </Cs_SimulationLabs_Sq08_AlexHoldsPlayer_SecurityGuard>
  <Cs_SimulationLabs_Sq08_TestIntro_EndIdle_SecurityGuard>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Simulationlabs_Sq08_TestIntro_EndIdle_SecurityGuard" flags="Loop"/>
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
  </Cs_SimulationLabs_Sq08_TestIntro_EndIdle_SecurityGuard>
  <Cs_SimulationLabs_Sq08_TestIntro_Loiter_A_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq08_TestIntro_Loiter_A_Alex"/>
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
  </Cs_SimulationLabs_Sq08_TestIntro_Loiter_A_Alex>
  <Cs_SimulationLabs_Sq08_TestIntro_Loiter_B_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq08_TestIntro_Loiter_B_Alex"/>
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
  </Cs_SimulationLabs_Sq08_TestIntro_Loiter_B_Alex>
  <Cs_SimulationLabs_Sq08_TestIntro_Loiter_C_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq08_TestIntro_Loiter_C_Alex"/>
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
  </Cs_SimulationLabs_Sq08_TestIntro_Loiter_C_Alex>
  <Cs_SimulationLabs_Sq08_TestIntro_Loiter_A_SecurityGuard>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq08_TestIntro_Loiter_A_SecurityGuard"/>
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
  </Cs_SimulationLabs_Sq08_TestIntro_Loiter_A_SecurityGuard>
  <Cs_SimulationLabs_Sq08_TestIntro_Loiter_B_SecurityGuard>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq08_TestIntro_Loiter_B_SecurityGuard"/>
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
  </Cs_SimulationLabs_Sq08_TestIntro_Loiter_B_SecurityGuard>
  <Cs_Lobby_Sq10C_AudioLogReact_IgweIdle_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq10C_AudioLogReact_IgweIdle_Igwe" flags="Loop"/>
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
  </Cs_Lobby_Sq10C_AudioLogReact_IgweIdle_Igwe>
  <Cs_EndGame_Sq01_LifeReview_Start_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Start_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Start_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue01_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue01_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue01_Face_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue01_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue01_Loop_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue01_Loop_Alex" flags="Loop"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue01_Loop_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue02_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue02_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue02_Face_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue02_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue03_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue03_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="EndGame_Sq03_LifeReview_Dialogue03_Pt2_Face_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue03_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue04_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue04_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue04_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue05_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue05_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue05_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue07_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue07_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue07_Alex>
  <Cs_PowerSource_Sq02_GiveMikhailaMed_Dialogue_MikhailaIlyushin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="PowerSource_Sq02A_GiveMikhailaMedicine_Dialogue_MikhailaIlyushin"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="PowerSource_Sq02A_GiveMikhailaMedicine_Dialogue_Face_MikhailaIlyushin"/>
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
  </Cs_PowerSource_Sq02_GiveMikhailaMed_Dialogue_MikhailaIlyushin>
  <Cs_Arboretum_Sq05_LgVidPart2Female_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq05_LgVidPart2Female_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Arboretum_Sq05_LgVidPart2Female_Face_Alex"/>
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
  </Cs_Arboretum_Sq05_LgVidPart2Female_Alex>
  <Cs_Arboretum_Sq05_LgVidPart2Male_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq05_LgVidPart2Male_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Arboretum_Sq05_LgVidPart2Male_Face_Alex"/>
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
  </Cs_Arboretum_Sq05_LgVidPart2Male_Alex>
  <Cs_Arboretum_Sq05_LgVidPart2Male_Morgan>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq05_LgVidPart2Male_Morgan"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Arboretum_Sq05_LgVidPart2Male_Face_Morgan"/>
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
  </Cs_Arboretum_Sq05_LgVidPart2Male_Morgan>
  <Cs_Arboretum_Sq05_LgVidPart2Female_Morgan>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq05_LgVidPart2Male_MorganFemale"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Arboretum_Sq05_LgVidPart2Male_Face_MorganFemale"/>
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
  </Cs_Arboretum_Sq05_LgVidPart2Female_Morgan>
  <Cs_UI_GenderSelect_MorganKarlMale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="UI_Sq01_GenderSelect_MorganKarlMale" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="UI_Sq01_GenderSelect_Face_MorganKarlMale" flags="Loop"/>
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
  </Cs_UI_GenderSelect_MorganKarlMale>
  <Distractor_InspectCorpse>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_InspectCorpse"/>
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
  </Distractor_InspectCorpse>
  <Cs_EndGame_Sq01_LifeReview_Dialogue08_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue08_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="EndGame_Sq10_LifeReview_Dialogue10_Face_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue08_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue09_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue09_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="EndGame_Sq11_LifeReview_Dialogue11_Face_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue09_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue10_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue10_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue12_Face_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue10_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue11_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue11_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="EndGame_Sq13_LifeReview_Dialogue13_Face_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue11_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue12_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_HandShake_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="EndGame_Sq14_LifeReview14_HandShake_Face_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue12_Alex>
  <Cs_EndGame_Sq01_LifeReview_Death_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_AlexDeath_Alex"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq15_LifeReview_AlexDeath_Face_Alex"/>
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
  </Cs_EndGame_Sq01_LifeReview_Death_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue08_Loop_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue08_Loop_Alex" flags="Loop"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue08_Loop_Alex>
  <Cs_EndGame_Sq01_LifeReview_Dialogue11_Loop_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="EndGame_Sq01_LifeReview_Dialogue11_Loop_Alex" flags="Loop"/>
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
  </Cs_EndGame_Sq01_LifeReview_Dialogue11_Loop_Alex>
  <Cs_UI_GenderSelect_MorganFemale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="UI_Sq01_GenderSelect_MorganFemale" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="UI_Sq01_GenderSelect_Face_MorganFemale" flags="Loop"/>
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
  </Cs_UI_GenderSelect_MorganFemale>
  <Cs_PowerSource_Sq02_GiveMikhailaMed_Dialogue02_MikhailaIlyushin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="PowerSource_Sq02A_GiveMikhailaMedicine_Dialogue02_MikhailaIlyushin"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="PowerSource_Sq02A_GiveMikhailaMedicine_Dialogue02_Face_MikhailaIlyushin"/>
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
  </Cs_PowerSource_Sq02_GiveMikhailaMed_Dialogue02_MikhailaIlyushin>
  <Cs_ShuttleBay_ShuttleEscape_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ShuttleBay_Sq_04_ShuttleEscape_Dahl"/>
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
  </Cs_ShuttleBay_ShuttleEscape_Dahl>
  <Cs_ShuttleBay_ShuttleEscape_StartLoop_Dahl>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ShuttleBay_Sq_04_ShuttleEscapeDahl_StartLoop_Dahl" flags="Loop"/>
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
  </Cs_ShuttleBay_ShuttleEscape_StartLoop_Dahl>
  <Cs_ShuttleBay_Sq02_EscapePodFail_Ejected_FrankJones>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ShuttleBay_Sq02_EscapePodFail_Ejected_FrankJones"/>
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
  </Cs_ShuttleBay_Sq02_EscapePodFail_Ejected_FrankJones>
  <Cs_Bridge_Sq06A_AlexJanuaryArgue_StartLoop_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq06A_AlexJanuaryArgueMale_StartLoop_Alex"/>
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
  </Cs_Bridge_Sq06A_AlexJanuaryArgue_StartLoop_Alex>
  <Glood_Pose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Glood_Pose_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Glood_Pose_B"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Corrupted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Glood_Pose_C"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Glood_Pose_C"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Glood_Pose_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Pistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Glood_Pose_B"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Glood_Pose_A"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Glood_Pose_B"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Relaxed_Glood_Pose_C"/>
    </AnimLayer>
   </Fragment>
  </Glood_Pose>
  <Cs_Bridge_AlexShootsJanuary_Convo_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_AlexShootsJanuary_Convo_Alex"/>
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
  </Cs_Bridge_AlexShootsJanuary_Convo_Alex>
  <Cs_Bridge_Sq01_AlexJanuaryArgueMale_Convo_Alex>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Bridge_Sq01A_AlexJanuaryArgueMale_Convo_Alex"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="0.2"/>
       <Vertical value="0.2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_Bridge_Sq01_AlexJanuaryArgueMale_Convo_Alex>
  <Cs_ShuttleBay_Sq04_ShuttleEscape_ChairIdle_AaronIngram>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ShuttleBay_Sq04_ShuttleEscape_ChairIdle_AaronIngram" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="0.2"/>
       <Vertical value="0.2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_ShuttleBay_Sq04_ShuttleEscape_ChairIdle_AaronIngram>
  <Cs_ShuttleBay_Sq04_ShuttleEscape_ChairIdle_Igwe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ShuttleBay_Sq04_ShuttleEscape_ChairIdle_Igwe" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="0.2"/>
       <Vertical value="0.2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_ShuttleBay_Sq04_ShuttleEscape_ChairIdle_Igwe>
  <Cs_ShuttleBay_Sq04_ShuttleEscape_ChairIdle_MikhailaIlyushin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ShuttleBay_Sq04_ShuttleEscape_ChairIdle_MikhailaIlyushin" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="0.2"/>
       <Vertical value="0.2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_ShuttleBay_Sq04_ShuttleEscape_ChairIdle_MikhailaIlyushin>
  <Cs_ShuttleBay_Sq04_ShuttleEscape_ChairIdle_SarahElazar>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ShuttleBay_Sq04_ShuttleEscape_ChairIdle_SarahElazar" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="0.2"/>
       <Vertical value="0.2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Cs_ShuttleBay_Sq04_ShuttleEscape_ChairIdle_SarahElazar>
  <Cs_Lobby_Sq02_LookingGlassVideo_Pt2_StartLoop_MorganFemale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq02_LookingGlassVideo_Pt2_StartLoop_MorganFemale" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Cs_Lobby_Sq02_LookingGlassVideo_Pt2_StartLoop_MorganFemale>
  <Cs_Lobby_Sq02_LookingGlassVideo_StartLoop_MorganFemale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq02_LookingGlassVideo_StartLoop_MorganFemale" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Cs_Lobby_Sq02_LookingGlassVideo_StartLoop_MorganFemale>
  <Cs_Lobby_Sq02_LookingGlassVideo_Pt2_StartLoop_Morgan>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq02_LookingGlassVideo_Pt2_StartLoop_Morgan" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Cs_Lobby_Sq02_LookingGlassVideo_Pt2_StartLoop_Morgan>
  <Cs_Lobby_Sq02_LookingGlassVideo_StartLoop_Morgan>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Lobby_Sq02_LookingGlassVideo_StartLoop_Morgan" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Cs_Lobby_Sq02_LookingGlassVideo_StartLoop_Morgan>
  <Cs_Arboretum_Sq05_LgVidPart2Male_StartLoop_Morgan>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq05_LgVidPart2Male_StartLoop_Morgan" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Cs_Arboretum_Sq05_LgVidPart2Male_StartLoop_Morgan>
  <Cs_Arboretum_Sq05_LgVidPart2Male_StartLoop_MorganFemale>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Arboretum_Sq05_LgVidPart2Male_StartLoop_MorganFemale" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Cs_Arboretum_Sq05_LgVidPart2Male_StartLoop_MorganFemale>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="Motion_Move" to="Motion_Move">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.5" flags="TimeWarping"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_idleToMove" to="Motion_Move">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.36702287" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.5" flags="TimeWarping" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_runToIdle" to="Motion_Idle">
   <Variant from="Relaxed" to="Relaxed">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.54999995" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_walkJukeTurnFwdLft180" to="Motion_Move">
   <Variant from="Relaxed" to="Relaxed">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.5" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="5.9604645e-008" StartTime="0" Duration="0.49000001" flags="TimeWarping" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_walkJukeTurnFwdRt180" to="Motion_Move">
   <Variant from="Relaxed" to="Relaxed">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.30999994" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.30000001" flags="TimeWarping" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>