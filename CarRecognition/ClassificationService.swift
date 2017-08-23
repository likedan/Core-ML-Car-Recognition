import CoreML
import Vision
import VisionLab

protocol ClassificationServiceDelegate: class {
  func classificationService(_ service: ClassificationService, didDetectFlower flower: String)
}

/// Service used to perform gender, age and emotion classification
final class ClassificationService: ClassificationServiceProtocol {
  /// The service's delegate
  weak var delegate: ClassificationServiceDelegate?
  /// Array of vision requests
  private var requests = [VNRequest]()

  /// Create CoreML model and classification requests
  func setup() {
    do {
      // Flower request
      requests.append(VNCoreMLRequest(
        model: try VNCoreMLModel(for: CarRecognition().model),
        completionHandler: handleClassification
      ))
    } catch {
      assertionFailure("Can't load Vision ML model: \(error)")
    }
  }

  /// Run individual requests one by one.
  func classify(image: CIImage) {
    do {
      for request in self.requests {
        let handler = VNImageRequestHandler(ciImage: image)
        try handler.perform([request])
      }
    } catch {
      print(error)
    }
  }

  // MARK: - Handling

  @objc private func handleClassification(request: VNRequest, error: Error?) {
    let result = extractClassificationResult(from: request, count: 3)
    delegate?.classificationService(self, didDetectFlower: result)
  }
}
