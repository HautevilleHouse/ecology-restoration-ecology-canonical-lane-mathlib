import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure DisturbanceRegime (T : Type) where
  fireInterval : T -> Prop
  floodFrequency : T -> Prop
  grazingIntensity : T -> Prop

structure DisturbanceRegimeEvidence (T : Type) (R : DisturbanceRegime T) where
  fireIntervalClosed : R.fireInterval
  floodFrequencyClosed : R.floodFrequency
  grazingIntensityClosed : R.grazingIntensity

def DisturbanceRegimeClosed (T : Type) (R : DisturbanceRegime T) : Prop :=
  R.fireInterval ∧ R.floodFrequency ∧ R.grazingIntensity

theorem disturbance_regime_closed_from_evidence (T : Type) (R : DisturbanceRegime T) (E : DisturbanceRegimeEvidence T R) : DisturbanceRegimeClosed T R := by
  exact And.intro E.fireIntervalClosed (And.intro E.floodFrequencyClosed E.grazingIntensityClosed)

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse
