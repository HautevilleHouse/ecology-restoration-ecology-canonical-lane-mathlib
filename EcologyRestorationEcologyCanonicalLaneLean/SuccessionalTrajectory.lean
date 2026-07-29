import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure SuccessionalTrajectory where
  initialSpecies : List String
  targetSpecies : List String
  disturbanceRegime : String
  soilCondition : String
  trajectoryDuration : Nat
  recoveryRate : Float

structure SuccessionalTrajectoryEvidence (S : SuccessionalTrajectory) where
  initialSpeciesClosed : S.initialSpecies.length ≥ 5
  targetSpeciesClosed : S.targetSpecies.length ≥ 10
  disturbanceRegimeClosed : S.disturbanceRegime ∈ ["fire", "flood", "drought"]
  soilConditionClosed : S.soilCondition ∈ ["loam", "silt", "sand"]
  trajectoryDurationClosed : S.trajectoryDuration ≤ 100
  recoveryRateClosed : S.recoveryRate > 0.5

def SuccessionalTrajectoryClosed (S : SuccessionalTrajectory) : Prop :=
  S.initialSpecies.length ≥ 5 ∧
  S.targetSpecies.length ≥ 10 ∧
  S.disturbanceRegime ∈ ["fire", "flood", "drought"] ∧
  S.soilCondition ∈ ["loam", "silt", "sand"] ∧
  S.trajectoryDuration ≤ 100 ∧
  S.recoveryRate > 0.5

theorem successional_trajectory_closed_from_evidence
    (S : SuccessionalTrajectory) (E : SuccessionalTrajectoryEvidence S) :
    SuccessionalTrajectoryClosed S := by
  exact And.intro E.initialSpeciesClosed
    (And.intro E.targetSpeciesClosed
      (And.intro E.disturbanceRegimeClosed
        (And.intro E.soilConditionClosed
          (And.intro E.trajectoryDurationClosed E.recoveryRateClosed))))

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse