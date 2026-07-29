import GeometricClassFieldTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GeometricClassFieldTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricClassFieldTheoryCanonicalLaneLean
end HautevilleHouse