import DivisionAlgebrasJordanAlgebrasTheorem.TheoremStatement

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheorem

structure AdmittedObject where
  algebraType : Type
  isDivisionAlgebra : Prop
  isJordanAlgebra : Prop
  classificationConclusion : Prop
  conclusion : classificationConclusion

def DivisionAlgebraWitnessClosed (O : AdmittedObject) : Prop :=
  O.classificationConclusion

end DivisionAlgebrasJordanAlgebrasTheorem
end HautevilleHouse