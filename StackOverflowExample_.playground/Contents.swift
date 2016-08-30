import UIKit
let image = UIImage(named: "sample")!
// Process the image!
let imageProcessor = ImageProcessor(image: image)
let noFilter = NoFilter()
imageProcessor.apply(noFilter).getImage()

let imageProcessor2 = ImageProcessor(image: image)
imageProcessor2.apply(NoFilter()).getImage()

let imageProcessor3 = ImageProcessor(image: image)
imageProcessor3.apply(NoFilter()).getImage()

let imageProcessor4 = ImageProcessor(image: image)
imageProcessor4.apply(NoFilter()).getImage()

//imageProcessor.restore().apply(BrightnessFilter(brightnessFactor: 100)).getImage()
//imageProcessor.restore().apply(BrightnessFilter(brightnessFactor: 100)).getImage()
//imageProcessor.restore().apply(BrightnessFilter(brightnessFactor: 100)).getImage()
//imageProcessor.restore().apply(BrightnessFilter(brightnessFactor: 100)).getImage()