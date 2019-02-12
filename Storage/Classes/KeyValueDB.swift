//
//  LevelDB+Storage.swift
//  Storage
//
//  Created by 王小涛 on 2019/1/29.
//

import Objective_LevelDB

public class KeyValueDB: KeyValueStorage {

    private let db: LevelDB

    public init(name: String) {
        db = KeyValueDBs.shared.db(withName: name)
    }

    public subscript<T>(key: String) -> T?  where T: Codable {
        get {
            if let object: T? = try? fetchObject(forKey: key) {
                return object
            } else {
                return nil
            }
        }
        set {
            if let object = newValue {
                try? save(object, forKey: key)
            } else {
                removeObject(forKey: key)
            }
        }
    }
}

extension KeyValueDB {

    private func save<T>(_ object: T, forKey key: String) throws where T: Encodable {
        let data = try object.archivedData()
        db.setObject(data, forKey: key)
    }

    private func fetchObject<T>(forKey key: String) throws -> T? where T: Decodable {
        if let data = db.object(forKey: key) as? Data {
            return try T(archivedData: data)
        } else {
            return nil
        }
    }

    private func removeObject(forKey key: String) {
        db.removeObject(forKey: key)
    }
}

fileprivate class KeyValueDBs {

    private var dbs: [String: LevelDB] = [:]

    static let shared = KeyValueDBs()

    private init() {}

    func db(withName name: String) -> LevelDB {
        if let db = dbs[name] {
            return db
        }
        let db = LevelDB.databaseInLibrary(withName: name) as! LevelDB
        dbs[name] = db
        return db
    }
}
