import VisionLab

final class ViewController: ImageClassificationController<ClassificationService> {
  override func viewDidLoad() {
    super.viewDidLoad()
    mainView.button.setTitle("Choose an image of a car", for: .normal)
    classificationService.delegate = self
  }
}

// MARK: - ClassificationServiceDelegate

extension ViewController: ClassificationServiceDelegate {
  func classificationService(_ service: ClassificationService, didDetectFlower flower: String) {
    DispatchQueue.main.async { [weak mainView] in
      mainView?.label.text = flower.capitalized
    }
  }
}
