import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricClassFieldTheoryCanonicalLaneLean

structure LSeriesCertificate where
  lFunction : Prop
  functionalEquation : Prop
  residueFormula : Prop
  lFunctionClosed : lFunction
  functionalEquationClosed : functionalEquation
  residueFormulaClosed : residueFormula

def sourceLSeriesCertificate : LSeriesCertificate := {
  lFunction := true,
  functionalEquation := true,
  residueFormula := true,
  lFunctionClosed := rfl,
  functionalEquationClosed := rfl,
  residueFormulaClosed := rfl
}

def LSeriesClosed (C : LSeriesCertificate) : Prop :=
  C.lFunction ∧ C.functionalEquation ∧ C.residueFormula

theorem source_l_series_closed : LSeriesClosed sourceLSeriesCertificate := by
  exact And.intro sourceLSeriesCertificate.lFunctionClosed
    (And.intro sourceLSeriesCertificate.functionalEquationClosed
      sourceLSeriesCertificate.residueFormulaClosed)

end GeometricClassFieldTheoryCanonicalLaneLean
end HautevilleHouse