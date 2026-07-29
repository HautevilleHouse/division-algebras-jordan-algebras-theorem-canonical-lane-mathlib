import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean

def ConstrainedDivisionAlgebrasJordanAlgebrasClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_division_algebras_jordan_algebras_endgame (A : AdmissibleClass) :
    ConstrainedDivisionAlgebrasJordanAlgebrasClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse