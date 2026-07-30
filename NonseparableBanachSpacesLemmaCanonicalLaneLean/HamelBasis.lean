import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NonseparableBanachSpacesLemmaCanonicalLaneLean

structure HamelBasisPackage (X : NonseparableBanachSpace) where
  hamelBasisExists : Prop
  hamelBasisCardinality : Cardinal
  uncountable : Prop

structure HamelBasisEvidence (X : NonseparableBanachSpace)
    (H : HamelBasisPackage X) where
  hamelBasisExistsClosed : H.hamelBasisExists
  uncountableClosed : H.uncountable

def HamelBasisClosed (X : NonseparableBanachSpace) (H : HamelBasisPackage X) : Prop :=
  H.hamelBasisExists ∧ H.uncountable

theorem hamel_basis_closed_from_evidence (X : NonseparableBanachSpace)
    (H : HamelBasisPackage X) (E : HamelBasisEvidence X H) :
    HamelBasisClosed X H := by
  exact And.intro E.hamelBasisExistsClosed E.uncountableClosed

end NonseparableBanachSpacesLemmaCanonicalLaneLean
end HautevilleHouse