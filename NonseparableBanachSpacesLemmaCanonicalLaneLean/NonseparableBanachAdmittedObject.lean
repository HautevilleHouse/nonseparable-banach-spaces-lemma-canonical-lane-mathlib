import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure NonseparableBanachSpace where
  carrier : Type
  norm : carrier → ℝ
  complete : Prop
  nonseparable : Prop

structure NonseparableBanachAdmittedObject where
  space : NonseparableBanachSpace
  lemmaStatement : Prop
  conclusion : lemmaStatement

def NonseparableBanachWitnessClosed (O : NonseparableBanachAdmittedObject) : Prop :=
  O.lemmaStatement

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse