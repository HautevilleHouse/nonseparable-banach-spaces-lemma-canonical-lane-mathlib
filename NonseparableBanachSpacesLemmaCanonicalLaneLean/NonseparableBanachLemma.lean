import canonicalLaneMathlib.AdmissibleClass
import NonseparableBanachSpacesLemmaCanonicalLaneLean.NonseparableBanachAdmittedObject

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure NonseparableBanachLemmaPackage where
  space : NonseparableBanachSpace
  closedSubspaceExists : Prop
  properSubspaceExists : Prop
  hamelBasisLarge : Prop

def NonseparableBanachLemmaClosed (P : NonseparableBanachLemmaPackage) : Prop :=
  P.closedSubspaceExists ∧ P.properSubspaceExists ∧ P.hamelBasisLarge

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse