//
//  Encodable+Archived.swift
//  Storage
//
//  Created by 王小涛 on 2019/1/30.
//

import Foundation

extension Encodable {
    func archivedData() throws -> Data {
        if self is BasicDataType {
            return try BasicDataTypeArchiver<Self>().archive(self)
        } else {
            return try EncodableArchiver<Self>().archive(self)
        }
    }
}
