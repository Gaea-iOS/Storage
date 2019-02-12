//
//  KeyValueStorage.swift
//  Storage
//
//  Created by 王小涛 on 2019/1/29.
//

import Foundation

public protocol KeyValueStorage {
    subscript<T>(key: String) -> T?  where T: Codable { get set }
}
