
<AnimDB FragDef="Animations/Mannequin/ADB/ArkPlayerFragments.xml" TagDef="Animations/Mannequin/ADB/ArkPlayerTags.xml">
 <SubADBs>
  <SubADB Tags="recycler+slaveHuman" File="Animations/Mannequin/ADB/ArkRecyclerGrenadeFFEvents.adb"/>
 </SubADBs>
 <FragmentList>
  <Wpn_Fire>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1p_Fire_Grenade"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.050000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Recycler_Grenade_Throw"/>
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
  </Wpn_Fire>
  <Wpn_Reload>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler"/>
  </Wpn_Reload>
  <Wpn_Reload_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler"/>
  </Wpn_Reload_In>
  <Wpn_Reload_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler"/>
  </Wpn_Reload_Out>
  <Wpn_Select>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+zeroG+inCombat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_FastSelect_Grenade"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Select_Grenade"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+inCombat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_FastSelect_Grenade"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Recycler_Grenade_Equip_Combat"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Select_Grenade"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Recycler_Grenade_Equip"/>
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
  <Wpn_OutOfAmmo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler"/>
  </Wpn_OutOfAmmo>
  <Wpn_Throw>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="1p_Throw_Grenade"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Throw"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.83333331" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Reload"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.099999905" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Recycler_Grenade_Throw"/>
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
     <Procedural type="WeaponSway">
      <ProceduralParams>
       <EaseFactorInc value="3"/>
       <EaseFactorDec value="3"/>
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
  </Wpn_Throw>
  <Wpn_Unselect>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Unselect_Grenade"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_SlideBase" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Slide_In"/>
       <StopTrigger value="Play_Player_Slide_Out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+inAir">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="JumpPoses_1p_Grenade" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="WeaponSway">
      <ProceduralParams>
       <EaseFactorInc value="2"/>
       <EaseFactorDec value="3"/>
       <StrafeScopeFactor value="0"/>
       <RotateScopeFactor value="0"/>
       <VelocityInterpolationMultiplier value="5"/>
       <VelocityLowPassFilter value="0"/>
       <AccelerationSmoothing value="0"/>
       <AccelerationFrontAugmentation value="6"/>
       <VerticalVelocityScale value="1.2"/>
       <SprintCameraAnimation value="0"/>
       <LookOffset>
        <Element value="-4"/>
        <Element value="4"/>
       </LookOffset>
       <HorizLookRot>
        <Element value="0"/>
        <Element value="-10"/>
        <Element value="6"/>
       </HorizLookRot>
       <VertLookRot>
        <Element value="4"/>
        <Element value="10"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="IdlePoses_1p_Grenade" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="WeaponSway">
      <ProceduralParams>
       <EaseFactorInc value="2"/>
       <EaseFactorDec value="3"/>
       <StrafeScopeFactor value="0"/>
       <RotateScopeFactor value="5"/>
       <VelocityInterpolationMultiplier value="0"/>
       <VelocityLowPassFilter value="0"/>
       <AccelerationSmoothing value="1.2"/>
       <AccelerationFrontAugmentation value="6"/>
       <VerticalVelocityScale value="10"/>
       <SprintCameraAnimation value="0"/>
       <LookOffset>
        <Element value="-4"/>
        <Element value="4"/>
       </LookOffset>
       <HorizLookRot>
        <Element value="0"/>
        <Element value="-10"/>
        <Element value="6"/>
       </HorizLookRot>
       <VertLookRot>
        <Element value="4"/>
        <Element value="10"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_bump_grenade"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_bighit_front_grenade" weight="0.60000002"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+zeroG+deploy">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Deploy_Ready_Idle_Grenade" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.80000001"/>
     <Animation name="1p_ZeroG_Idle_Grenade" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="1p_Sprint_Grenade" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+deploy">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Deploy_Ready_Idle_Grenade" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+inAir">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Jump_Grenade" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="1D-BSpace_1p_UpperBody_Run_Grenade" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Fp_Movement>
  <Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+zeroG+deploy">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Deploy_Ready_Idle_Grenade" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+zeroG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.80000001"/>
     <Animation name="1p_ZeroG_Idle_Grenade" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+deploy">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="1p_Deploy_Ready_Idle_Grenade" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Idle_Grenade" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Idle>
  <Idle_Break>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="1p_Idle_Grenade"/>
    </AnimLayer>
   </Fragment>
  </Idle_Break>
  <Climb>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+HighClimb">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Mantle_High_Grenade"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler+MediumClimb">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.11000001"/>
     <Animation name="1p_Mantle_Medium_Grenade"/>
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
  <Wpn_Deploy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_Deploy_Grenade"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Deploy"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.0333334" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Reload"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Recycler_Grenade_Deploy"/>
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
  </Wpn_Deploy>
  <Wpn_Throw_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="1p_Throw_In_Grenade"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.63320315" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="ThrowIdle"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_mvmt_foley_fast"/>
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
  </Wpn_Throw_In>
  <Wpn_Throw_Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="1p_Throw_Idle_Grenade" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Throw_Idle_Grenade_LHandClose"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Throw_Idle_Grenade_LHandClose_Idle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Throw_Idle>
  <Wpn_Throw_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="1p_Throw_Out_Grenade"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.13333334" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Throw"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.76666671" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="Reload"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Throw_Out>
  <Wpn_Throw_Cancel>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="1p_Throw_Cancel_Grenade"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Throw_Cancel>
  <Wpn_PickUp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="1p_PickUp_Grenade"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Recycler_Grenade_Equip"/>
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
     <Blend ExitTime="1" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Grenade_Explosive_Deploy"/>
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
     <Blend ExitTime="1.4" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Player_Foley_Lobby_PlaceHand_01"/>
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
     <Blend ExitTime="1.7" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_grab_recycler_charge_03"/>
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
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_grab_recycler_charge_01"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="recycler"/>
  </Wpn_Idle>
 </FragmentList>
</AnimDB>