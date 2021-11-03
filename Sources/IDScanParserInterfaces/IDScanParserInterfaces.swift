import Foundation

public protocol IIDScanParser {
    func parse(_ rawString: String) -> [String : String]?
    static var version: String { get }
}
