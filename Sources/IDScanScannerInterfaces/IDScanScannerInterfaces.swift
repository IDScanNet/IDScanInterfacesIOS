import CoreImage.CIImage
import CoreMedia.CMSampleBuffer

public protocol IIDScanScanner {
    func detect(from image: CIImage) -> [String : Any]?
    func detect(from sampleBuffer: CMSampleBuffer) -> [String : Any]?
    var version: String { get }
}
