import CoreImage.CIImage
import CoreMedia.CMSampleBuffer

public protocol IIDScanScanner {
    func detect(from image: CIImage) -> [String : String]?
    func detect(from sampleBuffer: CMSampleBuffer) -> [String : String]?
    var version: String { get }
}
