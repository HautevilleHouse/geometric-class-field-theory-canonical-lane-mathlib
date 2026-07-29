import GeometricClassFieldTheoryCanonicalLaneLean.CurveObjects
import Mathlib.Data.Finset.Basic
import Mathlib.NumberTheory.ClassNumber
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine

/-!
# Curve Substrate

This module imports available Mathlib substrate near curves, class numbers, and
elliptic curves. The theorem-local geometric class field theory lane uses that
substrate as background while carrying the upstream absence of a native complete
constructive proof stack as an explicit boundary.
-/

namespace HautevilleHouse
namespace GeometricClassFieldTheoryCanonicalLaneLean

structure CurveSubstrate where
  curveImported : Bool
  classNumberImported : Bool
  ellipticCurvesImported : Bool
  theoremLocalCurveObjectsNative : Bool
  unrestrictedGCFTStackCarried : Bool
  carriedBoundary : String
deriving Repr, DecidableEq

def curveSubstrate : CurveSubstrate := {
  curveImported := true
  classNumberImported := true
  ellipticCurvesImported := true
  theoremLocalCurveObjectsNative := true
  unrestrictedGCFTStackCarried := true
  carriedBoundary := "Mathlib supplies adjacent curve, class number, and elliptic curve substrate; the theorem-local geometric class field theory closure is carried through admitted certificate fields."
}

theorem curve_substrate_imported : curveSubstrate.curveImported := by rfl

theorem class_number_substrate_imported : curveSubstrate.classNumberImported := by rfl

theorem elliptic_curves_substrate_imported : curveSubstrate.ellipticCurvesImported := by rfl

end GeometricClassFieldTheoryCanonicalLaneLean
end HautevilleHouse