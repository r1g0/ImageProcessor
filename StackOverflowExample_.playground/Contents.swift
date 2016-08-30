import UIKit
let image = UIImage(named: "tack-bordered.png")!
image.scale
let image2 = UIImage(named: "tack-bordered2.png")!
image2.scale
let image3 = UIImage(named: "tack-bordered3.png")!
// Process the image!
let imageProcessor = ImageProcessor(image: image)
let imageProcessor2 = ImageProcessor(image: image2)
let imageProcessor3 = ImageProcessor(image: image3)
var colorFilter = STColorFilter(color: UIColor.orangeColor())
var ar = [imageProcessor.apply(colorFilter).getImage(), imageProcessor2.apply(colorFilter).getImage(), imageProcessor3.apply(colorFilter).getImage()]
(ar[0] as UIImage).scale
image.scale
//let imageProcessor2 = ImageProcessor(image: image)
//imageProcessor2.apply(colorFilter).getImage()
//let imageProcessor3 = ImageProcessor(image: image)
//imageProcessor3.apply(colorFilter).getImage()
//let imageProcessor4 = ImageProcessor(image: image)
//imageProcessor4.apply(colorFilter).getImage()
//imageProcessor.restore().apply(BrightnessFilter(brightnessFactor: 100)).getImage()
//imageProcessor.restore().apply(BrightnessFilter(brightnessFactor: 100)).getImage()
//imageProcessor.restore().apply(BrightnessFilter(brightnessFactor: 100)).getImage()
//imageProcessor.restore().apply(BrightnessFilter(brightnessFactor: 100)).getImage()
