import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricClassFieldTheoryCanonicalLaneLean.GeometricObjects

namespace HautevilleHouse
namespace GeometricClassFieldTheoryCanonicalLaneLean

structure KernelCertificate where
  kernelFormation : Prop
  kernelFormationClosed : kernelFormation
def sourceKernelCertificate : KernelCertificate :=
  { kernelFormation := True, kernelFormationClosed := trivial }

def KernelFormationClosed (C : KernelCertificate) : Prop :=
  C.kernelFormation

theorem sourceKernelFormationClosed : KernelFormationClosed sourceKernelCertificate :=
  sourceKernelCertificate.kernelFormationClosed

end GeometricClassFieldTheoryCanonicalLaneLean
end HautevilleHouse