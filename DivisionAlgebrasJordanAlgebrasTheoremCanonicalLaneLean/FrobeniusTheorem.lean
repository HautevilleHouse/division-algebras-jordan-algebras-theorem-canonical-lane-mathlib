import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean

structure FrobeniusTheoremPackage where
  divisionAlgebraOverReals : DivisionAlgebraStructure
  dimension : ℕ
  isFiniteDimensional : Fintype (DivisionAlgebraStructure.carrier divisionAlgebraOverReals)
  classification : Prop
  isomorphicToRealsOrComplexOrQuaternionsOrOctonions : Prop

structure FrobeniusTheoremEvidence (F : FrobeniusTheoremPackage) where
  finiteDimensionalClosed : Fintype (DivisionAlgebraStructure.carrier F.divisionAlgebraOverReals)
  classificationClosed : F.classification
  isomorphicClosed : F.isomorphicToRealsOrComplexOrQuaternionsOrOctonions

def FrobeniusTheoremClosed (F : FrobeniusTheoremPackage) : Prop :=
  Fintype (DivisionAlgebraStructure.carrier F.divisionAlgebraOverReals) ∧ F.classification ∧ F.isomorphicToRealsOrComplexOrQuaternionsOrOctonions

theorem frobenius_theorem_closed_from_evidence (F : FrobeniusTheoremPackage) (E : FrobeniusTheoremEvidence F) : FrobeniusTheoremClosed F := by
  exact And.intro E.finiteDimensionalClosed (And.intro E.classificationClosed E.isomorphicClosed)

end DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse