import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure EcosystemFunctionPackage where
  nutrientCycling : Prop
  energyFlow : Prop
  habitatProvision : Prop
  resilience : Prop
  diversity : Prop

structure EcosystemFunctionEvidence (E : EcosystemFunctionPackage) where
  nutrientCyclingClosed : E.nutrientCycling
  energyFlowClosed : E.energyFlow
  habitatProvisionClosed : E.habitatProvision
  resilienceClosed : E.resilience
  diversityClosed : E.diversity

def EcosystemFunctionClosed (E : EcosystemFunctionPackage) : Prop :=
  E.nutrientCycling ∧ E.energyFlow ∧ E.habitatProvision ∧ E.resilience ∧ E.diversity

theorem ecosystem_function_closed_from_evidence (E : EcosystemFunctionPackage) (Ev : EcosystemFunctionEvidence E) :
    EcosystemFunctionClosed E := by
  exact And.intro Ev.nutrientCyclingClosed (And.intro Ev.energyFlowClosed (And.intro Ev.habitatProvisionClosed (And.intro Ev.resilienceClosed Ev.diversityClosed)))

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse