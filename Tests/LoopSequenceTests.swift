//
//  Copyright © 2018 Werner Freytag. All rights reserved.
//

import Nimble
import XCTest
@testable import SwiftToolbox

class LoopSequenceTests: XCTestCase {
    
    func testSequence() {
        
        var result: [Int] = []
        
        var iteration = 0
        for i in LoopSequence(0..<3) {
            guard iteration < 10 else { break }
            result.append(i)
            defer { iteration += 1 }
        }
        
        expect(result) == [0, 1, 2, 0, 1, 2, 0, 1, 2, 0]
    }
}
