//
//  Unarchiver.swift
//  Storage
//
//  Created by 王小涛 on 2019/1/30.
//

import Foundation

protocol Unarchiver {
    associatedtype T
    func unarchive(_ data: Data) throws -> T?
}

struct DecodableUnarchiver<T>: Unarchiver where T: Decodable {
    func unarchive(_ data: Data) throws -> T? {
        return try JSONDecoder().decode(T.self, from: data)
    }
}

struct BasicDataTypeUnarchiver<T>: Unarchiver where T: Any {
    func unarchive(_ data: Data) throws -> T? {
        return try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? T
    }
}
