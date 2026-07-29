import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricClassFieldTheoryCanonicalLaneLean

abbrev FunctionField := Polynomial (FiniteField (Fintype.card (Fin 5))) -> FiniteField (Fintype.card (Fin 5))

structure GeometricObject where
  field : FunctionField
  curve : Type
structure CurveObject where
  genus : Nat
deriving Repr, DecidableEq

def genus : CurveObject -> Nat := fun c => c.genus

end GeometricClassFieldTheoryCanonicalLaneLean
end HautevilleHouse