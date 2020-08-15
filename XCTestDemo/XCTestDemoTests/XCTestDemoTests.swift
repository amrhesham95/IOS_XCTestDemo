//
//  XCTestDemoTests.swift
//  XCTestDemoTests
//
//  Created by Amr Hesham on 8/15/20.
//  Copyright © 2020 Amr Hesham. All rights reserved.
//

import XCTest
@testable import XCTestDemo

class XCTestDemoTests: XCTestCase {
    var data:PlayData?
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAllWordsLoaded() {
        let playData = PlayData()
        let numberOfWords = 384001
//        XCTAssertEqual(playData.allWords.count, numberOfWords, "allWords was not equal to \(numberOfWords)")
        XCTAssertEqual(playData.wordCounts["home"], 174, "Home does not appear 174 times")
        XCTAssertEqual(playData.wordCounts["fun"], 4, "Fun does not appear 4 times")
        XCTAssertEqual(playData.wordCounts["mortal"], 41, "Mortal does not appear 41 times")



    }
    
    func testWordsLoadQuickly() {
        measure {
            _ = PlayData()
        }
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
