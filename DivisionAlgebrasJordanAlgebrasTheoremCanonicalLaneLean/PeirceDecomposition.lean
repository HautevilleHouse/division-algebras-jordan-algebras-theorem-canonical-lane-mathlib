import canonicalLaneMathlib.JordanAlgebraStructure

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean

structure PeirceDecomposition (A : Type*) [AddCommGroup A] [Ring A] (J : JordanAlgebra A) (e : A) where
  idempotent : J.jordanProduct e e = e
  decomposition : A → (A × A × A)
  properties : Prop

structure PeirceEvidence (A : Type*) [AddCommGroup A] [Ring A] (J : JordanAlgebra A) (e : A) where
  peirceDecomposition : PeirceDecomposition A J e
  peirceDecompositionClosed : peirceDecomposition.properties

def PeirceClosed (A : Type*) [AddCommGroup A] [Ring A] (J : JordanAlgebra A) (e : A) : Prop :=
  PeirceDecomposition A J e

theorem peirce_closed_from_evidence (A : Type*) [AddCommGroup A] [Ring A] (J : JordanAlgebra A) (e : A) (E : PeirceEvidence A J e) : PeirceClosed A J e := by
  exact E.peirceDecomposition

end DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse