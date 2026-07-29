import DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Algebra.Algebra.Basic

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure JordanAlgebra where
  carrier : Type
  mul : carrier → carrier → carrier
  mul_comm : ∀ a b : carrier, mul a b = mul b a
  mul_jordan : ∀ a b : carrier, mul a (mul (mul a a) b) = mul a (mul b (mul a a))

structure DivisionAlgebra where
  carrier : Type
  add : carrier → carrier → carrier
  zero : carrier
  neg : carrier → carrier
  mul : carrier → carrier → carrier
  one : carrier
  inv : carrier → carrier
  add_assoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  add_comm : ∀ a b : carrier, add a b = add b a
  add_zero : ∀ a : carrier, add a zero = a
  add_left_neg : ∀ a : carrier, add (neg a) a = zero
  mul_assoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  mul_one : ∀ a : carrier, mul a one = a
  one_mul : ∀ a : carrier, mul one a = a
  left_distrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  right_distrib : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)
  mul_inv_left : ∀ a : carrier, a ≠ zero → mul (inv a) a = one
  mul_inv_right : ∀ a : carrier, a ≠ zero → mul a (inv a) = one

def JordanAlgebra.IsSpecial (J : JordanAlgebra) (A : DivisionAlgebra) : Prop :=
  ∀ x y : J, J.mul x y = A.mul x y + A.mul y x

structure JordanAdmittedObject where
  algebra : DivisionAlgebra
  isDivision : Prop
  admitsJordan : JordanAlgebra
  jordanSpecial : JordanAlgebra.IsSpecial admitsJordan algebra
  conclusion : isDivision

structure JordanEndgameState where
  object : JordanAdmittedObject

def JordanWitnessClosed (O : JordanAdmittedObject) : Prop :=
  O.isDivision

end DivisionAlgebrasJordanAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse