
<AnimDB FragDef="Animations/Mannequin/ADB/ArkPlayerFragments.xml" TagDef="Animations/Mannequin/ADB/ArkPlayerTags.xml">
 <SubADBs>
  <SubADB Tags="laser+slaveHuman" File="Animations/Mannequin/ADB/ArkLasergunFFEvents.adb"/>
 </SubADBs>
 <FragmentList>
  <Wpn_Fire>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Fire_Laser" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.099999994"/>
     <Procedural type="GameNoise">
      <ProceduralParams>
       <type value="Danger"/>
       <loudness value="18m"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Instalaser_Fire"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="1"/>
     <Procedural type="WeaponSway">
      <ProceduralParams>
       <EaseFactorInc value="3"/>
       <EaseFactorDec value="3"/>
       <StrafeScopeFactor value="0"/>
       <RotateScopeFactor value="6"/>
       <VelocityInterpolationMultiplier value="0"/>
       <VelocityLowPassFilter value="0"/>
       <AccelerationSmoothing value="2"/>
       <AccelerationFrontAugmentation value="2"/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="GooGunDefault"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.00060550869"/>
     <Procedural type="ArkCameraFOV">
      <ProceduralParams>
       <desiredHFOV value="86.75"/>
       <restoreHFOVDurationSec value="0.1"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.087499991" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Wpn_Fire>
  <Wpn_Reload>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Reload_Laser"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="2.2249999" StartTime="0" Duration="0.030487537"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Reload"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="5.9604645e-008"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WeaponReload"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.82499999" StartTime="0" Duration="0"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WeaponReload"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.63048744" StartTime="0" Duration="0"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WeaponReload"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Reload>
  <Wpn_Reload_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Reload_Out_Laser"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="HeavyBump"/>
       <Scale value="1"/>
       <Delay value="0"/>
       <OnlyLocal value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Reload_Out>
  <Wpn_Select>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser+zeroG+inCombat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_FastSelect_laser"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Select_Laser"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser+inCombat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_FastSelect_laser"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Arm_Instalaser"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Select_Laser"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Arm_Instalaser"/>
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
  <Wpn_OutOfAmmo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Instalaser_DryFire"/>
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
  </Wpn_OutOfAmmo>
  <Wpn_Unselect>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser+broken">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Broken_laser"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Unselect_Laser"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser+inAir">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="JumpPoses_1p_Laser" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="WeaponSway">
      <ProceduralParams>
       <EaseFactorInc value="2"/>
       <EaseFactorDec value="3"/>
       <StrafeScopeFactor value="0"/>
       <RotateScopeFactor value="0"/>
       <VelocityInterpolationMultiplier value="10"/>
       <VelocityLowPassFilter value="0"/>
       <AccelerationSmoothing value="3"/>
       <AccelerationFrontAugmentation value="6"/>
       <VerticalVelocityScale value="10"/>
       <SprintCameraAnimation value="0"/>
       <LookOffset>
        <Element value="5"/>
        <Element value="2"/>
       </LookOffset>
       <HorizLookRot>
        <Element value="0"/>
        <Element value="-2"/>
        <Element value="2"/>
       </HorizLookRot>
       <VertLookRot>
        <Element value="-1"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="IdlePoses_1p_Laser" flags="Loop"/>
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
        <Element value="5"/>
        <Element value="2"/>
       </LookOffset>
       <HorizLookRot>
        <Element value="0"/>
        <Element value="-2"/>
        <Element value="2"/>
       </HorizLookRot>
       <VertLookRot>
        <Element value="-1"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Bump_Laser"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_bighit_front_laser" weight="0.60000002"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_ZeroG_Idle_Laser" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.55000001"/>
     <Animation name="1p_Sprint_Laser" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser+inAir">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Jump_Laser" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_1p_UpperBody_Run_Laser" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Fp_Movement>
  <Wpn_Fire_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="1p_Fire_In_Laser" speed="2"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.34375" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216981565685"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Fire_In>
  <Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_ZeroG_Idle_Laser" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="1p_Idle_Laser" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Idle>
  <Idle_Break>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_IdleBreak_A_Laser"/>
    </AnimLayer>
   </Fragment>
  </Idle_Break>
  <Climb>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser+MediumClimb">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.11000001"/>
     <Animation name="1p_Mantle_Medium_Laser"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser+HighClimb">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Mantle_High_Laser"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Fire_Out_Laser"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Fire_Out>
  <Wpn_Malfunction>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Malfunction_Laser"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Laser"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.6" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Instalaser_Repair"/>
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
  </Wpn_Malfunction>
  <Wpn_Emp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Malfunction_Laser"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.3" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Instalaser_Repair"/>
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
  </Wpn_Emp>
  <Wpn_PickUp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_PickUp_Laser"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Arm_Instalaser"/>
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
     <Blend ExitTime="2.9000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Foley_Lobby_PushThrough_03"/>
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
     <Blend ExitTime="1.25" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_WPN_Instalaser_Pickup_Swish"/>
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
     <Blend ExitTime="3.55" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Pickup_LaserGun"/>
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
       <StartTrigger value="Play_WPN_Laser_Inspect_Foley_Seq"/>
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
  <Wpn_Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="laser"/>
  </Wpn_Idle>
 </FragmentList>
</AnimDB>