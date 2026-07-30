import canonicalLaneMathlib.AdmissibleClass
import NonseparableBanachSpacesLemmaCanonicalLaneLean.NonseparableBanachSpaceLemma

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NonseparableBanachSpaceLemmaClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse