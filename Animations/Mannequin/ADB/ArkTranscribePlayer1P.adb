
<AnimDB FragDef="Animations/Mannequin/ADB/ArkPlayerFragments.xml" TagDef="Animations/Mannequin/ADB/ArkPlayerTags.xml">
 <SubADBs>
  <SubADB Tags="transcribe+forceFeedback" File="Animations/Mannequin/ADB/ArkTranscribeFFEvent.adb"/>
 </SubADBs>
 <FragmentList>
  <Pose_IdlePose>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="transcribe">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="IdlePoses_1p_Transcribe" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Pose_IdlePose>
  <Idle>
   <Fragment BlendOutDuration="0.2" Weight="1" Cooldown="0" Tags="transcribe">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="1p_Idle_Transcribe" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Idle>
 </FragmentList>
</AnimDB>