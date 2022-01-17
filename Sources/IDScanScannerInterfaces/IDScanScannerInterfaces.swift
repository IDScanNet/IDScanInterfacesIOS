import Foundation

public protocol IIDScanScanner {
    func detect(_ image: UnsafeMutablePointer<UInt8>) -> [String : Any]?
    var version: String { get }
}
