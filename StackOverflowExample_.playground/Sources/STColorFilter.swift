import Foundation
import UIKit

public class STColorFilter : ImageFilterProtocol{
    
    private var _red : Int
    private var _green : Int
    private var _blue : Int
    
    // -255 to 255
    public init(color: UIColor){
        var red:CGFloat = 0, green:CGFloat = 0, blue:CGFloat = 0, alpha:CGFloat = 0;
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha);
        _red = Int(red*255)
        _green = Int(green*255)
        _blue = Int(blue*255)
    }
    
    public func apply(var pixel: Pixel) -> Pixel {
        if (pixel.alpha>0){
            pixel.red = UInt8(max(1, min(255, Int(pixel.red) + _red)))
            pixel.blue = UInt8(max(1, min(255, Int(pixel.blue) + _blue)))
            pixel.green = UInt8(max(1, min(255, Int(pixel.green) + _green)))
        }
        
        return pixel
    }
    
    
}