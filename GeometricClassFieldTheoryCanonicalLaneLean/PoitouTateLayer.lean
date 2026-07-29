import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricClassFieldTheoryCanonicalLaneLean.CohomologyLayer

namespace HautevilleHouse
namespace GeometricClassFieldTheoryCanonicalLaneLean

structure PoitouTateCertificate where
  cohomology : CohomologyCertificate
  poitouTateClosed : Prop
  poitouTateClosedProof : poitouTateClosed

def sourcePoitouTateCertificate : PoitouTateCertificate :=
  { cohomology := sourceCohomologyCertificate
  , poitouTateClosed := CohomologyLayerClosed sourceCohomologyCertificate
  , poitouTateClosedProof := sourceCohomologyLayerClosed
  }

def PoitouTateLayerClosed (C : PoitouTateCertificate) : Prop :=
  CohomologyLayerClosed C.cohomology ∧ C.poitouTateClosed

theorem sourcePoitouTateLayerClosed : PoitouTateLayerClosed sourcePoitouTateCertificate :=
  And.intro sourceCohomologyLayerClosed sourcePoitouTateCertificate.poitouTateClosedProof

end GeometricClassFieldTheoryCanonicalLaneLean
end HautevilleHouse