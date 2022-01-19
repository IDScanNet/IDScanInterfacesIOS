import CoreImage.CIImage
import CoreMedia.CMSampleBuffer

public protocol IIDScanScanner {
    func detect(from: CIImage) -> [String : Any]?
    func detect(from: CMSampleBuffer) -> [String : Any]?
    var version: String { get }
}
