//
//  Numeric+Archivable.swift
//  Storage
//
//  Created by 王小涛 on 2019/1/30.
//

import Foundation

protocol BasicDataType {}

extension Int: BasicDataType {}
extension Int8: BasicDataType {}
extension Int16: BasicDataType {}
extension Int32: BasicDataType {}
extension Int64: BasicDataType {}
extension UInt: BasicDataType {}
extension UInt8: BasicDataType {}
extension UInt16: BasicDataType {}
extension UInt32: BasicDataType {}
extension UInt64: BasicDataType {}

extension Float: BasicDataType {}
extension Double: BasicDataType {}
extension CGFloat: BasicDataType {}

extension Bool: BasicDataType {}
extension URL: BasicDataType {}
extension Date: BasicDataType {}

extension String: BasicDataType {}
extension Data: BasicDataType {}
