import DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean.MathlibObjects

/-!
# Jacobson Theorem Package
-/

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean

structure JacobsonTheoremPackage where
  algebra : DivisionAlgebra
  powerAssociative : Prop
  divisionAlgebra : Prop
  characteristicNeTwo : Prop
  JordanIdentityHolds : Prop

structure JacobsonTheoremEvidence (J : JacobsonTheoremPackage) where
  powerAssociativeClosed : J.powerAssociative
  divisionAlgebraClosed : J.divisionAlgebra
  characteristicNeTwoClosed : J.characteristicNeTwo
  jordanIdentityHoldsClosed : J.jordanIdentityHolds

def JacobsonTheoremClosed (J : JacobsonTheoremPackage) : Prop :=
  J.powerAssociative ∧ J.divisionAlgebra ∧ J.characteristicNeTwo ∧ J.jordanIdentityHolds

theorem jacobson_theorem_closed_from_evidence (J : JacobsonTheoremPackage) (E : JacobsonTheoremEvidence J) : JacobsonTheoremClosed J := by
  exact And.intro E.powerAssociativeClosed (And.intro E.divisionAlgebraClosed (And.intro E.characteristicNeTwoClosed E.jordanIdentityHoldsClosed))

end DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse