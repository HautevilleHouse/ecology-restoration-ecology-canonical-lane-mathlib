import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure ReferenceEcosystem where
  ecosystemType : String
  speciesRichness : Nat
  biomassDensity : Float
  disturbanceRegime : String
  resilienceScore : Float

structure ReferenceEcosystemEvidence (R : ReferenceEcosystem) where
  ecosystemTypeClosed : R.ecosystemType = "temperate forest"
  speciesRichnessClosed : R.speciesRichness ≥ 50
  biomassDensityClosed : R.biomassDensity > 0.0
  disturbanceRegimeClosed : R.disturbanceRegime ∈ ["fire", "flood", "drought"]
  resilienceScoreClosed : R.resilienceScore ≥ 0.8

def ReferenceEcosystemClosed (R : ReferenceEcosystem) : Prop :=
  R.ecosystemType = "temperate forest" ∧
  R.speciesRichness ≥ 50 ∧
  R.biomassDensity > 0.0 ∧
  R.disturbanceRegime ∈ ["fire", "flood", "drought"] ∧
  R.resilienceScore ≥ 0.8

theorem reference_ecosystem_closed_from_evidence
    (R : ReferenceEcosystem) (E : ReferenceEcosystemEvidence R) :
    ReferenceEcosystemClosed R := by
  exact And.intro E.ecosystemTypeClosed
    (And.intro E.speciesRichnessClosed
      (And.intro E.biomassDensityClosed
        (And.intro E.disturbanceRegimeClosed E.resilienceScoreClosed)))

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse