import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean

structure JordanAlgebraAdmittedObject where
  jordanAlgebra : Type u
  addition : jordanAlgebra → jordanAlgebra → jordanAlgebra
  multiplication : jordanAlgebra → jordanAlgebra → jordanAlgebra
  zero : jordanAlgebra
  one : jordanAlgebra
  additiveGroup : AddGroup jordanAlgebra
  commutative : Prop
  jordanIdentity : Prop
  formallyReal : Prop
  finiteDimensional : Nat
  classificationConclusion : jordanAlgebra ≃ ℝ ⊕ ℂ ⊕ ℍ ⊕ 𝕆 ⊕ AlbertAlgebra

def JordanAlgebraWitnessClosed (O : JordanAlgebraAdmittedObject) : Prop :=
  O.classificationConclusion

end DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse