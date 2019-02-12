//
//  Decodable+Unarchived.swift
//  Storage
//
//  Created by 王小涛 on 2019/2/12.
//

import Foundation

extension Decodable {
    init?(archivedData data: Data) throws {
        if Self.self is BasicDataType.Type {
            if let object = try BasicDataTypeUnarchiver<Self>().unarchive(data) {
                self = object
            } else {
                return nil
            }
        } else {
            if let object = try DecodableUnarchiver<Self>().unarchive(data) {
                self = object
            } else {
                return nil
            }
        }
    }
}
