
<AnimDB FragDef="Animations/Mannequin/ADB/ArkPlayerFragments.xml" TagDef="Animations/Mannequin/ADB/ArkPlayerTags.xml">
 <SubADBs>
  <SubADB Tags="stungun+slaveHuman" File="Animations/Mannequin/ADB/ArkStungunFFEvent.adb"/>
 </SubADBs>
 <FragmentList>
  <Wpn_Fire>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0099999998"/>
     <Animation name="1p_Fire_Stungun" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="WeaponSway">
      <ProceduralParams>
       <EaseFactorInc value="0"/>
       <EaseFactorDec value="0"/>
       <StrafeScopeFactor value="0"/>
       <RotateScopeFactor value="0"/>
       <VelocityInterpolationMultiplier value="0"/>
       <VelocityLowPassFilter value="0"/>
       <AccelerationSmoothing value="0"/>
       <AccelerationFrontAugmentation value="0"/>
       <VerticalVelocityScale value="0"/>
       <SprintCameraAnimation value="0"/>
       <LookOffset>
        <Element value="0"/>
        <Element value="0"/>
       </LookOffset>
       <HorizLookRot>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </HorizLookRot>
       <VertLookRot>
        <Element value="0"/>
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
  </Wpn_Fire>
  <Wpn_Reload>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Reload_Stungun"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_WPN_StunGun_Reload_Snap"/>
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
     <Blend ExitTime="2.5999999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_WPN_StunGun_Reload_ElectricSnap"/>
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
     <Blend ExitTime="2.4666667" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Reload"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.7" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_WPN_StunGun_Reload_Slide"/>
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
     <Blend ExitTime="2.4000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_WPN_StunGun_Reload_FinalClench"/>
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
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_WPN_StunGun_Reload_SlideRattle"/>
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
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_WPN_StunGun_Reload_LeverIn"/>
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
     <Blend ExitTime="2.5" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_WPN_StunGun_Reload_ElectricAftermath"/>
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
     <Blend ExitTime="0.1" StartTime="0" Duration="5.9604645e-008"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="GlowEnd"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.4000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="reloadsmallFF"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="2.0999999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="reloadsmallFF"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Reload>
  <Wpn_Select>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun+zeroG+inCombat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_fastselect_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Select_Pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun+inCombat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_fastselect_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_select_pistol"/>
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
  </Wpn_Select>
  <Wpn_OutOfAmmo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <ProcLayer/>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Taser_DryFire"/>
       <StopTrigger value="Stop_WPN_Taser_DryFire"/>
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
  </Wpn_OutOfAmmo>
  <Wpn_Unselect>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun+broken">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Broken_Pistol"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_unselect_pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun+inAir">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="JumpPoses_1p_Pistol" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="WeaponSway">
      <ProceduralParams>
       <EaseFactorInc value="2"/>
       <EaseFactorDec value="3"/>
       <StrafeScopeFactor value="0"/>
       <RotateScopeFactor value="0"/>
       <VelocityInterpolationMultiplier value="0"/>
       <VelocityLowPassFilter value="10"/>
       <AccelerationSmoothing value="3"/>
       <AccelerationFrontAugmentation value="6"/>
       <VerticalVelocityScale value="10"/>
       <SprintCameraAnimation value="0"/>
       <LookOffset>
        <Element value="4"/>
        <Element value="4"/>
       </LookOffset>
       <HorizLookRot>
        <Element value="0"/>
        <Element value="-2"/>
        <Element value="4"/>
       </HorizLookRot>
       <VertLookRot>
        <Element value="4"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="idleposes_1p_pistol" flags="Loop"/>
    </AnimLayer>
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
        <Element value="0.25"/>
        <Element value="0.25"/>
       </LookOffset>
       <HorizLookRot>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="3"/>
       </HorizLookRot>
       <VertLookRot>
        <Element value="0"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Bump_Pistol"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216981558224"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fp_Bump>
  <Fp_Hit>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_BigHit_Front_Pistol" weight="0.60000002"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216981557362"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fp_Hit>
  <Fp_Movement>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="1p_zerog_idle_pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="1p_sprint_pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun+inAir">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Jump_Pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_1p_UpperBody_Run_Pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Fp_Movement>
  <Wpn_Fire_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Fire_In_Stungun"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_WPN_Taser_Prime"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.032853067"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="StunGunChargeIn1"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.40625" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="StunGunChargeIn2"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Fire_In>
  <Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="1p_zerog_idle_pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_idle_pistol" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Idle>
  <Idle_Break>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_IdleBreak_A_Pistol"/>
    </AnimLayer>
   </Fragment>
  </Idle_Break>
  <Climb>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun+MediumClimb">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.11000001"/>
     <Animation name="1p_Mantle_Medium_Pistol"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun+HighClimb">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Mantle_High_Pistol"/>
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
  </Climb>
  <Wpn_Fire_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Fire_Out_Stungun"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Taser_Fire"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="GameNoise">
      <ProceduralParams>
       <type value="Danger"/>
       <loudness value="09m"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.012499999" StartTime="0" Duration="0.00014767051"/>
     <Procedural type="ArkCameraFOV">
      <ProceduralParams>
       <desiredHFOV value="87"/>
       <restoreHFOVDurationSec value="0.029999999"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.043749999" StartTime="0" Duration="0.078569591"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216983294434"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Fire_Out>
  <Wpn_Malfunction>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Malfunction_Stungun"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.5" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="GlowEnd"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer/>
   </Fragment>
  </Wpn_Malfunction>
  <Wpn_Fire_Cancel>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Fire_Cancel_Stungun"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_WPN_Taser_Cancel_Charge"/>
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
  </Wpn_Fire_Cancel>
  <Wpn_Emp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Malfunction_Stungun"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Emp>
  <Wpn_PickUp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_PickUp_Stungun"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="2.5" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_WPN_Taser_Break"/>
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
    <ProcLayer/>
    <ProcLayer/>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_WPN_Stungun_Inspect_Foley_Seq"/>
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
  </Wpn_PickUp>
  <Wpn_Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun"/>
  </Wpn_Idle>
 </FragmentList>
</AnimDB>