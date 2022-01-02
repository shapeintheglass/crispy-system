
<AnimDB FragDef="Animations/Mannequin/ADB/Ai_Phantom_FragmentIds.xml" TagDef="Animations/Mannequin/ADB/Ai_Phantom_Tags.xml">
 <FragmentList>
  <Motion_Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="Combat_Idle_A" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="Combat_Idle_B" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateAnomaly">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="Combat_Idle_A" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateDanger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="Combat_Idle_A" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateVision">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="Combat_Idle_A" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Hunt">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="Combat_Idle_A" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Motion_Idle>
  <Motion_Move>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Relaxed+LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="3d-Bspace_Combat_MoveStrafeTurn" flags="Loop" speed="0.75" weightList="1"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat+LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="3d-Bspace_Combat_MoveStrafeTurn" flags="Loop" speed="0.75"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateAnomaly+LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="3d-Bspace_Combat_MoveStrafeTurn" flags="Loop" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.050000001"/>
       <SmoothTimeTorsomax value="0.050000001"/>
       <SmoothTimeHeadMin value="0.050000001"/>
       <SmoothTimeHeadMax value="0.050000001"/>
       <YawMinDeg value="30"/>
       <YawMaxDeg value="60"/>
       <TorsoYawMaxDeg value="10"/>
       <PitchMinDeg value="-30"/>
       <PitchMaxDeg value="30"/>
       <TorsoPitchMaxDeg value="0"/>
       <HoldTimeMin value="1"/>
       <HoldTimeMax value="2"/>
       <NumTurnsMin value="5"/>
       <NumTurnsMax value="10"/>
       <TimeBetweenLooksMin value="0.5"/>
       <TimeBetweenLooksMax value="5"/>
       <DbgName value="Investigate Anomaly Clip"/>
       <Priority value="ambient"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LookPose">
      <ProceduralParams>
       <Animation value="lookposes_combat_torso_idle"/>
       <BlendTime value="0.5"/>
       <ScopeLayer value="14"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LookPoseHead">
      <ProceduralParams>
       <Animation value="lookposes_combat_head_idle"/>
       <BlendTime value="0"/>
       <ScopeLayer value="15"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateDanger+LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="3d-Bspace_Combat_MoveStrafeTurn" flags="Loop" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.050000001"/>
       <SmoothTimeTorsomax value="0.050000001"/>
       <SmoothTimeHeadMin value="0.050000001"/>
       <SmoothTimeHeadMax value="0.050000001"/>
       <YawMinDeg value="30"/>
       <YawMaxDeg value="60"/>
       <TorsoYawMaxDeg value="10"/>
       <PitchMinDeg value="-30"/>
       <PitchMaxDeg value="30"/>
       <TorsoPitchMaxDeg value="0"/>
       <HoldTimeMin value="1"/>
       <HoldTimeMax value="2"/>
       <NumTurnsMin value="5"/>
       <NumTurnsMax value="10"/>
       <TimeBetweenLooksMin value="0.5"/>
       <TimeBetweenLooksMax value="5"/>
       <DbgName value="Investigate Danger Clip"/>
       <Priority value="ambient"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LookPose">
      <ProceduralParams>
       <Animation value="lookposes_combat_torso_idle"/>
       <BlendTime value="0.5"/>
       <ScopeLayer value="14"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LookPoseHead">
      <ProceduralParams>
       <Animation value="lookposes_combat_head_idle"/>
       <BlendTime value="0"/>
       <ScopeLayer value="15"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateVision+LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="3d-Bspace_Combat_MoveStrafeTurn" flags="Loop" speed="0.75"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Hunt+LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="3d-Bspace_Combat_MoveStrafeTurn" flags="Loop" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.1"/>
       <SmoothTimeTorsomax value="0.2"/>
       <SmoothTimeHeadMin value="0.079999998"/>
       <SmoothTimeHeadMax value="0.12"/>
       <YawMinDeg value="30"/>
       <YawMaxDeg value="60"/>
       <TorsoYawMaxDeg value="15"/>
       <PitchMinDeg value="-25"/>
       <PitchMaxDeg value="25"/>
       <TorsoPitchMaxDeg value="5"/>
       <HoldTimeMin value="0.23"/>
       <HoldTimeMax value="0.67000002"/>
       <NumTurnsMin value="3"/>
       <NumTurnsMax value="3"/>
       <TimeBetweenLooksMin value="0"/>
       <TimeBetweenLooksMax value="2"/>
       <DbgName value="Hunt Clip"/>
       <Priority value="search"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LookPose">
      <ProceduralParams>
       <Animation value="lookposes_combat_torso_idle"/>
       <BlendTime value="0.5"/>
       <ScopeLayer value="14"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LookPoseHead">
      <ProceduralParams>
       <Animation value="lookposes_combat_head_idle"/>
       <BlendTime value="0"/>
       <ScopeLayer value="15"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="3d-Bspace_Combat_MoveStrafeTurn" flags="Loop" weightList="1"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="3d-Bspace_Combat_MoveStrafeTurn" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateAnomaly">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="3d-Bspace_Combat_MoveStrafeTurn" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.050000001"/>
       <SmoothTimeTorsomax value="0.050000001"/>
       <SmoothTimeHeadMin value="0.050000001"/>
       <SmoothTimeHeadMax value="0.050000001"/>
       <YawMinDeg value="30"/>
       <YawMaxDeg value="60"/>
       <TorsoYawMaxDeg value="10"/>
       <PitchMinDeg value="-30"/>
       <PitchMaxDeg value="30"/>
       <TorsoPitchMaxDeg value="0"/>
       <HoldTimeMin value="1"/>
       <HoldTimeMax value="2"/>
       <NumTurnsMin value="5"/>
       <NumTurnsMax value="10"/>
       <TimeBetweenLooksMin value="0.5"/>
       <TimeBetweenLooksMax value="5"/>
       <DbgName value="Investigate Anomaly Clip"/>
       <Priority value="ambient"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LookPose">
      <ProceduralParams>
       <Animation value="lookposes_combat_torso_idle"/>
       <BlendTime value="0.5"/>
       <ScopeLayer value="14"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LookPoseHead">
      <ProceduralParams>
       <Animation value="lookposes_combat_head_idle"/>
       <BlendTime value="0"/>
       <ScopeLayer value="15"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateDanger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="3d-Bspace_Combat_MoveStrafeTurn" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.050000001"/>
       <SmoothTimeTorsomax value="0.050000001"/>
       <SmoothTimeHeadMin value="0.050000001"/>
       <SmoothTimeHeadMax value="0.050000001"/>
       <YawMinDeg value="30"/>
       <YawMaxDeg value="60"/>
       <TorsoYawMaxDeg value="10"/>
       <PitchMinDeg value="-30"/>
       <PitchMaxDeg value="30"/>
       <TorsoPitchMaxDeg value="0"/>
       <HoldTimeMin value="1"/>
       <HoldTimeMax value="2"/>
       <NumTurnsMin value="5"/>
       <NumTurnsMax value="10"/>
       <TimeBetweenLooksMin value="0.5"/>
       <TimeBetweenLooksMax value="5"/>
       <DbgName value="Investigate Danger Clip"/>
       <Priority value="ambient"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LookPose">
      <ProceduralParams>
       <Animation value="lookposes_combat_torso_idle"/>
       <BlendTime value="0.5"/>
       <ScopeLayer value="14"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LookPoseHead">
      <ProceduralParams>
       <Animation value="lookposes_combat_head_idle"/>
       <BlendTime value="0"/>
       <ScopeLayer value="15"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateVision">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="3d-Bspace_Combat_MoveStrafeTurn" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Hunt">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="3d-Bspace_Combat_MoveStrafeTurn" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.1"/>
       <SmoothTimeTorsomax value="0.2"/>
       <SmoothTimeHeadMin value="0.079999998"/>
       <SmoothTimeHeadMax value="0.12"/>
       <YawMinDeg value="30"/>
       <YawMaxDeg value="60"/>
       <TorsoYawMaxDeg value="15"/>
       <PitchMinDeg value="-25"/>
       <PitchMaxDeg value="25"/>
       <TorsoPitchMaxDeg value="5"/>
       <HoldTimeMin value="0.23"/>
       <HoldTimeMax value="0.67000002"/>
       <NumTurnsMin value="3"/>
       <NumTurnsMax value="3"/>
       <TimeBetweenLooksMin value="0"/>
       <TimeBetweenLooksMax value="2"/>
       <DbgName value="Hunt Clip"/>
       <Priority value="search"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LookPose">
      <ProceduralParams>
       <Animation value="lookposes_combat_torso_idle"/>
       <BlendTime value="0.5"/>
       <ScopeLayer value="14"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LookPoseHead">
      <ProceduralParams>
       <Animation value="lookposes_combat_head_idle"/>
       <BlendTime value="0"/>
       <ScopeLayer value="15"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Motion_Move>
  <Motion_IdleTurn>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_StepRot"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_StepRot"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateAnomaly">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_StepRot"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateDanger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_StepRot"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateVision">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_StepRot"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Hunt">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_StepRot"/>
    </AnimLayer>
   </Fragment>
  </Motion_IdleTurn>
  <Melee>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Disable" FragTags="Front">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Melee_Front_C"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <AttachmentRadius value="0.75"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.3125" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.85000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="800"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.27499998" StartTime="0" Duration="0"/>
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
    <ProcLayer>
     <Blend ExitTime="0.79999995" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.80000007" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="Disable" FragTags="Front">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Melee_Front_D"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.05" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <AttachmentRadius value="0.75"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.4000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="800"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.80000007" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Melee_Left90_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.40000004" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <AttachmentRadius value="0.75"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.49999994" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.43333334" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkPuff_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachhand_rt"/>
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
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.43333334" StartTime="0" Duration="0.0066666603"/>
     <Procedural type=""/>
     <Blend ExitTime="0.5333333" StartTime="0" Duration="0.00045359135"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkPuff_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachhand_rt"/>
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
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.33333337" StartTime="0" Duration="0.0030934811"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkTrail_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachmidfinger_rt"/>
       <PosOffset>
        <Element value="-0.1"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="45"/>
        <Element value="-90"/>
        <Element value="45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.63333333" StartTime="0" Duration="0.0014240742"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.049999982" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="900"/>
       <RelativeDesiredDegrees value="-90"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
     <Blend ExitTime="0.20000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.125" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.80000007" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Melee_Right90_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.44999999" StartTime="0" Duration="5.9604645e-08"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <AttachmentRadius value="0.75"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.2" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkPuff_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachhand_rt"/>
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
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
     <Blend ExitTime="0.63333333" StartTime="0" Duration="0.013333201"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkPuff_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachhand_rt"/>
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
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.5" StartTime="0" Duration="1.1920929e-07"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkTrail_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachhand_rt"/>
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
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.83333331" StartTime="0" Duration="0.0066666603"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.001102224"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="900"/>
       <RelativeDesiredDegrees value="90"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.17499998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
     <Blend ExitTime="0.22500002" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.099999964" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.90000004" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Melee_Front_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.36666667" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <AttachmentRadius value="0.80000001"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.33333331" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.36666667" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkPuff_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachhand_lt"/>
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
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1" StartTime="0" Duration="0.0050667524"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.43333334" StartTime="0" Duration="5.9604645e-08"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkTrail_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachmidfinger_lt"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="180"/>
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
     <Blend ExitTime="0.46666664" StartTime="0" Duration="0.00020134449"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1500001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="900"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.35000002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Melee_Front_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.64999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <AttachmentRadius value="0.75"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.375" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.2" StartTime="0" Duration="2.9802322e-08"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkPuff_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachhand_rt"/>
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
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.00064000487"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0.0015164912"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkTrail_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachmidfinger_rt"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="30"/>
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
     <Blend ExitTime="0.36666664" StartTime="0" Duration="0.0037866831"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.64999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.875" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.00025847554"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="900"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Melee>
  <Power_Shift>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Shift_Forward_In"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Shift_Left_In"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Shift_Right_In"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Back">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_shift_backward_in"/>
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
  </Power_Shift>
  <Aiming>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Aiming">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Aiming>
  <LookPose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Combat">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="lookposes_combat_run" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateAnomaly">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="lookposes_combat_run" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateDanger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="lookposes_combat_run" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateVision">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="lookposes_combat_run" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="lookposes_combat_torso_idle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </LookPose>
  <Looking>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Looking">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Looking>
  <Reaction_Death>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_right+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_right_rl_a" speed="0.60000002"/>
     <Blend ExitTime="1.5" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_right+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_right_lr_a" speed="0.55000001"/>
     <Blend ExitTime="1.8" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_forward+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_rl_a" speed="0.64999998"/>
     <Blend ExitTime="1.375" StartTime="0" Duration="0.36666679"/>
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
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="so_forward+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Torso_Front_RL_B" speed="0.60000002"/>
     <Blend ExitTime="1.6" StartTime="0" Duration="0.20000017"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1018112"/>
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
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_forward+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_lr_a" speed="0.64999998"/>
     <Blend ExitTime="1.75" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1001152"/>
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
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="so_forward+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Torso_Front_LR_B" speed="0.64999998"/>
     <Blend ExitTime="1.7" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1018112"/>
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
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_forward+hit+Small+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="Combat_SmallHit_Front_RL_A" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_forward+hit+Small+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="combat_smallhit_front_lr_a" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_left+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_left_rl_a" speed="0.60000002"/>
     <Blend ExitTime="1.2" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_left+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_left_lr_a" speed="0.69999999"/>
     <Blend ExitTime="1.5" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_back+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_back_rl_a" speed="0.64999998"/>
     <Blend ExitTime="1.4" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_back+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_back_lr_a" speed="0.64999998"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
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
     <Animation name="combat_mediumhit_torso_front_lr_a"/>
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
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_forward+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MediumHit_Torso_Front_LR_B"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_front_rl_a"/>
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
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_forward+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MediumHit_Torso_Front_RL_B"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Animation name="combat_mediumhit_torso_left_lr_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_left_rl_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_back_lr_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_back_rl_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Stagger+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_right_lr_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Stagger+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_right_rl_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Small+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_smallhit_front_lr_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Small+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_SmallHit_Front_RL_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_death_right_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.175" StartTime="0" Duration="0.079691753"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_forward+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_death_left_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.22499999" StartTime="0" Duration="0.075604796"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_left+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.099999979"/>
     <Animation name="combat_death_front_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.073400319"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
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
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_left+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000004"/>
     <Animation name="combat_death_back_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.20000002" StartTime="0" Duration="0.14470346"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_back+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_death_left_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.079691768"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_back+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_death_right_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.175" StartTime="0" Duration="0.088080361"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_right+hit+Throw+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_death_back_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.27500001" StartTime="0" Duration="0.11534333"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_right+hit+Throw+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_death_front_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.22499999" StartTime="0" Duration="0.098566145"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_back+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_smallhit_back_a" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_back+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_back_a" speed="0.60000002"/>
     <Blend ExitTime="1.8" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_right+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_smallhit_right_a" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_right+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_right_a" speed="0.60000002"/>
     <Blend ExitTime="1.9" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_forward+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_front_a" speed="0.64999998"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="so_forward+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Torso_Front_B" speed="0.64999998"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
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
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="so_forward+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_smallhit_front_a" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_left+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_left_a" speed="0.60000002"/>
     <Blend ExitTime="1.8" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="so_left+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_smallhit_left_a" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Animation name="combat_mediumhit_torso_front_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_forward+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MediumHit_Torso_Front_B"/>
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
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_left_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_back_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_mediumhit_torso_right_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_smallhit_left_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_smallhit_back_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_smallhit_right_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_forward+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_smallhit_front_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_forward+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_death_front_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.27500001" StartTime="0" Duration="0.077594608"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_left+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_death_left_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.22499999" StartTime="0" Duration="0.075604796"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_back+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_death_back_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.10066327"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_right+hit+Throw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_death_right_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.175" StartTime="0" Duration="0.073400304"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_behind+hit+Knockdown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_bighit_torso_back_a_in"/>
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
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0.175" StartTime="0" Duration="0.12512212"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_ahead+hit+Knockdown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_bighit_torso_front_a_in"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.00077059865"/>
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
       <StartTrigger value="Play_Phantom_Vox_Pain"/>
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
     <Blend ExitTime="0.16249999" StartTime="0" Duration="0.10243151"/>
     <Procedural type="ArkRagdoll">
      <ProceduralParams>
       <MinTimeInRagdoll value="2.5"/>
       <MaxTimeInRagdoll value="10"/>
       <StopCurrentFragment value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+death+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Front_LR_A"/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Death"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+death+RightLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Front_RL_A"/>
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
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Death"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+death+LeftRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_mediumhit_torso_left_lr_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Death"/>
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
     <Animation name="combat_mediumhit_torso_left_rl_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Death"/>
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
     <Animation name="combat_mediumhit_torso_back_lr_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Death"/>
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
     <Animation name="combat_mediumhit_torso_back_rl_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Death"/>
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
     <Animation name="combat_mediumhit_torso_right_lr_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Death"/>
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
     <Animation name="combat_mediumhit_torso_right_rl_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.1"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_Death"/>
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
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+death+Impact_High">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Front_A"/>
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
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.1"/>
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
     <Animation name="Combat_Death_Front_B"/>
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
     <Blend ExitTime="0.25" StartTime="0" Duration="0.1"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_forward+death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Front_C"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Torso_Left_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+death+Impact_High">
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+death+Impact_High">
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Torso_Back_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+death+Impact_Low">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_MediumHit_Torso_Right_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+death+Impact_High">
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
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.1"/>
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
     <Blend ExitTime="0.27500001" StartTime="0" Duration="0.1"/>
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
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.1"/>
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
     <Animation name="Combat_Death_Front_B"/>
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
     <Blend ExitTime="0.25" StartTime="0" Duration="0.1"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="so_forward+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Death_Front_C"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="LaserExplosion+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Explode"/>
     <Blend ExitTime="0.30781251" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
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
       <EventName value="EnergizedExplosion"/>
      </ProceduralParams>
     </Procedural>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="SolarFrenzyDeath+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Death_Explode"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEventOnExit">
      <ProceduralParams>
       <EventName value="StartDeathBlendToCorpse"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="-8.0297587e+18"/>
       <Vertical value="-8.0297587e+18"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEventOnExit">
      <ProceduralParams>
       <EventName value="FrenzyExplosion"/>
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
     <Blend ExitTime="30" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ragdoll_recovery_back"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_mvmt_rise"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ragdoll_recovery_front"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_mvmt_rise"/>
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
  </BlendRagdoll>
  <Power_Shift_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Combat_Shift_Forward_Out" flags="FullRootPriority"/>
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
    <ProcLayer/>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0" flags="Idle2Move"/>
     <Animation name="Combat_Shift_Left_Out" flags="FullRootPriority"/>
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
    <ProcLayer/>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0" flags="Idle2Move"/>
     <Animation name="Combat_Shift_Right_Out" flags="FullRootPriority"/>
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
    <ProcLayer/>
   </Fragment>
  </Power_Shift_Out>
  <Distractor_EnergyLeech>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_EnergyLeech" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </Distractor_EnergyLeech>
  <CODE_MT_idleToMove>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2d-Bspace_Combat_MoveStart" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_idleToMove>
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
     <Animation name="combat_hypnotized_loop_medium" flags="Loop"/>
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
     <Animation name="combat_blinded_in_medium"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_blinded_out_medium"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_blinded_loop_medium" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Blinded>
  <Lifted>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Combat_Lifted" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Lifted>
  <Fall>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Combat_Fall" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Fall>
  <Land_Stumble>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Land_Stumble"/>
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
  </Land_Stumble>
  <CallNPCs>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_CallMimic_Loop" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_CallMimic_Stop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_CallMimics_LP"/>
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
     <Animation name="Combat_CallMimic_Start"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_CallMimics"/>
       <StopTrigger value=""/>
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
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0.039999999"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_CallMimics_01"/>
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
     <Blend ExitTime="0.24000001" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_CallMimics_LP"/>
       <StopTrigger value=""/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </CallNPCs>
  <Lifted_BumpCeiling>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Lifted_BumpCeiling"/>
    </AnimLayer>
   </Fragment>
  </Lifted_BumpCeiling>
  <Land_Bump>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Land_Bump"/>
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
  </Land_Bump>
  <Distractor_DeskSwipe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_DeskSwipe_A"/>
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
  </Distractor_DeskSwipe>
  <Distractor_Investigate_Left>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Investigate_Left_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Investigate_Left_B"/>
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
  </Distractor_Investigate_Left>
  <Distractor_Investigate_Right>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Distractor_Investigate_Right_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_Investigate_Right_B"/>
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
  </Distractor_Investigate_Right>
  <Distractor_Investigate_Forward>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Distractor_Investigate_Front_A"/>
    </AnimLayer>
   </Fragment>
  </Distractor_Investigate_Forward>
  <RaiseFromCorpse>
   <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Resurrect_A"/>
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
  </RaiseFromCorpse>
  <Fatality_Front_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_fatality_phantom_front_a_wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.00099202991"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.96666664" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.30000001"/>
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
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="1.4901161e-08"/>
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
        <Element value="0"/>
        <Element value="0"/>
        <Element value="45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.4" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
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
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Stunned_Loop" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Stunned_Out"/>
    </AnimLayer>
   </Fragment>
  </Stunned>
  <Search>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Search_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Vox_SearchMode"/>
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
     <Blend ExitTime="0.5" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Movement_Search_In"/>
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
     <Blend ExitTime="1" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Movement_Search_Mid"/>
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
     <Blend ExitTime="3.9000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Movement_Search_Out"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Search>
  <ForceResist>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_in"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_back_in"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Left_In"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Right_In"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_loop" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_back_loop" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Left_Loop" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Right_Loop" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_back_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Left_Out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Right_Out"/>
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
  </ForceResist>
  <ForceResistScrunch>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_in"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Death_Left"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.20136558"/>
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
     <Animation name="combat_forceresist_back_in"/>
     <Blend ExitTime="0.75" StartTime="0" Duration="0.30000001"/>
     <Animation name="Combat_ForceResist_Death_Back"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.20136558"/>
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
     <Animation name="combat_forceresist_front_in"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Death_Front"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_in"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_Death_Front"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_ForceResist_DeathIdle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_back_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_out"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_forceresist_front_out"/>
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
  </ForceResistScrunch>
  <Cs_SimulationLabs_Sq15_PhantomKill_Phantom>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq15_PhantomKill_Phantom"/>
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
  </Cs_SimulationLabs_Sq15_PhantomKill_Phantom>
  <Cs_SimulationLabs_Sq15_PhantomInspect_Phantom>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="SimulationLabs_Sq15_PhantomInspect_Phantom"/>
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
  </Cs_SimulationLabs_Sq15_PhantomInspect_Phantom>
  <PushObstacle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Combat_Push_Obstacles"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.54999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.22499999" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkPuff_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachhand_lt"/>
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
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.1416667" StartTime="0" Duration="0.0050667524"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.32499999" StartTime="0" Duration="5.9604645e-08"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkTrail_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachmidfinger_lt"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="180"/>
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
     <Blend ExitTime="0.57499999" StartTime="0" Duration="0.00020134449"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </PushObstacle>
  <Notice>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Anomaly">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Noticed_Anomaly_Front" flags="FullRootPriority"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Danger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Noticed_Danger_Front" flags="FullRootPriority"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAdjustFourWayMove">
      <ProceduralParams>
       <animFinalDirection value="front"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.2" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Notice_Danger"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Vision">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Noticed_Danger_Front" flags="FullRootPriority"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAdjustFourWayMove">
      <ProceduralParams>
       <animFinalDirection value="front"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.2" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Notice_Vision"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+Anomaly">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Noticed_Anomaly_Back" flags="FullRootPriority"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+Danger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="noticed_danger_back" flags="FullRootPriority"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAdjustFourWayMove">
      <ProceduralParams>
       <animFinalDirection value="back"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Notice_Danger"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Back+Vision">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="noticed_danger_back" flags="FullRootPriority"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAdjustFourWayMove">
      <ProceduralParams>
       <animFinalDirection value="back"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Notice_Vision"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+Anomaly">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Noticed_Anomaly_Left" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0011558533"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+Danger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Noticed_Danger_Left" flags="FullRootPriority"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAdjustFourWayMove">
      <ProceduralParams>
       <animFinalDirection value="left"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.2" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Notice_Danger"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left+Vision">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Noticed_Danger_Left" flags="FullRootPriority"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAdjustFourWayMove">
      <ProceduralParams>
       <animFinalDirection value="left"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.2" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Notice_Vision"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Anomaly">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Noticed_Anomaly_Right" flags="FullRootPriority"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Danger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Noticed_Danger_Right" flags="FullRootPriority"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAdjustFourWayMove">
      <ProceduralParams>
       <animFinalDirection value="right"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.16666667" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Notice_Danger"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right+Vision">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Noticed_Danger_Right" flags="FullRootPriority"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAdjustFourWayMove">
      <ProceduralParams>
       <animFinalDirection value="right"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.16666667" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Phantom_Notice_Vision"/>
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
  <SearchGiveUp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Search_GiveUp"/>
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
  </SearchGiveUp>
  <CODE_MT_walkToIdle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="2d-Bspace_Combat_MoveStop_Walk"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkToIdle>
  <CODE_MT_runToIdle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="2d-Bspace_Combat_MoveStop_Run"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_runToIdle>
  <Dodge>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_dodge_left_a" speed="0.85000002"/>
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
     <Animation name="Combat_DodgeAttack_Back_A"/>
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
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.4333334" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.4333334" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.099999994" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="20"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.76666665" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Dodge_Left_B" speed="0.85000002"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_DodgeAttack_Left_A" speed="0.85000002"/>
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
     <Blend ExitTime="0.38000003" StartTime="0" Duration="0.1"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="360"/>
       <RelativeDesiredDegrees value="90"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.41999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.25" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="1000"/>
       <NpcHitImpulse value="1000"/>
       <OtherHitImpulse value="100"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.25" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Dodge_Right_A" speed="0.80000001"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Dodge_Right_B" speed="0.80000001"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_DodgeAttack_Right_A" speed="0.89999998"/>
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
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.1"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="-50"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.55000001" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.1" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="1000"/>
       <NpcHitImpulse value="1000"/>
       <OtherHitImpulse value="100"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.1" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_DodgeAttack_Back_C" speed="0.89999998"/>
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
     <Blend ExitTime="0.1" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="-50"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.59999996" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="1000"/>
       <NpcHitImpulse value="1000"/>
       <OtherHitImpulse value="100"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.15000004" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.15000004" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_DodgeAttack_Back_B" speed="0.89999998"/>
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
     <Blend ExitTime="1.2" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.43333328" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.2" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.43333328" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="40"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.0333333" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_dodge_left_a"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_DodgeAttack_Back_A"/>
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
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.4333334" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.4333334" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.099999994" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="20"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.76666665" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Dodge_Left_B"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_DodgeAttack_Left_A"/>
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
     <Blend ExitTime="0.38000003" StartTime="0" Duration="0.1"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="360"/>
       <RelativeDesiredDegrees value="90"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.41999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.25" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="1000"/>
       <NpcHitImpulse value="1000"/>
       <OtherHitImpulse value="100"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.25" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Dodge_Right_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_DodgeAttack_Back_B"/>
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
     <Blend ExitTime="1.2" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.43333328" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.2" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.43333328" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="40"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.0333333" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_Dodge_Right_B"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_DodgeAttack_Right_A"/>
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
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.1"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="-50"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.55000001" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.1" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="1000"/>
       <NpcHitImpulse value="1000"/>
       <OtherHitImpulse value="100"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.1" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_DodgeAttack_Back_C"/>
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
     <Blend ExitTime="0.1" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="-50"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.59999996" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.5"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="1000"/>
       <NpcHitImpulse value="1000"/>
       <OtherHitImpulse value="100"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.15000004" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.15000004" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Dodge>
  <CODE_MT_runJukeTurnFwdLft180>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Combat_WalkJuke_Left180" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_runJukeTurnFwdLft180>
  <CODE_MT_walkJukeTurnFwdLft180>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Combat_WalkJuke_Left180" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkJukeTurnFwdLft180>
  <CODE_MT_runJukeTurnFwdRt180>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Combat_WalkJuke_Right180" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_runJukeTurnFwdRt180>
  <CODE_MT_walkJukeTurnFwdRt180>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Combat_WalkJuke_Right180" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkJukeTurnFwdRt180>
  <LookPoseHead>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="lookposes_combat_head_idle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </LookPoseHead>
  <PsiAttack>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_psiblast_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.98749995" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPsiAttackEvent">
      <ProceduralParams>
       <Projectile value="ArkProjectiles.AlienPowers.PhantomProjectile_Default"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </PsiAttack>
  <Fatality_Front_DualWrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Fatality_Phantom_Front_A_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.1999999" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.6" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer/>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Fatality_Front_A_DualWrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkAttachEntity">
      <ProceduralParams>
       <ScopeName value="SlaveChar"/>
       <BoneAttachmentName value="anchor"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.3" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.3" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_DualWrench>
  <LookAround>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.5"/>
       <SmoothTimeTorsomax value="1.2"/>
       <SmoothTimeHeadMin value="0.5"/>
       <SmoothTimeHeadMax value="1.2"/>
       <YawMinDeg value="10"/>
       <YawMaxDeg value="20"/>
       <TorsoYawMaxDeg value="2"/>
       <PitchMinDeg value="-10"/>
       <PitchMaxDeg value="10"/>
       <TorsoPitchMaxDeg value="2"/>
       <HoldTimeMin value="1"/>
       <HoldTimeMax value="3"/>
       <NumTurnsMin value="0"/>
       <NumTurnsMax value="0"/>
       <TimeBetweenLooksMin value="0.5"/>
       <TimeBetweenLooksMax value="2"/>
       <DbgName value="Look Around Clip"/>
       <Priority value="ambient"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </LookAround>
  <BreakGloo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_BreakGloo"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.32499999" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.26249999" StartTime="0" Duration="0"/>
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
     <Blend ExitTime="0.32499999" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkPuff_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachhand_lt"/>
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
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.39375001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.375" StartTime="0" Duration="5.9604645e-08"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkTrail_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachmidfinger_lt"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="180"/>
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
     <Blend ExitTime="0.34375" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </BreakGloo>
  <BreakOutOfGloo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_BreakOutOfGloo"/>
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
  <WanderIdle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="WanderIdle_A"/>
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
  </WanderIdle>
  <Lurk>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Lurk" flags="Loop"/>
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
     <Animation name="Combat_Lurk_B" flags="Loop"/>
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
  </Lurk>
  <PatrolIdle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_PatrolIdle_A"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Combat_PatrolIdle_C"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Combat_PatrolIdle_B"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="WanderIdle_A"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="WanderIdle_B"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="WanderIdle_C"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookAround_A"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookAt_High_A"/>
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
  </PatrolIdle>
  <MindJack_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Mindjack_In"/>
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
  </MindJack_In>
  <MindJack_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_MindJack_Out"/>
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
  </MindJack_Out>
  <Power_Shift_Attack>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="combat_shiftattack_in"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="-1"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Power_Shift_Attack>
  <Power_Shift_Attack_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Combat_ShiftAttack_Out"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.0016000271"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.75"/>
       <DoesHalfDamage value="true"/>
       <PlayerHitImpulse value="1000"/>
       <NpcHitImpulse value="1000"/>
       <OtherHitImpulse value="100"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.75"/>
       <DoesHalfDamage value="true"/>
       <PlayerHitImpulse value="1000"/>
       <NpcHitImpulse value="1000"/>
       <OtherHitImpulse value="100"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.90000004" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.90000004" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.025000006" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="1080"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.00021457672"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Power_Shift_Attack_Out>
  <Distractor_HitObject_Mid>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Distractor_HitObject_Mid_A"/>
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
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.25"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="100"/>
       <NpcHitImpulse value="100"/>
       <OtherHitImpulse value="150"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.0099999998"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Distractor_HitObject_Mid_B"/>
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
     <Blend ExitTime="1.9" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value=""/>
       <ValidHitRadius value="1"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="0"/>
       <NpcHitImpulse value="0"/>
       <OtherHitImpulse value="0"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.068750024" StartTime="0" Duration="0.0099999998"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Distractor_HitObject_Mid>
  <Distractor_HitObject_Low>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Distractor_HitObject_Low_A"/>
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
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.25"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="100"/>
       <NpcHitImpulse value="100"/>
       <OtherHitImpulse value="150"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.25" StartTime="0" Duration="0.0099999998"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_HitObject_Low_B"/>
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
     <Blend ExitTime="1.925" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttackEvent">
      <ProceduralParams>
       <AttachmentName value=""/>
       <ValidHitRadius value="1"/>
       <DoesHalfDamage value="false"/>
       <PlayerHitImpulse value="0"/>
       <NpcHitImpulse value="0"/>
       <OtherHitImpulse value="0"/>
       <DamageCooldown value="0"/>
       <SingleHitPerEntity value="true"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.10000014" StartTime="0" Duration="0.0099999998"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Distractor_HitObject_Low>
  <CODE_MT_walkJukeTurnFwdLft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Left90" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkJukeTurnFwdLft>
  <CODE_MT_walkJukeTurnFwdRgt>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Right90" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkJukeTurnFwdRgt>
  <Distractor_LookAround>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookAround_A"/>
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
  </Distractor_LookAround>
  <Fatality_Front_A_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_fatality_phantom_front_a_wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.00099202991"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.96666664" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0.30000001"/>
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
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="1.4901161e-08"/>
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
        <Element value="0"/>
        <Element value="0"/>
        <Element value="45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.4" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
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
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_A_Wrench>
  <Fatality_Front_B_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_fatality_phantom_front_a_wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.00099202991"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.96666664" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.42500001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchHitRightLeft"/>
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
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="1.4901161e-08"/>
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
        <Element value="0"/>
        <Element value="0"/>
        <Element value="45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.4" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
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
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_B_Wrench>
  <Fatality_Front_C_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_fatality_phantom_front_a_wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.00099202991"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.96666664" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.42500001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams>
       <ForceFeedbackID value="WrenchHitRightLeft"/>
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
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="1.4901161e-08"/>
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
        <Element value="0"/>
        <Element value="0"/>
        <Element value="45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.4" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
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
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_C_Wrench>
  <Melee_Vertical>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Idle_B"/>
     <Blend ExitTime="1.9333333" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_melee_front_b_add"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <AttachmentRadius value="0.80000001"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.42500001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkPuff_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachhand_lt"/>
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
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.76666665" StartTime="0" Duration="0.0050667524"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.57499999" StartTime="0" Duration="5.9604645e-08"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Phantom.Base.Melee.SwipeSmkTrail_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_attachmidfinger_lt"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="180"/>
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
     <Blend ExitTime="0.32499999" StartTime="0" Duration="0.00020134449"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_LeftHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.75000006" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.29999995" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="900"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.35000002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.25"/>
     <Procedural type="LookPose">
      <ProceduralParams>
       <Animation value="lookposes_spinetwist"/>
       <BlendTime value="0.25"/>
       <ScopeLayer value="14"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Melee_Vertical>
  <EMPLightningBallAttack>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_psiblast_a"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPsiAttackEvent">
      <ProceduralParams>
       <Projectile value="ArkProjectiles.AlienPowers.PhantomProjectile_EMP"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </EMPLightningBallAttack>
  <Fatality_Front_LR_A_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Fatality_Phantom_Front_LR_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.00099202991"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.0666667" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.96666664" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.14999998" StartTime="0" Duration="0.30000001"/>
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
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkAttachEntity">
      <ProceduralParams>
       <ScopeName value="SlaveChar"/>
       <BoneAttachmentName value="anchor"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.0333333" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="1.4901161e-08"/>
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
        <Element value="0"/>
        <Element value="0"/>
        <Element value="45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.4" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
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
     <Blend ExitTime="1.0333333" StartTime="0" Duration="0.30000001"/>
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
     <Animation name="1p_Fatality_Phantom_Front_LR_B_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.00099202991"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="1.1" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.96666664" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.125" StartTime="0" Duration="0.30000001"/>
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
     <Blend ExitTime="1.0666667" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="1.4901161e-08"/>
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
        <Element value="0"/>
        <Element value="0"/>
        <Element value="45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.4" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
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
     <Blend ExitTime="1.0666667" StartTime="0" Duration="0.30000001"/>
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
     <Animation name="1p_Fatality_Phantom_Front_RL_A_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.00099202991"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.96666664" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.34999999" StartTime="0" Duration="0.30000001"/>
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
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="1.4901161e-08"/>
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
        <Element value="0"/>
        <Element value="0"/>
        <Element value="45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.4" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
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
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_RL_A_Wrench>
  <Fatality_Front_RL_B_Wrench>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="slave+context_slave_player">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Fatality_Phantom_Front_RL_B_Wrench"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.00099202991"/>
     <Procedural type="ArkPlayerDisableMovement">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkPlayerCameraLock">
      <ProceduralParams/>
     </Procedural>
     <Blend ExitTime="0.96666664" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.30000001"/>
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
     <Blend ExitTime="0.94999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="1.4901161e-08"/>
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
        <Element value="0"/>
        <Element value="0"/>
        <Element value="45"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.4" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Trigger_Fatality"/>
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
     <Procedural type="ArkNpcStartFatalityDeath">
      <ProceduralParams/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Fatality_Front_RL_B_Wrench>
  <Lurk_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Lurk_Out"/>
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
  </Lurk_Out>
  <Lurk_Attack_A>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Animation name="Combat_Lurk_Attack_A"/>
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
     <Blend ExitTime="0.075000003" StartTime="0" Duration="9.5777214e-05"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <AttachmentRadius value="0.75"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.52500004" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.025000006" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="900"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.22499999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.0625" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="CombatMeleeHit_RightHand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.58749998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Lurk_Attack_A>
  <Distractor_InteractHazard_High>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_InteractHazard_High_A"/>
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
  </Distractor_InteractHazard_High>
  <Distractor_LookAt_High>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookAt_High_A"/>
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
  </Distractor_LookAt_High>
  <Distractor_LookAt_Mid>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookAt_Mid_A"/>
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
  </Distractor_LookAt_Mid>
  <Distractor_LookAt_Low>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookAt_Low_A"/>
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
  </Distractor_LookAt_Low>
  <Distractor_InteractHazard_Mid>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_InteractHazard_Mid_A"/>
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
  </Distractor_InteractHazard_Mid>
  <Distractor_InteractHazard_Low>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookAt_Low_A"/>
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
  </Distractor_InteractHazard_Low>
  <Distractor_LookUnderDesk>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookUnderDesk_A"/>
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
  </Distractor_LookUnderDesk>
  <Distractor_InvestigateHatch_High>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookAt_High_A"/>
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
  </Distractor_InvestigateHatch_High>
  <Distractor_InvestigateHatch_Low>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_InvestigateHatch_Low_A"/>
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
  </Distractor_InvestigateHatch_Low>
  <Distractor_SpeakerReact>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_SpeakerReact_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_SpeakerReact_B"/>
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
  </Distractor_SpeakerReact>
  <Distractor_LightReact>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LightReact_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LightReact_B"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LightReact_C"/>
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
  </Distractor_LightReact>
  <Distractor_InspectCorpse>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_InspectCorpse_A"/>
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
  </Distractor_InspectCorpse>
  <Distractor_InspectWindow_High>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookAt_High_A"/>
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
  </Distractor_InspectWindow_High>
  <Distractor_InspectWindow_Mid>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookAt_Mid_A"/>
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
  </Distractor_InspectWindow_Mid>
  <Distractor_InspectObject_High>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookAt_High_A"/>
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
  </Distractor_InspectObject_High>
  <Distractor_InspectObject_Mid>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_LookAt_Mid_A"/>
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
  </Distractor_InspectObject_Mid>
  <Distractor_InteractDoors_Mid>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_InteractDoors_Mid_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Distractor_InteractDoors_Mid_B"/>
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
  </Distractor_InteractDoors_Mid>
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
  <SolarFlareAttack>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Psiblast_Flare_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.79999995" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPsiAttackEvent">
      <ProceduralParams>
       <Projectile value="ArkProjectiles.AlienPowers.PhantomProjectile_SolarFlare"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="900"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.05" StartTime="0" Duration="0"/>
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
   </Fragment>
  </SolarFlareAttack>
  <Frenzy>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Frenzy"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="StartFrenzy"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Frenzy>
  <Jump_Start>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="combat_idle_a"/>
     <Blend ExitTime="1.3" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
   </Fragment>
  </Jump_Start>
  <Jump_InAir>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Combat_Fall" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Jump_InAir>
  <Jump_Land>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Land_Bump"/>
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
  </Jump_Land>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="" to="Melee">
   <Variant from="Combat" to="Combat">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.30000001" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Motion_Move" to="Motion_Move">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Melee" to="">
   <Variant from="Combat" to="Combat" fromFrag="Front">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.29999995" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Melee" to="Motion_Idle">
   <Variant from="Combat" to="Combat" fromFrag="Front">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.35000002" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.30000001" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Melee" to="Motion_Move">
   <Variant from="Combat" to="Combat" fromFrag="Front">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.39999998" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.40000001" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Melee" to="Motion_IdleTurn">
   <Variant from="Combat" to="Combat" fromFrag="Front">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.39999998" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.40000001" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Melee" to="Power_Shift">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="1.45" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Melee" to="Power_Shift_Attack">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="1.45" startTime="-0.48333335" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Power_Shift" to="Power_Shift">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Reaction_Death" to="">
   <Variant from="" to="" fromFrag="hit+Stagger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.5" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Power_Shift_Out" to="Motion_Move">
   <Variant from="" to="" fromFrag="Front">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0.34816" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="Left">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0.32296142" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="Right">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0.19660801" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Power_Shift_Out" to="Motion_IdleTurn">
   <Variant from="" to="" fromFrag="Front">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0.34816" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="Left">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0.32296142" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="Right">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0.19660801" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Power_Shift_Out" to="Power_Shift">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Power_Shift_Out" to="CODE_MT_idleToMove">
   <Variant from="" to="" fromFrag="Front">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0.34816" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="Left">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0.32296142" enterTime="0"/>
   </Variant>
   <Variant from="" to="" fromFrag="Right">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0.19660801" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Notice" to="">
   <Variant from="" to="InvestigateAnomaly" fromFrag="Front+Anomaly">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="noticed_anomaly_front_exittoinvestigate"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.20000005"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.33333325" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.33333325" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="InvestigateDanger" fromFrag="Front+Danger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Front_ExitToInvestigate"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="1.0666666" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="InvestigateVision" fromFrag="Front+Vision">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Front_ExitToInvestigate"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="1.0666666" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Relaxed" fromFrag="Front+Anomaly">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
      <Animation name="noticed_anomaly_front_exittoidle"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.33333325" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Relaxed" fromFrag="Front+Danger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Front_ExitToIdle"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="1.0666666" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Relaxed" fromFrag="Front+Vision">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Front_ExitToIdle"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="1.0666666" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="InvestigateAnomaly" fromFrag="Back+Anomaly">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Anomaly_Back_ExitToInvestigate"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.20000005"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="InvestigateDanger" fromFrag="Back+Danger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="noticed_danger_back_exittoinvestigate"/>
      <Blend ExitTime="0.23333335" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.23333335" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="InvestigateVision" fromFrag="Back+Vision">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="noticed_danger_back_exittoinvestigate"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Relaxed" fromFrag="Back+Anomaly">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Anomaly_Back_ExitToIdle"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Relaxed" fromFrag="Back+Danger">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="noticed_danger_back_exittoidle"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Relaxed" fromFrag="Back+Vision">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="noticed_danger_back_exittoidle"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="InvestigateAnomaly" fromFrag="Left+Anomaly">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Anomaly_Left_ExitToInvestigate"/>
      <Blend ExitTime="0.73333335" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.73333335" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="InvestigateDanger" fromFrag="Left+Danger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Left_ExitToInvestigate"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="InvestigateVision" fromFrag="Left+Vision">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Left_ExitToInvestigate"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Relaxed" fromFrag="Left+Anomaly">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Anomaly_Left_ExitToIdle"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.4000001" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Relaxed" fromFrag="Left+Danger">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Left_ExitToIdle"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Relaxed" fromFrag="Left+Vision">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Left_ExitToIdle"/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="InvestigateAnomaly" fromFrag="Right+Anomaly">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Anomaly_Right_ExitToInvestigate"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.73333335" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="InvestigateDanger" fromFrag="Right+Danger">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Right_ExitToInvestigate"/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="InvestigateVision" fromFrag="Right+Vision">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Right_ExitToInvestigate"/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Relaxed" fromFrag="Right+Anomaly">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Anomaly_Right_ExitToIdle"/>
      <Blend ExitTime="0.4000001" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.4000001" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Relaxed" fromFrag="Right+Danger">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Right_ExitToIdle"/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Relaxed" fromFrag="Right+Vision">
    <Fragment BlendOutDuration="0" Weight="1" Cooldown="5" selectTime="0" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Right_ExitToIdle"/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Combat" fromFrag="Front+Danger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-1.3" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Front_ExitToInvestigate" speed="1.5"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Combat" fromFrag="Front+Vision">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-1.3" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Front_ExitToInvestigate" speed="1.5"/>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Combat" fromFrag="Back+Danger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-1.3" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="noticed_danger_back_exittoinvestigate" speed="1.5"/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Combat" fromFrag="Back+Vision">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-1.3" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="noticed_danger_back_exittoinvestigate" speed="1.5"/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Combat" fromFrag="Left+Danger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-1.3" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Left_ExitToInvestigate" speed="1.5"/>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Combat" fromFrag="Left+Vision">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-1.3" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Left_ExitToInvestigate" speed="1.5"/>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.71111107" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Combat" fromFrag="Right+Danger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-1.3" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Right_ExitToInvestigate" speed="1.5"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Combat" fromFrag="Right+Vision">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-1.3" enterTime="0" flags="Outro">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="Noticed_Danger_Right_ExitToInvestigate" speed="1.5"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="MovementControlMethod">
       <ProceduralParams>
        <Horizontal value="3"/>
        <Vertical value="2"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0.66666675" StartTime="0" Duration="0.2" terminal="1"/>
     </ProcLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="Combat">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="-1" enterTime="0" flags="Cyclic"/>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_walkToIdle" to="Motion_Idle">
   <Variant from="Relaxed" to="Relaxed">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_runToIdle" to="Motion_Idle">
   <Variant from="Relaxed" to="Relaxed">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Dodge" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.25" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_runJukeTurnFwdLft180" to="Motion_Move">
   <Variant from="Relaxed" to="Relaxed">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.63" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="Combat" to="Combat">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.63" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="Hunt" to="Hunt">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.63" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="InvestigateAnomaly" to="InvestigateAnomaly">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.63" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="InvestigateDanger" to="InvestigateDanger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.63" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="InvestigateVision" to="InvestigateVision">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.63" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_walkJukeTurnFwdLft180" to="Motion_Move">
   <Variant from="Relaxed" to="Relaxed">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.75" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="Combat" to="Combat">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.75" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="Hunt" to="Hunt">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.75" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="InvestigateAnomaly" to="InvestigateAnomaly">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.75" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="InvestigateDanger" to="InvestigateDanger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.75" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="InvestigateVision" to="InvestigateVision">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.75" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_runJukeTurnFwdRt180" to="Motion_Move">
   <Variant from="Relaxed" to="Relaxed">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.30999994" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.30000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="Combat" to="Combat">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.30999994" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.30000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="Hunt" to="Hunt">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.30999994" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.30000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="InvestigateAnomaly" to="InvestigateAnomaly">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.30999994" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.30000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="InvestigateDanger" to="InvestigateDanger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.30999994" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.30000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="InvestigateVision" to="InvestigateVision">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.30999994" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.30000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_walkJukeTurnFwdRt180" to="Motion_Move">
   <Variant from="Relaxed" to="Relaxed">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.41" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.40000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="Combat" to="Combat">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.41" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.40000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="Hunt" to="Hunt">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.41" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.40000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="InvestigateAnomaly" to="InvestigateAnomaly">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.41" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.40000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="InvestigateDanger" to="InvestigateDanger">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.41" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.40000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="InvestigateVision" to="InvestigateVision">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" selectTime="0" startTime="-0.41" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.40000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Power_Shift_Attack_Out" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0"/>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>