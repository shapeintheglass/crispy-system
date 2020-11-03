
<AnimDB FragDef="Animations/Mannequin/ADB/ArkPlayerFragments.xml" TagDef="Animations/Mannequin/ADB/ArkPlayerTags.xml">
 <SubADBs>
  <SubADB Tags="dualwrench+slaveHuman" File="Animations/Mannequin/ADB/ArkDualWrenchFFEvent.adb"/>
 </SubADBs>
 <FragmentList>
  <Wpn_Unselect>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0099999998"/>
     <Animation name="1p_UnSelect_DualWrench"/>
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
  <Pose_IdlePose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench+inAir">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="JumpPoses_1p_DualWrench" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="AttachProp">
      <ProceduralParams>
       <ObjectFilename value="objects/weapons/wrench/1p/wrench1p.cdf"/>
       <AttachmentName value="l_hand_prop"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="IdlePoses_1p_DualWrench" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="AttachProp">
      <ProceduralParams>
       <ObjectFilename value="objects/weapons/wrench/1p/wrench1p.cdf"/>
       <AttachmentName value="l_hand_prop"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="WeaponSway">
      <ProceduralParams>
       <EaseFactorInc value="5"/>
       <EaseFactorDec value="5"/>
       <StrafeScopeFactor value="0"/>
       <RotateScopeFactor value="0"/>
       <VelocityInterpolationMultiplier value="0"/>
       <VelocityLowPassFilter value="10"/>
       <AccelerationSmoothing value="3"/>
       <AccelerationFrontAugmentation value="6"/>
       <VerticalVelocityScale value="10"/>
       <SprintCameraAnimation value="0"/>
       <LookOffset>
        <Element value="5"/>
        <Element value="0"/>
       </LookOffset>
       <HorizLookRot>
        <Element value="6"/>
        <Element value="8"/>
        <Element value="0"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Bump_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="LightBump"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fp_Bump>
  <Fp_Hit>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_BigHit_Front_DualWrench" weight="0.60000002"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="Hit"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fp_Hit>
  <Fp_Movement>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_ZeroG_Idle_DualWrench" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Sprint_DualWrench" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench+inAir">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Jump_DualWrench" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="1D-BSpace_1p_UpperBody_Run_DualWrench" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Fp_Movement>
  <Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="1p_ZeroG_Idle_DualWrench" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="1p_Idle_DualWrench" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Idle>
  <Idle_Break>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_IdleBreak_A_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Idle_Break>
  <Climb>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench+HighClimb">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Mantle_High_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
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
     <Blend ExitTime="0.5" StartTime="0" Duration="0.30000001"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ColliderMode">
      <ProceduralParams>
       <Mode value="Disabled"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
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
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="AllowMove"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench+MediumClimb">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.11000001"/>
     <Animation name="1p_Mantle_Medium_DualWrench"/>
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
  <Wpn_DualWrench_Attack_A>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_A_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.175" StartTime="0" Duration="0.00096023083"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="-135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_Attack_A>
  <Wpn_DualWrench_Attack_B>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_B_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.075000003" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
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
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_Attack_B>
  <Wpn_DualWrench_Attack_C>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_C_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.13333334" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="DoubleHit"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="-135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_Attack_C>
  <Wpn_DualWrench_Attack_D>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_D_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.31874999" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.10304001"/>
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
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_Attack_D>
  <Wpn_DualWrench_Attack_E>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_E_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.41874999" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
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
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_Attack_E>
  <Wpn_DualWrench_BigHit_A>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_A_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_A>
  <Wpn_DualWrench_BigHit_B>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_B_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_B>
  <Wpn_DualWrench_BigHit_C>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_C_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_C>
  <Wpn_DualWrench_BigHit_D>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_D_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_D>
  <Wpn_DualWrench_BigHit_E>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_E_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_E>
  <Wpn_DualWrench_BigHit_Enemy_A>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_Enemy_A_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_A>
  <Wpn_DualWrench_BigHit_Enemy_B>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_Enemy_B_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_B>
  <Wpn_DualWrench_BigHit_Enemy_C>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_Enemy_C_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_C>
  <Wpn_DualWrench_BigHit_Enemy_D>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_Enemy_D_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_D>
  <Wpn_DualWrench_BigHit_Enemy_E>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_Enemy_E_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_E>
  <Wpn_DualWrench_BigHit_A2B>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_A2B_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_A2B>
  <Wpn_DualWrench_BigHit_B2C>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_B2C_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_B2C>
  <Wpn_DualWrench_BigHit_C2D>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_C2D_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_C2D>
  <Wpn_DualWrench_BigHit_D2E>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_D2E_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_D2E>
  <Wpn_DualWrench_BigHit_E2F>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_E2A_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_E2F>
  <Wpn_DualWrench_BigHit_Enemy_A2B>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_A2B_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_A2B>
  <Wpn_DualWrench_BigHit_Enemy_B2C>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_B2C_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_B2C>
  <Wpn_DualWrench_BigHit_Enemy_C2D>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_C2D_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_C2D>
  <Wpn_DualWrench_BigHit_Enemy_D2E>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_D2E_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_D2E>
  <Wpn_DualWrench_BigHit_Enemy_E2F>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_E2A_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_E2F>
  <Wpn_DualWrench_Attack_F>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_F_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.18125001" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
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
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="-135"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_Attack_F>
  <Wpn_DualWrench_Attack_G>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_G_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.31874999" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="DoubleHit"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0.10336001"/>
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
     <Procedural type="SetParam">
      <ProceduralParams>
       <ParamName value="Direction"/>
       <Target value="180"/>
       <ExitTarget value="1"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_Attack_G>
  <Wpn_DualWrench_BigHit_F>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_F_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_F>
  <Wpn_DualWrench_BigHit_G>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_G_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_G>
  <Wpn_DualWrench_BigHit_Enemy_F>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_Enemy_F_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_F>
  <Wpn_DualWrench_BigHit_Enemy_G>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_Enemy_G_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Chain"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_G>
  <Wpn_DualWrench_BigHit_F2G>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_E2A_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_F2G>
  <Wpn_DualWrench_BigHit_Enemy_F2G>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_E2A_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_F2G>
  <Wpn_DualWrench_BigHit_G2A>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_E2A_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_G2A>
  <Wpn_DualWrench_BigHit_Enemy_G2A>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Melee_BigHit_E2A_DualWrench"/>
    </AnimLayer>
   </Fragment>
  </Wpn_DualWrench_BigHit_Enemy_G2A>
  <Wpn_DualWrench_Fatality_Generic>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="dualwrench">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Fatality_Generic_A_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Hit"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.14999998" StartTime="0" Duration="0"/>
     <Procedural type="TimeWarp">
      <ProceduralParams>
       <scale value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.14999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Wpn_DualWrench_Fatality_Generic>
 </FragmentList>
</AnimDB>