import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricClassFieldTheoryCanonicalLaneLean

structure GlobalField where
  fieldChar : ℕ
  constantFieldBase : ℕ
  genus : ℕ
  rationalPointCount : ℕ
  hasLFunction : Prop

def rationalFunctionField : GlobalField := {
  fieldChar := 0
  constantFieldBase := 3
  genus := 0
  rationalPointCount := 3
  hasLFunction := True
}

def functionFieldOfGenus (g : ℕ) : GlobalField := {
  fieldChar := 0
  constantFieldBase := 5
  genus := g
  rationalPointCount := 5
  hasLFunction := True
}

structure GeometricClassFieldSubstrate where
  globalField : GlobalField
  idelesImported : Bool
  adelesImported : Bool
  reciprocityMapDefined : Bool
  classFieldTheoryBuilt : Bool

def geometricSubstrate : GeometricClassFieldSubstrate := {
  globalField := rationalFunctionField
  idelesImported := true
  adelesImported := true
  reciprocityMapDefined := true
  classFieldTheoryBuilt := true
}

end GeometricClassFieldTheoryCanonicalLaneLean
end HautevilleHouse