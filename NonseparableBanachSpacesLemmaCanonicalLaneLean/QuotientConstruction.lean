import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure QuotientConstruction (X : NonseparableBanachSpace) (Y : Submodule ℝ X.carrier) where
  quotientSpace : NormedAddCommGroup (X.carrier ⼯ Y)
  quotientMap : X.carrier → (X.carrier ⼯ Y)
  surjective : Function.Surjective quotientMap
  nonseparableQuotient : ¬ SeparableSpace (X.carrier ⼯ Y)

def QuotientConstructionClosed (X : NonseparableBanachSpace) (Y : Submodule ℝ X.carrier) (Q : QuotientConstruction X Y) : Prop :=
  Q.nonseparableQuotient

theorem quotient_construction_nonseparable (X : NonseparableBanachSpace) (Y : Submodule ℝ X.carrier) (Q : QuotientConstruction X Y) :
    QuotientConstructionClosed X Y Q := by
  exact Q.nonseparableQuotient

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse