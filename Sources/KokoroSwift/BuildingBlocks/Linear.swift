import MLX
import MLXNN

final class Linear: MLXNN.Linear {
  override func callAsFunction(_ x: MLXArray) -> MLXArray {
    let result = MLX.matmul(x, weight.T)
    return bias.map { result + $0 } ?? result
  }
}
