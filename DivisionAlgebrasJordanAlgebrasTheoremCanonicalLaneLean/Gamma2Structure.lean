import DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean.MathlibObjects

/-!
# Gamma-2 Structure Package
-/

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean

structure Gamma2Structure (J : JordanAlgebra) where
  quadraticMap : J.carrier → J.carrier
  quadraticMap_sq : ∀ a : J.carrier, quadraticMap a = J.mul a a
  traceForm : J.carrier → J.carrier → J.carrier
  traceForm_symm : ∀ a b : J.carrier, traceForm a b = traceForm b a
  traceForm_bilinear : ∀ a b c : J.carrier, traceForm (J.mul a b) c = traceForm a (J.mul b c)

structure Gamma2Evidence {J : JordanAlgebra} (G : Gamma2Structure J) where
  quadraticMap_sq_closed : ∀ a : J.carrier, G.quadraticMap a = J.mul a a
  traceForm_symm_closed : ∀ a b : J.carrier, G.traceForm a b = G.traceForm b a
  traceForm_bilinear_closed : ∀ a b c : J.carrier, G.traceForm (J.mul a b) c = G.traceForm a (J.mul b c)

def Gamma2Closed {J : JordanAlgebra} (G : Gamma2Structure J) : Prop :=
  (∀ a : J.carrier, G.quadraticMap a = J.mul a a) ∧
  (∀ a b : J.carrier, G.traceForm a b = G.traceForm b a) ∧
  (∀ a b c : J.carrier, G.traceForm (J.mul a b) c = G.traceForm a (J.mul b c))

theorem gamma2_closed_from_evidence {J : JordanAlgebra} (G : Gamma2Structure J) (E : Gamma2Evidence G) : Gamma2Closed G := by
  exact And.intro E.quadraticMap_sq_closed (And.intro E.traceForm_symm_closed E.traceForm_bilinear_closed)

end DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse