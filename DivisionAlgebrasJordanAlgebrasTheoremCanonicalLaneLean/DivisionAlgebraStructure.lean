import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean

structure DivisionAlgebraAdmittedObject where
  divisionAlgebra : Type u
  addition : divisionAlgebra → divisionAlgebra → divisionAlgebra
  multiplication : divisionAlgebra → divisionAlgebra → divisionAlgebra
  zero : divisionAlgebra
  one : divisionAlgebra
  additiveGroup : AddGroup divisionAlgebra
  multiplicativeGroup : GroupWithZero divisionAlgebra
  finiteDimensional : Nat
  alternativeLaw : Prop
  normed : Prop
  compositionLaw : Prop
  conclusion : divisionAlgebra ≃ ℝ ∨ divisionAlgebra ≃ ℂ ∨ divisionAlgebra ≃ ℍ ∨ divisionAlgebra ≃ 𝕆

def DivisionAlgebraWitnessClosed (O : DivisionAlgebraAdmittedObject) : Prop :=
  O.conclusion

end DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse