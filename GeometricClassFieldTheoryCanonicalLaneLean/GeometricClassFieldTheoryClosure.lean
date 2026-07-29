import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricClassFieldTheoryCanonicalLaneLean.GeometricClassFieldTheoryAnalyticCertificate

namespace HautevilleHouse
namespace GeometricClassFieldTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def geometricAdmittedObject : AdmittedTheoremObject :=
  { object := { sourceKey := sourceRepository, theoremObject := sourceDescription, claimBoundary := sourceTheoremBoundary.claimBoundary }
  , localWitness := "Geometric Class Field Theory analytic certificate with kernel formation, cohomology, Poitou-Tate, and geometric objects closure."
  , bridgeEvidence := "source-derived Lean certificate fields"
  , sourceKeyChecked := rfl
  , theoremObjectChecked := rfl
  }

def geometricAdmissibleClass : AdmissibleClass :=
  { object := geometricAdmittedObject
  , endpointSatisfied := AnalyticCertificateClosed sourceGeometricClassFieldTheoryAnalyticCertificate
  , remainderRecorded := formalizationCertificate.theoremBoundaryOpen = true
  , gateWitness := Or.inl sourceAnalyticCertificateClosed
  }

def GeometricClassFieldTheoryClosure : Prop :=
  AnalyticCertificateClosed sourceGeometricClassFieldTheoryAnalyticCertificate ∧
  ConstrainedTheoremClosure geometricAdmissibleClass

theorem geometric_class_field_theory_closure_checked : GeometricClassFieldTheoryClosure :=
  And.intro sourceAnalyticCertificateClosed (constrained_theorem_closure geometricAdmissibleClass)

end GeometricClassFieldTheoryCanonicalLaneLean
end HautevilleHouse