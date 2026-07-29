import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyRestorationEcologyCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  restorationConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "ecology-restoration-ecology-canonical-lane"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := "Ecology Restoration Ecology",
    classicalBoundary := "unrestricted classical boundary carried outside",
    restorationConstrainedStatement := "restoration-constrained theorem certificate internalized through ecological closure",
    certificateLane := "restoration_constrained",
    carriedRemainder := "classical source boundary remains open"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

end EcologyRestorationEcologyCanonicalLaneLean
end HautevilleHouse
