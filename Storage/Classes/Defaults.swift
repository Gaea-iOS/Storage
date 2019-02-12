//
//  Defaults.swift
//  Storage
//
//  Created by 王小涛 on 2019/1/29.
//

import Foundation

public class Defaults: KeyValueStorage {

    private let userDefaults: UserDefaults

    public static let `standard` = Defaults()

    private init() {
        userDefaults = UserDefaults.standard
    }

    public init?(suiteName: String?) {
        guard let defaults = UserDefaults(suiteName: suiteName) else {
            return nil
        }
        userDefaults = defaults
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
                do {
                    try save(object, forKey: key)
                } catch {
                    print("\(self) save object: \(String(describing: newValue)) failed, error = \(error)")
                }
            } else {
                removeObject(forKey: key)
            }
        }
    }
}

extension Defaults {

    private func save<T>(_ object: T, forKey key: String) throws where T: Encodable {
        let data = try object.archivedData()
        userDefaults.set(data, forKey: key)
    }

    private func fetchObject<T>(forKey key: String) throws -> T? where T: Decodable {
        if let data = userDefaults.data(forKey: key) {
            return try T(archivedData: data)
        } else {
            return nil
        }
    }

    private func removeObject(forKey key: String) {
        userDefaults.removeObject(forKey: key)
    }
}
