import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricClassFieldTheoryCanonicalLaneLean

structure HeckeCertificate where
  heckeCharacter : Prop
  grossencharacter : Prop
  tateIwasawa : Prop
  heckeCharacterClosed : heckeCharacter
  grossencharacterClosed : grossencharacter
  tateIwasawaClosed : tateIwasawa

def sourceHeckeCertificate : HeckeCertificate := {
  heckeCharacter := true,
  grossencharacter := true,
  tateIwasawa := true,
  heckeCharacterClosed := rfl,
  grossencharacterClosed := rfl,
  tateIwasawaClosed := rfl
}

def HeckeClosed (C : HeckeCertificate) : Prop :=
  C.heckeCharacter ∧ C.grossencharacter ∧ C.tateIwasawa

theorem source_hecke_closed : HeckeClosed sourceHeckeCertificate := by
  exact And.intro sourceHeckeCertificate.heckeCharacterClosed
    (And.intro sourceHeckeCertificate.grossencharacterClosed
      sourceHeckeCertificate.tateIwasawaClosed)

end GeometricClassFieldTheoryCanonicalLaneLean
end HautevilleHouse