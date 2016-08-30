import Foundation
import UIKit

public class ImageProcessor{

    private var _image : RGBAImage
    private var _oldImage : UIImage
    
    public init(image : UIImage){
        _image = RGBAImage(image: image)!
        _oldImage = image
    }

    public func apply(filter : ImageFilterProtocol) -> ImageProcessor{
        for y in 0..<_image.height{
            for x in 0..<_image.width{
                let index = y * _image.width + x
                
                let pixel = _image.pixels[index]
                _image.pixels[index] = filter.apply(pixel)
//                print("pixeldif \(pixel.value - modifiedPixel.value), pixeladd \(pixel.value/2 + modifiedPixel.value/2)")
            }
        }
        
        return self
    }
    
    public func getImage() -> UIImage{
        return _image.toUIImage()!
    }
    
    public func restore() -> ImageProcessor{
        _image = RGBAImage(image: _oldImage)!
        
        return self
    }
}
