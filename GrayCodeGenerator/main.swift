//
//  main.swift
//  GrayCodeGenerator
//
//  Created by levantAJ on 20/10/18.
//  Copyright © 2018 levantAJ. All rights reserved.
//

import Foundation

/**
 Generate n-bit gray code for a number with recursion approach.
 
 - Parameter n: The number being generated to list of gray code.
 
 - Returns: An array of string contains reflected binary code.
 */
func generateGrayCodes(for n: Int) -> [String] {
    var codes: [String] = []
    if n <= 0 {
        return codes
    } else if n == 1 {
        codes.append("0")
        codes.append("1")
        return codes
    } else {
        let previousCodes = generateGrayCodes(for: n - 1)
        codes = codes + previousCodes
        for i in (0 ..< previousCodes.count).reversed() {
            let code = codes[i]
            codes[i] = "0" + code
            codes.append("1" + code)
        }
        return codes
    }
}

/**
 Print list of n-bit gray code.
 
 - Parameter grayCodes: An array of n-bit gray code.
 */
func print(grayCodes: [String]) {
    print("List Gray code:")
    for code in grayCodes {
        print(code)
    }
}

print("Please enter n: ")

//Read and check valid input.
if let input = readLine(),
    let n = Int(input),
    n >= 0 {
    let codes = generateGrayCodes(for: n)
    print(grayCodes: codes)
} else {
    print("Input is invalid!")
}

