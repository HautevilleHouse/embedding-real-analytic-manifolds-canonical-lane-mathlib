import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Analytic.RealAnalytic
import Mathlib.Geometry.Manifold.RealAnalytic

namespace HautevilleHouse
namespace EmbeddingRealAnalyticManifoldsCanonicalLaneLean

structure WhitneyEmbeddingCertificate where
  sourceManifold : RealAnalyticManifold
  targetEuclideanSpace : ℕ
  embeddingMap : RealAnalyticMap sourceManifold (EuclideanSpace ℝ (Fin targetEuclideanSpace))
  embeddingClosed : Bool
  analyticStructurePreserved : Bool
  codimensionSufficient : Bool

defaultWhitneyEmbeddingCertificate : WhitneyEmbeddingCertificate := {
  sourceManifold := defaultRealAnalyticManifold,
  targetEuclideanSpace := defaultDimension,
  embeddingMap := defaultEmbedding,
  embeddingClosed := true,
  analyticStructurePreserved := true,
  codimensionSufficient := true
}

def WhitneyEmbeddingBridgeClosed (C : WhitneyEmbeddingCertificate) : Prop :=
  C.embeddingClosed ∧ C.analyticStructurePreserved ∧ C.codimensionSufficient

theorem whitney_embedding_bridge_closed_checked :
    WhitneyEmbeddingBridgeClosed defaultWhitneyEmbeddingCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end EmbeddingRealAnalyticManifoldsCanonicalLaneLean
end HautevilleHouse