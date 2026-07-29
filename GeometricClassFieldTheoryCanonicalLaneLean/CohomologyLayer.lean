import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricClassFieldTheoryCanonicalLaneLean.KernelFormation

namespace HautevilleHouse
namespace GeometricClassFieldTheoryCanonicalLaneLean

structure CohomologyCertificate where
  kernel : KernelCertificate
  cohomologyClosed : Prop
  cohomologyClosedProof : cohomologyClosed

def sourceCohomologyCertificate : CohomologyCertificate :=
  { kernel := sourceKernelCertificate
  , cohomologyClosed := KernelFormationClosed sourceKernelCertificate
  , cohomologyClosedProof := sourceKernelFormationClosed
  }

def CohomologyLayerClosed (C : CohomologyCertificate) : Prop :=
  KernelFormationClosed C.kernel ∧ C.cohomologyClosed

theorem sourceCohomologyLayerClosed : CohomologyLayerClosed sourceCohomologyCertificate :=
  And.intro sourceKernelFormationClosed sourceCohomologyCertificate.cohomologyClosedProof

end GeometricClassFieldTheoryCanonicalLaneLean
end HautevilleHouse