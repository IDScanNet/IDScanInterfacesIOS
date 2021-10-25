import Foundation

public protocol IIDScanParser {
    func parse(_ rawString: String) -> [String : String]?
}
