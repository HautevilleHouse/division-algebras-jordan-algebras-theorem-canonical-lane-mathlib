import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "division-algebras-jordan-algebras-canonical-lane",
    theoremName := "Division Algebras Jordan Algebras Theorem",
    theoremObject := "Every finite-dimensional division algebra over the reals is isomorphic to ℝ, ℂ, ℍ, or 𝕆",
    classicalBoundary := "unrestricted classical boundary",
    constrainedStatement := "constrained admissible-object closure via Jordan algebraic properties",
    certificateLane := "jordan_admissible",
    carriedRemainder := "classical source boundary remains outside the constrained closure"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "division-algebras-jordan-algebras-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "jordan_admissible" := by
  rfl

end DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse