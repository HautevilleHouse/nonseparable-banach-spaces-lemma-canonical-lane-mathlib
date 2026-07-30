import canonicalLaneMathlib.AdmissibleClass
import NonseparableBanachSpacesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse