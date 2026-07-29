import DivisionAlgebrasJordanAlgebrasTheorem.InnerProductAlgebra

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheorem

structure DivisionAlgebraClassificationPackage where
  real : Type
  complex : Type
  quaternion : Type
  octonion : Type
  realDivisionAlgebra : Prop
  complexDivisionAlgebra : Prop
  quaternionDivisionAlgebra : Prop
  octonionDivisionAlgebra : Prop
  classificationComplete : Prop
  exceptionalOnlyOctonions : Prop

structure DivisionAlgebraClassificationEvidence (P : DivisionAlgebraClassificationPackage) where
  realDivisionAlgebraClosed : P.realDivisionAlgebra
  complexDivisionAlgebraClosed : P.complexDivisionAlgebra
  quaternionDivisionAlgebraClosed : P.quaternionDivisionAlgebra
  octonionDivisionAlgebraClosed : P.octonionDivisionAlgebra
  classificationCompleteClosed : P.classificationComplete
  exceptionalOnlyOctonionsClosed : P.exceptionalOnlyOctonions

def DivisionAlgebraClassificationClosed (P : DivisionAlgebraClassificationPackage) : Prop :=
  P.realDivisionAlgebra ∧ P.complexDivisionAlgebra ∧ P.quaternionDivisionAlgebra ∧ P.octonionDivisionAlgebra ∧ P.classificationComplete ∧ P.exceptionalOnlyOctonions

theorem division_algebra_classification_closed_from_evidence (P : DivisionAlgebraClassificationPackage) (E : DivisionAlgebraClassificationEvidence P) : DivisionAlgebraClassificationClosed P := by
  exact And.intro E.realDivisionAlgebraClosed
    (And.intro E.complexDivisionAlgebraClosed
      (And.intro E.quaternionDivisionAlgebraClosed
        (And.intro E.octonionDivisionAlgebraClosed
          (And.intro E.classificationCompleteClosed E.exceptionalOnlyOctonionsClosed))))

end DivisionAlgebrasJordanAlgebrasTheorem
end HautevilleHouse