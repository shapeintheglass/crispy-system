
<AnimDB FragDef="Animations/Mannequin/ADB/ArkPlayerFragments.xml" TagDef="Animations/Mannequin/ADB/ArkPlayerTags.xml">
 <SubADBs>
  <SubADB Tags="wrench+slaveHuman" File="Animations/Mannequin/ADB/ArkWrenchFFEvents.adb"/>
 </SubADBs>
 <FragmentList>
  <Wpn_Select>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+zeroG+inCombat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_FastSelect_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_switch_weapon"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_FastSelect_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_switch_weapon"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+inCombat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_FastSelect_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Arm_Wrench_Combat"/>
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
     <Blend ExitTime="-0.051199995" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_switch_weapon"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Select_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Arm_Wrench"/>
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
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_switch_weapon"/>
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
  </Wpn_Select>
  <Wpn_Unselect>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Unselect_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Unequip"/>
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
  </Wpn_Unselect>
  <Motion_Slide>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_SlideBase" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Slide_In_1"/>
       <StopTrigger value="Play_Player_Slide_Out_1"/>
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
  </Motion_Slide>
  <Pose_IdlePose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+inAir">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="JumpPoses_1p_Wrench" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="IdlePoses_1p_Wrench" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="WeaponSway">
      <ProceduralParams>
       <EaseFactorInc value="5"/>
       <EaseFactorDec value="5"/>
       <StrafeScopeFactor value="0"/>
       <RotateScopeFactor value="0.5"/>
       <VelocityInterpolationMultiplier value="0"/>
       <VelocityLowPassFilter value="0"/>
       <AccelerationSmoothing value="1.2"/>
       <AccelerationFrontAugmentation value="6"/>
       <VerticalVelocityScale value="10"/>
       <SprintCameraAnimation value="0"/>
       <LookOffset>
        <Element value="5"/>
        <Element value="0"/>
       </LookOffset>
       <HorizLookRot>
        <Element value="6"/>
        <Element value="20"/>
        <Element value="10"/>
       </HorizLookRot>
       <VertLookRot>
        <Element value="-20"/>
        <Element value="0"/>
        <Element value="0"/>
       </VertLookRot>
       <StrafeOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </StrafeOffset>
       <SideStrafeRot>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </SideStrafeRot>
       <FrontStrafeRot>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </FrontStrafeRot>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Pose_IdlePose>
  <Fp_Bump>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Bump_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fp_Bump>
  <Fp_Hit>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_bighit_front_wrench" weight="0.60000002"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fp_Hit>
  <Fp_Movement>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_ZeroG_Idle_Wrench" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="1p_Sprint_Wrench" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+inAir">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Jump_Wrench" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="1D-BSpace_1p_UpperBody_Run_Wrench" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Fp_Movement>
  <Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_ZeroG_Idle_Wrench" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="1p_Idle_Wrench" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Cancel_Wrench_Charge"/>
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
  </Idle>
  <Idle_Break>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_IdleBreak_A_Wrench"/>
    </AnimLayer>
   </Fragment>
  </Idle_Break>
  <Climb>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+HighClimb">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Mantle_High_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams>
       <Offset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </Offset>
       <Yaw value="0"/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="ColliderMode">
      <ProceduralParams>
       <Mode value="Disabled"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.24999999"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Player_Climb"/>
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
     <Blend ExitTime="0.5" StartTime="0" Duration="0.29999998"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams>
       <Offset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </Offset>
       <Yaw value="0"/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.79999995" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="AllowMove"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+MediumClimb">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.11000001"/>
     <Animation name="1p_Mantle_Medium_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.11000001"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams>
       <Offset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </Offset>
       <Yaw value="0"/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.11000001"/>
     <Procedural type="ColliderMode">
      <ProceduralParams>
       <Mode value="Disabled"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.11"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Player_Climb"/>
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
     <Blend ExitTime="0.11000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams>
       <Offset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </Offset>
       <Yaw value="0"/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.41000003" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="AllowMove"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Climb>
  <Wpn_Melee_LeftRight>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+exhausted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Melee_Exhausted_LeftRight_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.328125" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.87187505" StartTime="0" Duration="0.19834471"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.5" StartTime="0" Duration="0.26249981"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.11250001" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_WPN_Player_Wrench_Melee_Fatigue"/>
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
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchSwingLeftRight"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+dramatic">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="1p_BreakingGlass_LR_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.00017666072"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.50833333" StartTime="0" Duration="0.10485762"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="-135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1083333" StartTime="0" Duration="0.26249981"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer/>
    <ProcLayer>
     <Blend ExitTime="0.37343749" StartTime="0" Duration="0.0010317862"/>
     <Procedural type="TimeWarp">
      <ProceduralParams>
       <scale value="0.30000001"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.60468745" StartTime="0" Duration="0.0099388361"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_DramaticWrench_Swing"/>
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
     <Blend ExitTime="0.55000001" StartTime="0" Duration="0.0021283031"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_DramaticWrench_Glass"/>
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
     <Blend ExitTime="0.37446928" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Foreshadow"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="1p_Melee_LeftRight_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1125" StartTime="0" Duration="0.00083084404"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.38749999" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.5" StartTime="0" Duration="0.26249981"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.13333333" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Stop_Player_Wrench_Charge_LP"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchSwingLeftRight"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Melee_LeftRight>
  <Wpn_Melee_RightLeft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+exhausted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_Exhausted_RightLeft_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.26666668" StartTime="0" Duration="0.00017666072"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.10485762"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="-135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.5" StartTime="0" Duration="0.26249981"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.050000012" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_WPN_Player_Wrench_Melee_Fatigue"/>
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
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchSwingRightLeft"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+dramatic">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="1p_BreakingGlass_RL_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.00017666072"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.50833333" StartTime="0" Duration="0.10485762"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="-135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1083333" StartTime="0" Duration="0.26249981"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.37343749" StartTime="0" Duration="0.0010317862"/>
     <Procedural type="TimeWarp">
      <ProceduralParams>
       <scale value="0.30000001"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.60468745" StartTime="0" Duration="0.0099388361"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.0031249523" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_DramaticWrench_Swing"/>
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
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Foreshadow"/>
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
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_DramaticWrench_Glass"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="1p_Melee_RightLeft_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.00017666072"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.54999995" StartTime="0" Duration="0.10485762"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="-135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.5" StartTime="0" Duration="0.26249981"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.049999982" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Stop_Player_Wrench_Charge_LP"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchSwingRightLeft"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
     <Blend ExitTime="0.125" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Melee_RightLeft>
  <Wpn_Melee_In_LeftRight>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+exhausted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_Exhausted_In_LeftRight_A_Wrench"/>
     <Blend ExitTime="0.26666668" StartTime="0" Duration="0.30000001"/>
     <Animation name="1p_Melee_Exhausted_Loop_LeftRight_A_Wrench" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.26666668" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Charge"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_melee_in_leftright_a_wrench" speed="1.5"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_Loop_LeftRight_A_Wrench" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0.15555556" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Melee_LeftRight_A_Wrench_LHandClose"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Melee_LeftRight_A_Wrench_LHandClose_Loop" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15555556" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Charge"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.25555557" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Wrench_Charge_LP"/>
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
  </Wpn_Melee_In_LeftRight>
  <Wpn_Melee_In_RightLeft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+exhausted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_Exhausted_In_RightLeft_A_Wrench"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Melee_Exhausted_Loop_RightLeft_A_Wrench" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.4666667" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Charge"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_melee_in_rightleft_a_wrench" speed="1.5"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.1"/>
     <Animation name="1p_melee_loop_rightleft_a_wrench" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0.15555556" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Melee_RightLeft_A_Wrench_LHandClose"/>
     <Blend ExitTime="1.9666666" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Melee_RightLeft_A_Wrench_LHandClose_Loop" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15555556" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Charge"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.25555557" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Wrench_Charge_LP"/>
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
  </Wpn_Melee_In_RightLeft>
  <Wpn_Melee_BigHit_Enemy_RightLeft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+disable">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_Enemy_RightLeft_B_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.3125" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+disable">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_Enemy_RightLeft_C_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.3125" StartTime="0" Duration="2.6345253e-005"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+exhausted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_Enemy_Exhausted_RightLeft_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216983445308"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_Enemy_RightLeft_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216983445308"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Vox_Heavy_Effort"/>
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
  </Wpn_Melee_BigHit_Enemy_RightLeft>
  <Wpn_Melee_BigHit_Enemy_LeftRight>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+disable">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_Enemy_LeftRight_B_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.3125" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+exhausted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_Enemy_Exhausted_LeftRight_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216981561384"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_Enemy_LeftRight_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.00012773275"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216981561384"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Vox_Heavy_Effort"/>
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
  </Wpn_Melee_BigHit_Enemy_LeftRight>
  <Wpn_Melee_Out_LeftRight>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+dramatic">
    <AnimLayer/>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Stop_Player_Wrench_Charge_LP"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_Out_LeftRight_A_Wrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Melee_Out_LeftRight>
  <Wpn_Melee_Out_RightLeft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+dramatic">
    <AnimLayer/>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Stop_Player_Wrench_Charge_LP"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_Out_RightLeft_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Stop_Player_Wrench_Charge_LP"/>
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
  </Wpn_Melee_Out_RightLeft>
  <Wpn_Melee_BigHit_LeftRight>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+exhausted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_Exhausted_LeftRight_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216981561384"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_LeftRight_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216981561384"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Vox_Heavy_Effort"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_LeftRight_B_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216981561384"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Vox_Heavy_Effort"/>
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
  </Wpn_Melee_BigHit_LeftRight>
  <Wpn_Melee_BigHit_RightLeft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+disable">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_RightLeft_C_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.3125" StartTime="0" Duration="2.6345253e-005"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench+exhausted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_Exhausted_RightLeft_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216983445308"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_RightLeft_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216983445308"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Vox_Heavy_Effort"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_RightLeft_B_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216983445308"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="2.6345253e-005"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Vox_Heavy_Effort"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Melee_BigHit_RightLeft_D_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Vox_Heavy_Effort"/>
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
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216983445308"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Melee_BigHit_RightLeft>
  <Wpn_Fatality_Mimic_Front_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Fatality_Mimic_Front_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Fatality_Swish"/>
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
     <Blend ExitTime="0.2" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
  </Wpn_Fatality_Mimic_Front_Wrench>
  <Wpn_Fatality_Phantom_Front_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Fatality_Phantom_Front_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Wrench_Melee"/>
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
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Impact_Final_Blow"/>
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
     <Blend ExitTime="0.1" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Fatality_Swish"/>
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
  </Wpn_Fatality_Phantom_Front_Wrench>
  <Wpn_PickUp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_PickUp_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Arm_Wrench"/>
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
  </Wpn_PickUp>
  <Wpn_Melee_Fatality_Generic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Fatality_Generic_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Fatality_Swish"/>
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
     <Blend ExitTime="0.41874999" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.7" StartTime="0" Duration="0.26249981"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.41874999" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216983445308"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Melee_Fatality_Generic>
  <AnimTest>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_BreakingGlass_LR_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.00017666072"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.50833333" StartTime="0" Duration="0.10485762"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="-135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1083333" StartTime="0" Duration="0.26249981"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.050000012" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Stop_Player_Wrench_Charge_LP"/>
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
    <ProcLayer/>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.30000001"/>
     <Procedural type="TimeWarp">
      <ProceduralParams>
       <scale value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="1"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.0031249523" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_DramaticWrench_Swing"/>
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
     <Blend ExitTime="0.075000003" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_DramaticWrench_Glass"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="wrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_BreakingGlass_RL_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.00017666072"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.50833333" StartTime="0" Duration="0.10485762"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="-135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1083333" StartTime="0" Duration="0.26249981"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.050000012" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Stop_Player_Wrench_Charge_LP"/>
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
    <ProcLayer/>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.30000001"/>
     <Procedural type="TimeWarp">
      <ProceduralParams>
       <scale value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="1"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.0031249523" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_DramaticWrench_Swing"/>
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
     <Blend ExitTime="0.075000003" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_DramaticWrench_Glass"/>
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
  </AnimTest>
 </FragmentList>
</AnimDB>