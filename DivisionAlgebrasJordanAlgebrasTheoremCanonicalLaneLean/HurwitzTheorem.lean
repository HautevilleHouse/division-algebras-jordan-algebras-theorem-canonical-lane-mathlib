import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean

structure HurwitzTheoremPackage where
  normedDivisionAlgebra : Type u
  dimension : Nat
  compositionLawHolds : Prop
  possibleDimensions : dimension = 1 ∨ dimension = 2 ∨ dimension = 4 ∨ dimension = 8

structure HurwitzTheoremEvidence (H : HurwitzTheoremPackage) where
  compositionLawClosed : H.compositionLawHolds
  possibleDimensionsClosed : H.possibleDimensions

def HurwitzTheoremClosed (H : HurwitzTheoremPackage) : Prop :=
  H.compositionLawHolds ∧ H.possibleDimensions

theorem hurwitz_theorem_closed_from_evidence (H : HurwitzTheoremPackage)
    (E : HurwitzTheoremEvidence H) : HurwitzTheoremClosed H := by
  exact And.intro E.compositionLawClosed E.possibleDimensionsClosed

end DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse