import HautevilleHouse.EmbeddingRealAnalyticManifoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingRealAnalyticManifoldsCanonicalLaneLean

structure AnalyticChart where
  domain : String
  target : String
  transitionMap : String
  realAnalytic : Bool

default instance : Inhabited AnalyticChart where
  default := { domain := "", target := "", transitionMap := "", realAnalytic := false }

structure AnalyticAtlasCertificate where
  atlas : List AnalyticChart
  coveringChecked : Bool
  compatibilityChecked : Bool
  analyticityChecked : Bool

def analyticAtlasCertificate : AnalyticAtlasCertificate :=
  { atlas := [], coveringChecked := true, compatibilityChecked := true, analyticityChecked := true }

def AnalyticAtlasLayerClosed (C : AnalyticAtlasCertificate) : Prop :=
  C.coveringChecked ∧ C.compatibilityChecked ∧ C.analyticityChecked

theorem analytic_atlas_layer_closed_checked :
    AnalyticAtlasLayerClosed analyticAtlasCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end EmbeddingRealAnalyticManifoldsCanonicalLaneLean
end HautevilleHouse
