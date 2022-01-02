
<AnimDB FragDef="Animations/Mannequin/ADB/Ai_Nightmare_FragmentIds.xml" TagDef="Animations/Mannequin/ADB/Ai_Nightmare_Tags.xml">
 <FragmentList>
  <Motion_Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="1D-BSpace_Crouch_Idle_A"/>
    </AnimLayer>
   </Fragment>
  </Motion_Idle>
  <Motion_Move>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Hunt+LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="3D-BSpace_Combat_StrafeTurnCrouch" flags="Loop" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.1"/>
       <SmoothTimeTorsomax value="0.12"/>
       <SmoothTimeHeadMin value="0.050000001"/>
       <SmoothTimeHeadMax value="0.050000001"/>
       <YawMinDeg value="10"/>
       <YawMaxDeg value="25"/>
       <TorsoYawMaxDeg value="10"/>
       <PitchMinDeg value="-40"/>
       <PitchMaxDeg value="25"/>
       <TorsoPitchMaxDeg value="5"/>
       <HoldTimeMin value="1"/>
       <HoldTimeMax value="2"/>
       <NumTurnsMin value="5"/>
       <NumTurnsMax value="10"/>
       <TimeBetweenLooksMin value="0.5"/>
       <TimeBetweenLooksMax value="3"/>
       <DbgName value="Hunt Clip"/>
       <Priority value="ambient"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateAnomaly+LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="3D-BSpace_Combat_StrafeTurnCrouch" flags="Loop" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.1"/>
       <SmoothTimeTorsomax value="0.12"/>
       <SmoothTimeHeadMin value="0.050000001"/>
       <SmoothTimeHeadMax value="0.050000001"/>
       <YawMinDeg value="10"/>
       <YawMaxDeg value="25"/>
       <TorsoYawMaxDeg value="10"/>
       <PitchMinDeg value="-40"/>
       <PitchMaxDeg value="25"/>
       <TorsoPitchMaxDeg value="5"/>
       <HoldTimeMin value="1"/>
       <HoldTimeMax value="2"/>
       <NumTurnsMin value="5"/>
       <NumTurnsMax value="10"/>
       <TimeBetweenLooksMin value="0.5"/>
       <TimeBetweenLooksMax value="3"/>
       <DbgName value="Investigate Anomaly Clip"/>
       <Priority value="ambient"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateDanger+LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="3D-BSpace_Combat_StrafeTurnCrouch" flags="Loop" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.1"/>
       <SmoothTimeTorsomax value="0.12"/>
       <SmoothTimeHeadMin value="0.050000001"/>
       <SmoothTimeHeadMax value="0.050000001"/>
       <YawMinDeg value="10"/>
       <YawMaxDeg value="25"/>
       <TorsoYawMaxDeg value="10"/>
       <PitchMinDeg value="-40"/>
       <PitchMaxDeg value="25"/>
       <TorsoPitchMaxDeg value="5"/>
       <HoldTimeMin value="1"/>
       <HoldTimeMax value="2"/>
       <NumTurnsMin value="5"/>
       <NumTurnsMax value="10"/>
       <TimeBetweenLooksMin value="0.5"/>
       <TimeBetweenLooksMax value="3"/>
       <DbgName value="Investigate Danger Clip"/>
       <Priority value="ambient"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateAnomaly">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="3D-BSpace_Combat_StrafeTurnCrouch" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.1"/>
       <SmoothTimeTorsomax value="0.12"/>
       <SmoothTimeHeadMin value="0.050000001"/>
       <SmoothTimeHeadMax value="0.050000001"/>
       <YawMinDeg value="10"/>
       <YawMaxDeg value="25"/>
       <TorsoYawMaxDeg value="10"/>
       <PitchMinDeg value="-40"/>
       <PitchMaxDeg value="25"/>
       <TorsoPitchMaxDeg value="5"/>
       <HoldTimeMin value="1"/>
       <HoldTimeMax value="2"/>
       <NumTurnsMin value="5"/>
       <NumTurnsMax value="10"/>
       <TimeBetweenLooksMin value="0.5"/>
       <TimeBetweenLooksMax value="3"/>
       <DbgName value="Investigate Anomaly Clip"/>
       <Priority value="ambient"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="InvestigateDanger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="3D-BSpace_Combat_StrafeTurnCrouch" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.1"/>
       <SmoothTimeTorsomax value="0.12"/>
       <SmoothTimeHeadMin value="0.050000001"/>
       <SmoothTimeHeadMax value="0.050000001"/>
       <YawMinDeg value="10"/>
       <YawMaxDeg value="25"/>
       <TorsoYawMaxDeg value="10"/>
       <PitchMinDeg value="-40"/>
       <PitchMaxDeg value="25"/>
       <TorsoPitchMaxDeg value="5"/>
       <HoldTimeMin value="1"/>
       <HoldTimeMax value="2"/>
       <NumTurnsMin value="5"/>
       <NumTurnsMax value="10"/>
       <TimeBetweenLooksMin value="0.5"/>
       <TimeBetweenLooksMax value="3"/>
       <DbgName value="Investigate Danger Clip"/>
       <Priority value="ambient"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="Hunt">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="3D-BSpace_Combat_StrafeTurnCrouch" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.1"/>
       <SmoothTimeTorsomax value="0.12"/>
       <SmoothTimeHeadMin value="0.050000001"/>
       <SmoothTimeHeadMax value="0.050000001"/>
       <YawMinDeg value="10"/>
       <YawMaxDeg value="25"/>
       <TorsoYawMaxDeg value="10"/>
       <PitchMinDeg value="-40"/>
       <PitchMaxDeg value="25"/>
       <TorsoPitchMaxDeg value="5"/>
       <HoldTimeMin value="1"/>
       <HoldTimeMax value="2"/>
       <NumTurnsMin value="5"/>
       <NumTurnsMax value="10"/>
       <TimeBetweenLooksMin value="0.5"/>
       <TimeBetweenLooksMax value="3"/>
       <DbgName value="Hunt Clip"/>
       <Priority value="ambient"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="3D-BSpace_Combat_StrafeTurnCrouch" flags="Loop" speed="0.75"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="3D-BSpace_Combat_StrafeTurnCrouch" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Motion_Move>
  <Motion_IdleTurn>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="2D-BSpace_Crouch_StepRot" speed="0.85000002"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="2D-BSpace_Crouch_StepRot"/>
    </AnimLayer>
   </Fragment>
  </Motion_IdleTurn>
  <Melee>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Short">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Melee_Front_Short_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_lefthand"/>
       <AttachmentRadius value="1.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.32499999" StartTime="0" Duration="0.0024399757"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="520"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.11250001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.30000007" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_lefthand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.49999994" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.4375" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216970333991"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Short">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Melee_Front_Short_B"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_righthand"/>
       <AttachmentRadius value="1.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_righthand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.4375" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216970333991"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Medium">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Melee_Front_Medium_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.20000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_lefthand"/>
       <AttachmentRadius value="1.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.24999997" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_righthand"/>
       <AttachmentRadius value="1.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.00023085624"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.12499999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_lefthand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_righthand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.32499999" StartTime="0" Duration="2.9802322e-008"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216970333991"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.0625" StartTime="0" Duration="0.062663257"/>
     <Procedural type=""/>
     <Blend ExitTime="0.14999992" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216970333991"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Front+Long">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Melee_Front_Long_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.41874999" StartTime="0" Duration="0.0024999976"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_lefthand"/>
       <AttachmentRadius value="1.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.16874999" StartTime="0" Duration="0.00063574314"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.315" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_righthand"/>
       <AttachmentRadius value="1.5"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.085000008" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.028124999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.109375" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.099999905" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_lefthand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.80000007" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_righthand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.79999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.315" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216970333991"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.10624999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216970333991"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Melee_Right_Medium_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_righthand"/>
       <AttachmentRadius value="1.55"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.14999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.44999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_lefthand"/>
       <AttachmentRadius value="1.55"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.22500002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.32499999" StartTime="0" Duration="0.0004683733"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.11250001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_lefthand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_righthand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.79999995" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.49374998" StartTime="0" Duration="0.064480066"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216970333991"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Melee_Left_Medium_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_righthand"/>
       <AttachmentRadius value="1.55"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.32499999" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.3125" StartTime="0" Duration="0.0024999976"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.050000012" StartTime="0" Duration="0"/>
     <Procedural type=""/>
     <Blend ExitTime="0.087499976" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="720"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.050000012" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.19999999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_righthand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.064480066"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216970333991"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="VeryShort">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_Stomp_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.42500001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeAttack">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_leftfoot"/>
       <AttachmentRadius value="4"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.46666667" StartTime="0" Duration="0"/>
     <Procedural type="ArkCameraShake">
      <ProceduralParams>
       <cameraShakeId value="3149325216970333991"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcPushObstaclesEvent">
      <ProceduralParams>
       <AttachmentName value=""/>
       <Impulse value="1"/>
       <ImpulseAddOnReattempt value="0"/>
       <Radius value="4"/>
       <RadiusAddOnReattempt value="0"/>
       <Falloff value="0.30000001"/>
      </ProceduralParams>
     </Procedural>
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
     <Blend ExitTime="0.17500001" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="520"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.29999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Melee>
  <LookPose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="lookposes_combat_torso_idle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </LookPose>
  <LookPoseHead>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="lookposes_combat_head_idle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </LookPoseHead>
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
  <LookAround>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcLookAround">
      <ProceduralParams>
       <SmoothTimeTorsoMin value="0.69999999"/>
       <SmoothTimeTorsomax value="1"/>
       <SmoothTimeHeadMin value="0.69999999"/>
       <SmoothTimeHeadMax value="1"/>
       <YawMinDeg value="30"/>
       <YawMaxDeg value="60"/>
       <TorsoYawMaxDeg value="-1"/>
       <PitchMinDeg value="0"/>
       <PitchMaxDeg value="10"/>
       <TorsoPitchMaxDeg value="-1"/>
       <HoldTimeMin value="0.1"/>
       <HoldTimeMax value="0.40000001"/>
       <NumTurnsMin value="2"/>
       <NumTurnsMax value="3"/>
       <TimeBetweenLooksMin value="4"/>
       <TimeBetweenLooksMax value="6"/>
       <DbgName value="Look Around Clip"/>
       <Priority value="ambient"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </LookAround>
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
  </BlendRagdoll>
  <Reaction_Death>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_MediumHit_Front_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_MediumHit_Left_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_MediumHit_Back_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Stagger">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_MediumHit_Right_A"/>
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
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_forward+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_smallhit_front"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_left+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_smallhit_left"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_right+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_smallhit_right"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="so_back+hit+Small">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_smallhit_back"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="LaserExplosion+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_EtherForm_In_NoMove"/>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.2"/>
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
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="MovementControlMethod">
      <ProceduralParams>
       <Horizontal value="3"/>
       <Vertical value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Death"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ActionEventOnExit">
      <ProceduralParams>
       <EventName value="StartDeathBlendToCorpse"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Reaction_Death>
  <CombatReaction>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Fear"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Nightmare_mvmt_DetectPlayer"/>
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
   </Fragment>
  </CombatReaction>
  <Stunned>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_Stunned_In"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Stunned" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="" FragTags="End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_Stunned_Out"/>
    </AnimLayer>
   </Fragment>
  </Stunned>
  <CODE_MT_walkToIdle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_WalkStop"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkToIdle>
  <CODE_MT_runToIdle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_RunStop"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_runToIdle>
  <BreakGloo>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Melee_Front_Short_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
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
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.32499999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="360"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.11250001" StartTime="0" Duration="0.0074999928"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.30000007" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_lefthand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.49999994" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </BreakGloo>
  <PushObstacle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Melee_Front_Short_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.30000001" StartTime="0" Duration="0.30000001"/>
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
     <Blend ExitTime="0.39999998" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.32499999" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcMeleeFacing">
      <ProceduralParams>
       <Speed value="fastest"/>
       <OverrideDegreesPerSecond value="360"/>
       <RelativeDesiredDegrees value="0"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.11250001" StartTime="0" Duration="0.0074999928"/>
     <Procedural type=""/>
    </ProcLayer>
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
     <Blend ExitTime="0.30000007" StartTime="0" Duration="0"/>
     <Procedural type="ArkNpcBreakGlassEvent">
      <ProceduralParams>
       <AttachmentName value="combatmeleehit_lefthand"/>
       <ValidHitRadius value="0.2"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.49999994" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </PushObstacle>
  <Taunt>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.34999999"/>
     <Animation name="1D-BSpace_Crouch_Fear" flags="FullRootPriority"/>
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
  </Taunt>
  <Fear>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.34999999"/>
     <Animation name="1D-BSpace_Crouch_Fear" flags="FullRootPriority"/>
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
  </Fear>
  <Door>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_MoveThroughDoor"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.55000001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Nightmare_Step_Crunch"/>
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
     <Blend ExitTime="0.22499999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Nightmare_Step_Crunch"/>
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
     <Blend ExitTime="0.22499999" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Nightmare_mvmt_moveThroughDoor"/>
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
     <Blend ExitTime="1.6" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Nightmare_mvmt_lowGrit"/>
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
  </Door>
  <CODE_MT_idleToRun>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_RunStart" flags="FullRootPriority" speed="0.85000002"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_RunStart" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_idleToRun>
  <PsiAttack>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.34999999"/>
     <Animation name="1D-BSpace_Crouch_PsiAttack_A" flags="FullRootPriority" speed="0.75"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.25" StartTime="0" Duration="0.10399985"/>
     <Procedural type="ArkNpcPsiAttackEvent">
      <ProceduralParams>
       <Projectile value="ArkProjectiles.AlienPowers.NightmareProjectile"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.075000048" StartTime="0" Duration="0.10399985"/>
     <Procedural type=""/>
     <Blend ExitTime="0.42499995" StartTime="0" Duration="0.10399985"/>
     <Procedural type="ArkNpcPsiAttackEvent">
      <ProceduralParams>
       <Projectile value="ArkProjectiles.AlienPowers.NightmareProjectile"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.075000048" StartTime="0" Duration="0.10399985"/>
     <Procedural type=""/>
     <Blend ExitTime="0.42499995" StartTime="0" Duration="0.10399985"/>
     <Procedural type="ArkNpcPsiAttackEvent">
      <ProceduralParams>
       <Projectile value="ArkProjectiles.AlienPowers.NightmareProjectile"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.075000048" StartTime="0" Duration="0.10399985"/>
     <Procedural type=""/>
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
  </PsiAttack>
  <CODE_MT_idleToWalk2mLeft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_WalkStart_2m_Left" flags="FullRootPriority" speed="0.85000002"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_WalkStart_2m_Left" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_idleToWalk2mLeft>
  <CODE_MT_walkJukeTurnFwdLft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Left90" flags="FullRootPriority" speed="0.75"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Left90" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkJukeTurnFwdLft>
  <CODE_MT_runJukeTurnFwdLft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Left90" flags="FullRootPriority" speed="0.75"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Left90" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_runJukeTurnFwdLft>
  <CODE_MT_walkJukeTurnFwdRgt>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Right90" flags="FullRootPriority" speed="0.75"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Right90" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkJukeTurnFwdRgt>
  <CODE_MT_runJukeTurnFwdRgt>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Right90" flags="FullRootPriority" speed="0.75"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_WalkJuke_Right90" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_runJukeTurnFwdRgt>
  <CODE_MT_walkJukeTurnFwdLft180>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Combat_WalkJuke_Left180" flags="FullRootPriority" speed="0.75"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Combat_WalkJuke_Left180" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkJukeTurnFwdLft180>
  <CODE_MT_walkJukeTurnFwdRgt180>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Combat_WalkJuke_Left180" flags="FullRootPriority" speed="0.75"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.5"/>
     <Animation name="Combat_WalkJuke_Left180" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkJukeTurnFwdRgt180>
  <Dissipate>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="combat_detect_player"/>
     <Blend ExitTime="1.35" StartTime="0" Duration="0.39999998"/>
     <Animation name="combat_etherform_in_nomove"/>
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
     <Blend ExitTime="0.85000002" StartTime="0" Duration="0"/>
     <Procedural type="ArkFadeEvent">
      <ProceduralParams>
       <FadeSlot value="0"/>
       <FadeDuration value="1.5"/>
       <FadeOut value="true"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="Play_Nightmare_mvmt_DetectPlayer"/>
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
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Nightmare.EtherForm.EtherBody_Disappear"/>
       <JointName value="head_jnt"/>
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
       <CloneAttachment value="true"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="true"/>
       <IgnoreVisibilityCheck value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.2" StartTime="0" Duration="0.15000165"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Nightmare.EtherForm.EtherBody_Disappear"/>
       <JointName value=""/>
       <AttachmentName value="psitarget_attachment"/>
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
       <KeepEmitterActive value="true"/>
       <IgnoreVisibilityCheck value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.2" StartTime="0" Duration="0.15000379"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.70000005" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="Characters.Aliens.Nightmare.EtherForm.NightmareDissapearTransitionBase"/>
       <JointName value=""/>
       <AttachmentName value=""/>
       <PosOffset>
        <Element value="0"/>
        <Element value="3"/>
        <Element value="0"/>
       </PosOffset>
       <RotOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="true"/>
       <IgnoreVisibilityCheck value="false"/>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="4.3000002" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Dissipate>
  <ForceResist>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_In"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Back+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_In"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_In"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_In"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Loop" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Back+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Loop" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Loop" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Loop" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Back+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Out"/>
    </AnimLayer>
   </Fragment>
  </ForceResist>
  <CODE_MT_idleToWalkStrafe>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_StrafeStart_2m" flags="FullRootPriority" speed="0.85000002"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_StrafeStart_2m" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_idleToWalkStrafe>
  <CODE_MT_idleToWalk4mLeft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_WalkStart_4m_Left" flags="FullRootPriority" speed="0.85000002"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_WalkStart_4m_Left" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_idleToWalk4mLeft>
  <CODE_MT_idleToWalk2mRight>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_WalkStart_2m_Right" flags="FullRootPriority" speed="0.85000002"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_WalkStart_2m_Right" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_idleToWalk2mRight>
  <CODE_MT_idleToWalk4mRight>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="LowG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_WalkStart_4m_Right" flags="FullRootPriority" speed="0.85000002"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="2D-BSpace_Crouch_WalkStart_4m_Right" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_idleToWalk4mRight>
  <CODE_MT_walkToIdleStrafe2m>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="3D-BSpace_Crouch_StrafeStop_2m"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkToIdleStrafe2m>
  <ForceResistScrunch>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_In"/>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Death_Front"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Back+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_In"/>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Death_Back"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_In"/>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Death_Left"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right+Start">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_In"/>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.1"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Death_Right"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_DeathIdle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Back+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_DeathIdle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_DeathIdle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right+Middle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_DeathIdle" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Front+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Back+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Left+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Out"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="" FragTags="Right+End">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_ForceResist_Out"/>
    </AnimLayer>
   </Fragment>
  </ForceResistScrunch>
  <Fall>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Idle_A" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Fall>
  <Land_Bump>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Idle_A" flags="Loop"/>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
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
   </Fragment>
  </Land_Bump>
  <Land_Stumble>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1D-BSpace_Crouch_Idle_A" flags="Loop"/>
     <Blend ExitTime="0.2" StartTime="0" Duration="0.2"/>
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
   </Fragment>
  </Land_Stumble>
  <Power_Throw>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="5" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.34999999"/>
     <Animation name="1D-BSpace_Crouch_Stomp_A" flags="FullRootPriority"/>
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
  </Power_Throw>
  <Burrow>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_EtherForm_In"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ActionEventOnExit">
      <ProceduralParams>
       <EventName value="FinishedBurrowing"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Burrow>
  <Unburrow>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_EtherForm_Out"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="UnburrowingEmerge"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ActionEventOnExit">
      <ProceduralParams>
       <EventName value="FinishedUnburrowing"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="SpawnRocks"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Unburrow>
  <GroundSlam>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Combat_Stomp_A"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0"/>
     <Procedural type="ActionEvent">
      <ProceduralParams>
       <EventName value="StartGroundSlam"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </GroundSlam>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="Motion_Move" to="Motion_Idle">
   <Variant from="LowG" to="LowG">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.34999999" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Motion_Move" to="Motion_IdleTurn">
   <Variant from="LowG" to="LowG">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.5" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.34999999" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Motion_Move" to="CODE_MT_walkToIdle">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0.1500001" StartTime="0" Duration="0.40000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Motion_Move" to="CODE_MT_runToIdle">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0.099999905" StartTime="0" Duration="0.40000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Motion_Move" to="CODE_MT_walkJukeTurnFwdLft180">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Motion_Move" to="CODE_MT_walkJukeTurnFwdRgt180">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Motion_Move" to="CODE_MT_walkToIdleStrafe2m">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0.1" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Motion_IdleTurn" to="Motion_IdleTurn">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_walkToIdle" to="Motion_Idle">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.30000001" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_runToIdle" to="Motion_Idle">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.29999995" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Door" to="Motion_Move">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="2.191" startTime="-0.15333343" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Door" to="Motion_IdleTurn">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="2.1900001" startTime="-0.14333344" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="Door" to="CODE_MT_idleToRun">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="2.1900001" startTime="-0.1419735" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="Door" to="CODE_MT_idleToWalk2mLeft">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="2.1900001" startTime="-0.14709353" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_idleToRun" to="Motion_Move">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.41000009" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.40000001" flags="TimeWarping" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_idleToWalk2mLeft" to="Motion_Move">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0.1" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_walkJukeTurnFwdLft180" to="Motion_Move">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.10000002" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_walkJukeTurnFwdRgt180" to="Motion_Move">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.10000002" enterTime="0"/>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_idleToWalk4mLeft" to="Motion_Move">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0.1" Duration="0.20000005" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_idleToWalk2mRight" to="Motion_Move">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.055793762" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0.94999999" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_idleToWalk4mRight" to="Motion_Move">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.11999989" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0.94999999" Duration="0.17000008" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="CODE_MT_walkToIdleStrafe2m" to="Motion_Idle">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" selectTime="0" startTime="-0.30000007" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>