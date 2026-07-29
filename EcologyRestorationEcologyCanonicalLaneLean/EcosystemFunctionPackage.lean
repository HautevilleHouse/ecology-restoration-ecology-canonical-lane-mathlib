import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure EcosystemFunctionPackage where
  nutrientCycling : Prop
  energyFlow : Prop
  waterRegulation : Prop

structure EcosystemFunctionEvidence (E : EcosystemFunctionPackage) where
  nutrientCyclingClosed : E.nutrientCycling
  energyFlowClosed : E.energyFlow
  waterRegulationClosed : E.waterRegulation

def EcosystemFunctionClosed (E : EcosystemFunctionPackage) : Prop :=
  E.nutrientCycling ∧ E.energyFlow ∧ E.waterRegulation

theorem ecosystem_function_closed_from_evidence (E : EcosystemFunctionPackage) (Ev : EcosystemFunctionEvidence E) : EcosystemFunctionClosed E := by
  exact And.intro Ev.nutrientCyclingClosed (And.intro Ev.energyFlowClosed Ev.waterRegulationClosed)

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse
