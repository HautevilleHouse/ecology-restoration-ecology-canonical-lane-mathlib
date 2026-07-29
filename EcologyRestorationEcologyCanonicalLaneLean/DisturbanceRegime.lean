import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure DisturbanceRegimePackage where
  disturbanceType : Prop
  frequency : Prop
  intensity : Prop
  spatialExtent : Prop
  interactions : Prop

structure DisturbanceRegimeEvidence (D : DisturbanceRegimePackage) where
  disturbanceTypeClosed : D.disturbanceType
  frequencyClosed : D.frequency
  intensityClosed : D.intensity
  spatialExtentClosed : D.spatialExtent
  interactionsClosed : D.interactions

def DisturbanceRegimeClosed (D : DisturbanceRegimePackage) : Prop :=
  D.disturbanceType ∧ D.frequency ∧ D.intensity ∧ D.spatialExtent ∧ D.interactions

theorem disturbance_regime_closed_from_evidence (D : DisturbanceRegimePackage) (E : DisturbanceRegimeEvidence D) :
    DisturbanceRegimeClosed D := by
  exact And.intro E.disturbanceTypeClosed (And.intro E.frequencyClosed (And.intro E.intensityClosed (And.intro E.spatialExtentClosed E.interactionsClosed)))

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse