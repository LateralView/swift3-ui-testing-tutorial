//
//  Data.swift
//  BaseProject
//
//  Created by Leandro Tami on 3/12/17.
//  Copyright © 2017 LateralView. All rights reserved.
//

import Foundation

extension Data {

    func scanValue<T>(start: Int, length: Int) -> T {
        return self.subdata(in: start..<start+length).withUnsafeBytes { $0.pointee }
    }

    func hexEncodedString() -> String {
        return map { String(format: "%02hhx", $0) }.joined()
    }
    
}
