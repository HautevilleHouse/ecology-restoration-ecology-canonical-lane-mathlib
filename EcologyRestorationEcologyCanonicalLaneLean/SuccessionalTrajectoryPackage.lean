import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure SuccessionalTrajectoryPackage where
  initialConditions : Prop
  disturbanceRegime : Prop
  dispersalLimitation : Prop
  competitiveDynamics : Prop
  alternativeStableStates : Prop

structure SuccessionalTrajectoryEvidence (S : SuccessionalTrajectoryPackage) where
  initialConditionsClosed : S.initialConditions
  disturbanceRegimeClosed : S.disturbanceRegime
  dispersalLimitationClosed : S.dispersalLimitation
  competitiveDynamicsClosed : S.competitiveDynamics
  alternativeStableStatesClosed : S.alternativeStableStates

def SuccessionalTrajectoryClosed (S : SuccessionalTrajectoryPackage) : Prop :=
  S.initialConditions ∧ S.disturbanceRegime ∧
  S.dispersalLimitation ∧ S.competitiveDynamics ∧
  S.alternativeStableStates

theorem successional_trajectory_closed_from_evidence
    (S : SuccessionalTrajectoryPackage) (Ev : SuccessionalTrajectoryEvidence S) :
    SuccessionalTrajectoryClosed S := by
  exact And.intro Ev.initialConditionsClosed
    (And.intro Ev.disturbanceRegimeClosed
      (And.intro Ev.dispersalLimitationClosed
        (And.intro Ev.competitiveDynamicsClosed Ev.alternativeStableStatesClosed)))

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse