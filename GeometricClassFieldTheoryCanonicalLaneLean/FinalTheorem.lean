import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricClassFieldTheoryCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.GeometricClassFieldTheoryCanonicalLaneLean.GateLemmas
namespace HautevilleHouse
namespace GeometricClassFieldTheoryCanonicalLaneLean

def ConstrainedGeometricClassFieldTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometric_class_field_theory_endgame (A : AdmissibleClass) :
    ConstrainedGeometricClassFieldTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricClassFieldTheoryCanonicalLaneLean
end HautevilleHouse