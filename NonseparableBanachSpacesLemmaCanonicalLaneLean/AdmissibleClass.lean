import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : NonseparableBanachAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NonseparableBanachWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse