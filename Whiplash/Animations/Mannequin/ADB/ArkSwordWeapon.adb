
<AnimDB FragDef="Animations/Mannequin/ADB/ArkPlayerFragments.xml" TagDef="Animations/Mannequin/ADB/ArkPlayerTags.xml">
 <SubADBs>
  <SubADB Tags="sword+forceFeedback" File="Animations/Mannequin/ADB/ArkSwordFFEvents.adb"/>
 </SubADBs>
 <FragmentList>
  <Wpn_Select>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="sword">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_Select_Sword"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Select>
  <Idle_Break>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="sword">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_IdleBreak_A_Sword"/>
    </AnimLayer>
   </Fragment>
  </Idle_Break>
  <Wpn_Melee_LeftRight>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="sword">
    <ProcLayer>
     <Blend ExitTime="0.1125" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.Wrench.WeaponTrail_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_trail"/>
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
  </Wpn_Melee_LeftRight>
  <Wpn_Melee_RightLeft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="sword">
    <ProcLayer>
     <Blend ExitTime="0.050000001" StartTime="0" Duration="0"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.Wrench.WeaponTrail_00"/>
       <JointName value=""/>
       <AttachmentName value="fx_trail"/>
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
  </Wpn_Melee_RightLeft>
  <Wpn_Melee_Out_LeftRight>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="sword">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_Melee_Out_LeftRight_A_Sword"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Melee_Out_LeftRight>
  <Wpn_Melee_Out_RightLeft>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="sword">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_Melee_Out_RightLeft_A_Sword"/>
    </AnimLayer>
   </Fragment>
  </Wpn_Melee_Out_RightLeft>
  <Wpn_PickUp>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="sword">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="Wpn_1p_PickUp_Sword"/>
    </AnimLayer>
   </Fragment>
  </Wpn_PickUp>
  <DisarmPlayer_Struggle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="sword+disarm">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.PsyCutter.Disarm.PsyCutter_Disarm_Struggle"/>
       <JointName value=""/>
       <AttachmentName value="fx_trail"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0.12"/>
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
  </DisarmPlayer_Struggle>
  <DisarmPlayer_PlayerWin>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="sword+disarm">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.PsyCutter.Disarm.PsyCutter_Disarm_Win"/>
       <JointName value=""/>
       <AttachmentName value="fx_trail"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0.12"/>
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
  </DisarmPlayer_PlayerWin>
  <DisarmPlayer_PlayerFail>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="sword+disarm">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="ParticleEffect">
      <ProceduralParams>
       <EffectName value="PlayerWeapons.PsyCutter.Disarm.PsyCutter_Disarm_Fail"/>
       <JointName value=""/>
       <AttachmentName value="fx_trail"/>
       <PosOffset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0.12"/>
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
  </DisarmPlayer_PlayerFail>
 </FragmentList>
</AnimDB>