import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure NonseparableAdmittedObject where
  space : Type u
  norm : space → ℝ
  normedAddCommGroup : NormedAddCommGroup space
  nonseparable : ¬ SeparableSpace space
  conclusion : Prop

structure AdmissibleClass where
  object : NonseparableAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NonseparableWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def NonseparableWitnessClosed (O : NonseparableAdmittedObject) : Prop :=
  O.conclusion

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse