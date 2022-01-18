import Foundation

public protocol IIDScanScanner {
    func detect(image: UnsafeMutablePointer<UInt8>, width: Int, height: Int) -> [String : Any]?
    var version: String { get }
}
