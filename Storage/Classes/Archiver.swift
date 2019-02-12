//
//  Archiver.swift
//  Storage
//
//  Created by 王小涛 on 2019/1/30.
//

import Foundation

protocol Archiver {
    associatedtype T
    func archive(_ object: T) throws -> Data
}

struct EncodableArchiver<T>: Archiver where T: Encodable {
    func archive(_ object: T) throws -> Data {
        return try JSONEncoder().encode(object)
    }
}

struct BasicDataTypeArchiver<T>: Archiver where T: Any {
    func archive(_ object: T) throws -> Data {
        if #available(iOS 11.0, *) {
            return try NSKeyedArchiver.archivedData(withRootObject: object, requiringSecureCoding: false)
        } else {
            return NSKeyedArchiver.archivedData(withRootObject: object)
        }
    }
}


