import XCTest
import IDScanComponentTests
@testable import IDScanInterfacesPub

extension IDScanInterfacesPub: IDScanComponentTest {
    public static func selfTest() -> [Error] {
        []
    }
}

final class IDScanInterfacesTests: XCTestCase {
    func test() {
        self.assertErrors(errors: self.testComponent(IDScanInterfacesPub.self), componentName: IDScanInterfacesPub.componentName)
    }
}
