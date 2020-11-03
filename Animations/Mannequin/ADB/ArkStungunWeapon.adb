
<AnimDB FragDef="Animations/Mannequin/ADB/ArkPlayerFragments.xml" TagDef="Animations/Mannequin/ADB/ArkPlayerTags.xml">
 <SubADBs>
  <SubADB Tags="stungun+forceFeedback" File="Animations/Mannequin/ADB/ArkStungunFFEvent.adb"/>
 </SubADBs>
 <FragmentList>
  <Wpn_Fire>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <ProcLayer/>
    <ProcLayer/>
   </Fragment>
  </Wpn_Fire>
  <Wpn_Reload>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_Reload_Stungun"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Reload>
  <Wpn_Unselect>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun+broken">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.StunGun.Malfuntion.Malfunction_00"/>
       <JointName value=""/>
       <AttachmentName value="malfuntion"/>
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
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Unselect>
  <Wpn_Malfunction>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.StunGun.Malfuntion.Malfunction_00"/>
       <JointName value=""/>
       <AttachmentName value="malfuntion"/>
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
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Malfunction>
  <Wpn_Emp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.StunGun.EMP.StunGun_Emp_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_electrical_all"/>
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
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_Emp>
  <Wpn_PickUp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_PickUp_Stungun"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="2.6624999" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.StunGun.FirstPickUp_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_electrical_all"/>
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
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Wpn_PickUp>
  <Wpn_Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="stungun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_Idle_Stungun" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Idle>
 </FragmentList>
</AnimDB>