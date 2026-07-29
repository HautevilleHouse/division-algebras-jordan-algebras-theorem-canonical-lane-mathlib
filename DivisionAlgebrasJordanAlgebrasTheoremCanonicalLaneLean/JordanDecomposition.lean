import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean

structure JordanDecompositionPackage where
  jordanAlgebra : JordanAlgebraStructure
  element : JordanAlgebraStructure.carrier jordanAlgebra
  spectralDecomposition : Prop
  idempotents : List (JordanAlgebraStructure.carrier jordanAlgebra)
  pairwiseOrthogonal : ∀ e1 e2, e1 ∈ idempotents → e2 ∈ idempotents → e1 ≠ e2 → JordanAlgebraStructure.multiplication jordanAlgebra e1 e2 = JordanAlgebraStructure.zero jordanAlgebra
  sumOfIdempotents : JordanAlgebraStructure.multiplication jordanAlgebra (List.foldr (JordanAlgebraStructure.addition jordanAlgebra) (JordanAlgebraStructure.zero jordanAlgebra) idempotents) element = element

structure JordanDecompositionEvidence (J : JordanDecompositionPackage) where
  spectralDecompositionClosed : J.spectralDecomposition
  pairwiseOrthogonalClosed : ∀ e1 e2, e1 ∈ J.idempotents → e2 ∈ J.idempotents → e1 ≠ e2 → JordanAlgebraStructure.multiplication J.jordanAlgebra e1 e2 = JordanAlgebraStructure.zero J.jordanAlgebra
  sumOfIdempotentsClosed : JordanAlgebraStructure.multiplication J.jordanAlgebra (List.foldr (JordanAlgebraStructure.addition J.jordanAlgebra) (JordanAlgebraStructure.zero J.jordanAlgebra) J.idempotents) J.element = J.element

def JordanDecompositionClosed (J : JordanDecompositionPackage) : Prop :=
  J.spectralDecomposition ∧ (∀ e1 e2, e1 ∈ J.idempotents → e2 ∈ J.idempotents → e1 ≠ e2 → JordanAlgebraStructure.multiplication J.jordanAlgebra e1 e2 = JordanAlgebraStructure.zero J.jordanAlgebra) ∧ JordanAlgebraStructure.multiplication J.jordanAlgebra (List.foldr (JordanAlgebraStructure.addition J.jordanAlgebra) (JordanAlgebraStructure.zero J.jordanAlgebra) J.idempotents) J.element = J.element

theorem jordan_decomposition_closed_from_evidence (J : JordanDecompositionPackage) (E : JordanDecompositionEvidence J) : JordanDecompositionClosed J := by
  exact And.intro E.spectralDecompositionClosed (And.intro E.pairwiseOrthogonalClosed E.sumOfIdempotentsClosed)

end DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse