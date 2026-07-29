import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure RestorationSite where
  carrier : Type
  topology : TopologicalSpace carrier

structure RestorationAdmittedObject where
  site : RestorationSite
  ecosystemDegraded : Prop
  restorationEndpoint : Prop
  carriedRemainder : Prop
  conclusion : restorationEndpoint

def RestorationWitnessClosed (O : RestorationAdmittedObject) : Prop :=
  O.restorationEndpoint

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse
