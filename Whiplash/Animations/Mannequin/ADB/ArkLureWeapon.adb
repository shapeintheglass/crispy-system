
<AnimDB FragDef="Animations/Mannequin/ADB/ArkPlayerFragments.xml" TagDef="Animations/Mannequin/ADB/ArkPlayerTags.xml">
 <SubADBs>
  <SubADB Tags="lure+forceFeedback" File="Animations/Mannequin/ADB/ArkLureFFEvent.adb"/>
 </SubADBs>
 <FragmentList>
  <Wpn_Reload>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="lure">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_Idle_Lure" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Reload>
  <Wpn_Reload_In>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="lure">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_Idle_Lure" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Reload_In>
  <Wpn_Reload_Out>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="lure">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_Idle_Lure" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Reload_Out>
  <Wpn_Select>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="lure">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="Wpn_1p_Select_Lure"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Select>
  <Wpn_PickUp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="lure">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="Wpn_1p_PickUp_Lure"/>
    </AnimLayer>
   </Fragment>
  </Wpn_PickUp>
  <Wpn_Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="lure">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_Idle_Lure" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Idle>
  <DisarmPlayer_Struggle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="lure+disarm">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.Grenade.Lure.Disarm.Disarm_Struggle_00"/>
       <JointName value=""/>
       <AttachmentName value="arklight_lure"/>
       <PosOffset>
        <Element value="-0.039999999"/>
        <Element value="0"/>
        <Element value="-0.064999998"/>
       </PosOffset>
       <RotOffset>
        <Element value="3.2"/>
        <Element value="0"/>
        <Element value="1.7"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </DisarmPlayer_Struggle>
  <DisarmPlayer_PlayerWin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="lure+disarm">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.Grenade.Lure.Disarm.Disarm_Win_00"/>
       <JointName value=""/>
       <AttachmentName value="arklight_lure"/>
       <PosOffset>
        <Element value="-0.039999999"/>
        <Element value="0"/>
        <Element value="-0.064999998"/>
       </PosOffset>
       <RotOffset>
        <Element value="3.2"/>
        <Element value="0"/>
        <Element value="1.7"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </DisarmPlayer_PlayerWin>
  <DisarmPlayer_PlayerFail>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="lure+disarm">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.Grenade.Lure.Disarm.Disarm_Fail_00"/>
       <JointName value=""/>
       <AttachmentName value="arklight_lure"/>
       <PosOffset>
        <Element value="-0.039999999"/>
        <Element value="0"/>
        <Element value="-0.064999998"/>
       </PosOffset>
       <RotOffset>
        <Element value="3.2"/>
        <Element value="0"/>
        <Element value="1.7"/>
       </RotOffset>
       <CloneAttachment value="false"/>
       <KillOnExit value="false"/>
       <KeepEmitterActive value="false"/>
       <IgnoreVisibilityCheck value="false"/>
       <UseUITime value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </DisarmPlayer_PlayerFail>
 </FragmentList>
</AnimDB>