# Flowers Vision Demo

iOS11 demo application for flower classification using `Vision` and `CoreML`
frameworks.

<div align="center">
<img src="https://github.com/cocoa-ai/FlowersVisionDemo/blob/master/Screenshot.png" alt="FlowersVisionDemo" width="300" height="464" />
</div>

## Model

This demo is based on [Caffe CNNs for the Oxford 102 flower dataset](https://github.com/jimgoo/caffe-oxford102),
which was converted to [CoreML model](https://drive.google.com/file/d/0B1ghKa_MYL6meDBHT2NaZGxkNzQ/view?usp=sharing)
using [coremltools](https://pypi.python.org/pypi/coremltools) python package.

## Requirements

- Xcode 9
- iOS 11

## Installation

```sh
git clone https://github.com/cocoa-ai/FlowersVisionDemo.git
cd FlowersVisionDemo
pod install
open Flowers.xcworkspace/
```

Download the [CoreMl model](https://drive.google.com/file/d/0B1ghKa_MYL6meDBHT2NaZGxkNzQ/view?usp=sharing)
and add the file to "Resources" folder in the project's directory.

Build the project and run it on a simulator or a device with iOS 11.

## Conversion

```sh
cd Convert
./download.sh
python convert.py
```

## Author

Vadym Markov, markov.vadym@gmail.com

## Credits

- [Classifying images in the Oxford 102 flower dataset with CNNs](http://jimgoo.com/flower-power/)
- Photo in the demo is taken from [Flickr](https://flic.kr/p/2zjdHr) and is
distributed under [Attribution 2.0 Generic (CC BY 2.0) license](https://creativecommons.org/licenses/by/2.0/legalcode)

## References
- [Caffe Model Zoo](https://github.com/caffe2/caffe2/wiki/Model-Zoo)
- [Apple Machine Learning](https://developer.apple.com/machine-learning/)
- [Vision Framework](https://developer.apple.com/documentation/vision)
- [CoreML Framework](https://developer.apple.com/documentation/coreml)
- [coremltools](https://pypi.python.org/pypi/coremltools)
