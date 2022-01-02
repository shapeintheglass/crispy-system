Script.ReloadScript("SCRIPTS/Entities/AI/Shared/AIBase.lua")
ArkMimicElite_x = {
  AIMovementAbility = {
    walkSpeed = 5,
    runSpeed = 8,
    sprintSpeed = 12.5,
    maneuverSpeed = 5,
    maxAccel = 40,
    maxDecel = 50,
    pushableObstacleWeakAvoidance = true,
    obstacleAvoidanceMaxPathDeviation = 5,
    ignoreMinimumMassObstaclesAtHighUrgency = 0,
    ignoreMinimumMassObstaclesAtLowUrgency = 0,
    pushableObstacleAvoidanceRadiusMin = 0.15,
    pushableObstacleAvoidanceRadiusMax = 0.35,
    avoidanceRadius = 2,
    collisionAvoidanceRadiusIncrement = 0.01,
    pushableObstacleMassMin = 5,
    pushableObstacleMassMax = 80,
    pushableObstacleHeightMin = 0.25,
    pushableObstacleHeightMax = 1,
    AIMovementSpeeds = {
      Relaxed = {
        Slow = {
          4,
          0,
          4
        },
        Walk = {
          8.5,
          0,
          8.5
        },
        Run = {
          12.5,
          0,
          12.5
        },
        Sprint = {
          12.5,
          0,
          12.5
        }
      },
      Alerted = {
        Slow = {
          4,
          0,
          4
        },
        Walk = {
          8.5,
          0,
          8.5
        },
        Run = {
          12.5,
          0,
          12.5
        },
        Sprint = {
          12.5,
          0,
          12.5
        }
      },
      Combat = {
        Slow = {
          4,
          0,
          4
        },
        Walk = {
          8.5,
          0,
          8.5
        },
        Run = {
          12.5,
          0,
          12.5
        },
        Sprint = {
          12.5,
          0,
          12.5
        }
      }
    }
  }
}
mergef(ArkMimicElite_x, AIBase, 1)
function ArkMimicElite_x.Server.OnStartGame(A0_1686)
  if not A0_1686.arknpc:IsDead() then
    if A0_1686.arknpc:HasArkMetaTag("9469288860566207151") then
      A0_1686.arknpc:AttachGameEffect(4500)
    end
    if A0_1686.arknpc:HasArkMetaTag("9469288860566207169") then
      A0_1686.arknpc:AttachGameEffect(4511)
    end
  end
end
function ArkMimicElite_x.OnNpcKilled(A0_1687)
  if A0_1687.arknpc:HasArkMetaTag("9469288860566207151") then
    A0_1687.arknpc:DetachGameEffect(4500)
  end
  if A0_1687.arknpc:HasArkMetaTag("9469288860566207169") then
    A0_1687.arknpc:DetachGameEffect(4511)
  end
  A0_1687:SetupInventoryOnDeath()
end
