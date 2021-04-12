//
//  ComplexUIProject3Tests.swift
//  ComplexUIProject3Tests
//
//  Created by Jyoti Kumari 2 on 4/12/21.
//

import FBSnapshotTestCase
@testable import ComplexUIProject3

class ComplexUIProject3Tests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        self.recordMode = false
        fileNameOptions = [
            FBSnapshotTestCaseFileNameIncludeOption.OS,
            FBSnapshotTestCaseFileNameIncludeOption.screenScale,
            FBSnapshotTestCaseFileNameIncludeOption.screenSize,
            FBSnapshotTestCaseFileNameIncludeOption.device
        ]
         //Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testExample() {
        let viewController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
        FBSnapshotVerifyView(viewController.view, identifier: "simpleView", perPixelTolerance: 0.0, overallTolerance: 0.0)
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
