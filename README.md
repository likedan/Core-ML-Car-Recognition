# Core ML Car Recognition Demo

iOS11 demo application for flower classification using `Vision` and `CoreML`
frameworks. More models at [Core-ML-Examples](https://github.com/likedan/Core-ML-Examples).

<div align="center">
<img src="https://github.com/likedan/Core-ML-Car-Recognition/blob/master/myoldcar.png" alt="CarRecognition" width="300" height="464" />
</div>

## Model

This demo is based on [The Comprehensive Cars (CompCars) dataset](http://mmlab.ie.cuhk.edu.hk/datasets/comp_cars/index.html),
which was converted to [CoreML model](https://github.com/likedan/Core-ML-Car-Recognition/blob/master/Convert/googlenet_finetune_web_car.caffemodel)
using [coremltools](https://pypi.python.org/pypi/coremltools) python package.

## Requirements

- Xcode 9
- iOS 11

## Installation

```sh
git clone https://github.com/likedan/Core-ML-Car-Recognition.git
cd Core-ML-Car-Recognition
pod install
open CarRecognition.xcworkspace/
```

Build the project and run it on a simulator or a device with iOS 11.

## Author

Kedan Li, likedan5@gmail.com

## Credits

- [GoogLeNet_cars](https://gist.github.com/bogger/b90eb88e31cd745525ae)

## References
- [Caffe Model Zoo](https://github.com/caffe2/caffe2/wiki/Model-Zoo)
- [Apple Machine Learning](https://developer.apple.com/machine-learning/)
- [Vision Framework](https://developer.apple.com/documentation/vision)
- [CoreML Framework](https://developer.apple.com/documentation/coreml)
- [coremltools](https://pypi.python.org/pypi/coremltools)
