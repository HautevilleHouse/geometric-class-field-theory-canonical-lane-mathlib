import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricClassFieldTheoryCanonicalLaneLean.PoitouTateLayer

namespace HautevilleHouse
namespace GeometricClassFieldTheoryCanonicalLaneLean

structure GeometricClassFieldTheoryAnalyticCertificate where
  poitouTate : PoitouTateCertificate
  geometricObjectsClosed : Prop
  geometricObjectsClosedProof : geometricObjectsClosed

def sourceGeometricClassFieldTheoryAnalyticCertificate : GeometricClassFieldTheoryAnalyticCertificate :=
  { poitouTate := sourcePoitouTateCertificate
  , geometricObjectsClosed := PoitouTateLayerClosed sourcePoitouTateCertificate
  , geometricObjectsClosedProof := sourcePoitouTateLayerClosed
  }

def AnalyticCertificateClosed (C : GeometricClassFieldTheoryAnalyticCertificate) : Prop :=
  PoitouTateLayerClosed C.poitouTate ∧ C.geometricObjectsClosed

theorem sourceAnalyticCertificateClosed : AnalyticCertificateClosed sourceGeometricClassFieldTheoryAnalyticCertificate :=
  And.intro sourcePoitouTateLayerClosed sourceGeometricClassFieldTheoryAnalyticCertificate.geometricObjectsClosedProof

end GeometricClassFieldTheoryCanonicalLaneLean
end HautevilleHouse