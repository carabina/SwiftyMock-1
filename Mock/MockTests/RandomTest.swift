//
//  Random.swift
//  MockTests
//
//  Created by 李修冶 on 2018/4/3.
//  Copyright © 2018年 xiuye. All rights reserved.
//

import XCTest

class Random: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
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
    
    func testRandomInt(){
        for _ in 0...10000{
            let some = Int.random(in: 10...30)
           
            if some == 30{
                print(some)
            }
            XCTAssertLessThanOrEqual(some, 30)
            XCTAssertGreaterThanOrEqual(some, 10)
        }
    }
    
    func testRange(){
        for _ in 0...10{
        let some = Int.random(in: 1...3)
        let str = "a" * some
        print(str)
        }
    }
    
}
