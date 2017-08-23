import coremltools

coreml_model = coremltools.converters.caffe.convert(('googlenet_finetune_web_car.caffemodel', 'deploy.prototxt'), image_input_names = 'data', class_labels = 'cars.txt')
coreml_model.author = 'Audebert, Nicolas and Le Saux, Bertrand and Lefevre Sebastien'
coreml_model.license = 'MIT'
coreml_model.short_description = 'Deep learning for Earth Surface Observation'
coreml_model.input_description['data'] = 'An image of earth surface.'
coreml_model.output_description['prob'] = 'The probabilities that the input image is a car.'
coreml_model.output_description['classLabel'] = 'The most likely type of car, for the given input.'
coreml_model.save('CarRecognition.mlmodel')
