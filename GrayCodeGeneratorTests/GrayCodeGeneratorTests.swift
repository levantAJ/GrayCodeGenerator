//
//  GrayCodeGeneratorTests.swift
//  GrayCodeGeneratorTests
//
//  Created by levantAJ on 20/10/18.
//  Copyright © 2018 levantAJ. All rights reserved.
//

import XCTest

class GrayCodeGeneratorTests: XCTestCase {
    
    func testGenerateGrayCodesWithInvalidN() {
        //Given:
        let n = -1
        
        //When:
        let codes = generateGrayCodes(for: n)
        
        //Then:
        XCTAssertTrue(codes.isEmpty)
    }
    
    func testGenerateGrayCodesWithNIs0() {
        //Given:
        let n = 0
        
        //When:
        let codes = generateGrayCodes(for: n)
        
        //Then:
        XCTAssertTrue(codes.isEmpty)
    }
    
    func testGenerateGrayCodesWithNIs1() {
        //Given:
        let n = 1
        
        //When:
        let codes = generateGrayCodes(for: n)
        
        //Then:
        XCTAssertEqual(codes.count, 2)
        XCTAssertEqual(codes[0], "0")
        XCTAssertEqual(codes[1], "1")
    }
    
    func testGenerateGrayCodesWithNIs2() {
        //Given:
        let n = 2
        
        //When:
        let codes = generateGrayCodes(for: n)
        
        //Then:
        XCTAssertEqual(codes.count, 4)
        XCTAssertEqual(codes[0], "00")
        XCTAssertEqual(codes[1], "01")
        XCTAssertEqual(codes[2], "11")
        XCTAssertEqual(codes[3], "10")
    }
    
    func testGenerateGrayCodesWithNIs3() {
        //Given:
        let n = 3
        
        //When:
        let codes = generateGrayCodes(for: n)
        
        //Then:
        XCTAssertEqual(codes.count, 8)
        XCTAssertEqual(codes[0], "000")
        XCTAssertEqual(codes[1], "001")
        XCTAssertEqual(codes[2], "011")
        XCTAssertEqual(codes[3], "010")
        XCTAssertEqual(codes[4], "110")
        XCTAssertEqual(codes[5], "111")
        XCTAssertEqual(codes[6], "101")
        XCTAssertEqual(codes[7], "100")
    }
    
    func testGenerateGrayCodesWithNIs4() {
        //Given:
        let n = 4
        
        //When:
        let codes = generateGrayCodes(for: n)
        
        //Then:
        XCTAssertEqual(codes.count, 16)
        XCTAssertEqual(codes[0], "0000")
        XCTAssertEqual(codes[1], "0001")
        XCTAssertEqual(codes[2], "0011")
        XCTAssertEqual(codes[3], "0010")
        XCTAssertEqual(codes[4], "0110")
        XCTAssertEqual(codes[5], "0111")
        XCTAssertEqual(codes[6], "0101")
        XCTAssertEqual(codes[7], "0100")
        XCTAssertEqual(codes[8], "1100")
        XCTAssertEqual(codes[9], "1101")
        XCTAssertEqual(codes[10], "1111")
        XCTAssertEqual(codes[11], "1110")
        XCTAssertEqual(codes[12], "1010")
        XCTAssertEqual(codes[13], "1011")
        XCTAssertEqual(codes[14], "1001")
        XCTAssertEqual(codes[15], "1000")
    }
}
