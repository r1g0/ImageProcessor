import Foundation

public class NoFilter : ImageFilterProtocol{
    
    public init(){}
    
    public func apply(pixel: Pixel) -> Pixel {
        return pixel
    }
    
    
}