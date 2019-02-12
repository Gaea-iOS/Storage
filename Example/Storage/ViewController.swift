//
//  ViewController.swift
//  Storage
//
//  Created by wangxiaotao on 01/29/2019.
//  Copyright (c) 2019 wangxiaotao. All rights reserved.
//

import UIKit
import Storage

struct B: Hashable, Encodable, Decodable {
    var dd = "fuck you"
}

struct A: Codable {

    var a: Bool = false

    var b: String = "wocao"

    var dd = B()

    init() {}
}

class ViewController: UIViewController {

    private let db = Defaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

//        db["d"] = ["5": 5]
//        let d: Int? = db["d"]
        // Do any additional setup after loading the view, typically from a nib.
//        db["a1"] = true
//
//        let a2: Bool? = db["a1"]
//        print("as = \(a2)")

//        let key = A()
//        let a = [key: "B"]
//        db["haha"] = a
//        let b: [A: String]? = db["haha"]
//        print("b = \(b)")
//            do {
//                let a: Int16 = 3265
//                let data = NSKeyedArchiver.archivedData(withRootObject: a)
//                let back = NSKeyedUnarchiver.unarchiveObject(with: data) as? Int8
//                print("back = \(back)")
//
//            }
//
//            do {
//                let a: Double = 3265
//                let data = NSKeyedArchiver.archivedData(withRootObject: a)
//                let back = NSKeyedUnarchiver.unarchiveObject(with: data) as? Float
//                print("back = \(back)")
//        }
//
//        do {
//            let a: String = "3265"
//            let data = NSKeyedArchiver.archivedData(withRootObject: a)
//            let back = NSKeyedUnarchiver.unarchiveObject(with: data) as? String
//            print("back = \(back)")
//        }
//
//        do {
//            let a: URL = URL(string: "http://www.baidu.com")!
//            let data = NSKeyedArchiver.archivedData(withRootObject: a)
//            let back = NSKeyedUnarchiver.unarchiveObject(with: data) as? URL
//            print("back = \(back)")
//        }
//
//        do {
//            let a: Date = Date()
//            let data = NSKeyedArchiver.archivedData(withRootObject: a)
//            let back = NSKeyedUnarchiver.unarchiveObject(with: data) as? Date
//            print("back = \(back)")
//        }



//        let a = (["key" : ["B": 8 ]])
//                db["haha"] = a
//        let b: [String: [String: Int]]? = db["haha"]
//                print("b = \(b)")

//        db["haha"] = a
//        let b: Int8? = db["haha"]
//        print("b = \(b)")

//        UserDefaults.standard.set(255, forKey: "ha")
//        UserDefaults.standard.synchronize()
//        let b = UserDefaults.standard.double(forKey: "ha")
//        print("b = \(b)")
//        let a: UInt8 = 255
////        let data = try! JSONSerialization.data(withJSONObject: a)
////        let b = try! JSONSerialization.jsonObject(with: data, options: .allowFragments)
//        print("b = \(b)")

//        let a: Int = 2555
//        let data = a.data
//        let b = Int(data: data)
//        print("b = \(b)")
//
//        let a: Int = 2555
//        let data = NSKeyedArchiver.archivedData(withRootObject: a)
//
//        let b = NSKeyedUnarchiver.unarchiveObject(with: data) as? Int16
//        print("b = \(b)")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

