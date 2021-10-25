//
//  IDScanInterfaces.swift
//  
//
//  Created by AKorotkov on 13.04.2021.
//

import Foundation
import IDScanCore

public final class IDScanInterfacesPub: IDScanComponent {
    public static func componentBundle() -> Bundle {
        Bundle.module
    }
}
