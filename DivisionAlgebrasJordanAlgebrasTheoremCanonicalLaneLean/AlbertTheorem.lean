import DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean.MathlibObjects

/-!
# Albert Theorem Package
-/

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean

structure AlbertTheoremPackage where
  finiteDivisionAlgebra : DivisionAlgebra
  finiteField : Prop
  isField : Prop

structure AlbertTheoremEvidence (A : AlbertTheoremPackage) where
  finiteFieldClosed : A.finiteField
  isFieldClosed : A.isField

def AlbertTheoremClosed (A : AlbertTheoremPackage) : Prop :=
  A.finiteField ∧ A.isField

theorem albert_theorem_closed_from_evidence (A : AlbertTheoremPackage) (E : AlbertTheoremEvidence A) : AlbertTheoremClosed A := by
  exact And.intro E.finiteFieldClosed E.isFieldClosed

end DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse