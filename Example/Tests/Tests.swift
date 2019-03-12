import XCTest
import Storage

class Tests: XCTestCase {

    private let db2 = Defaults.standard
    private let db1 = KeyValueDB(name: "haha1")
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBasicClass() {
        // This is an example of a functional test case.
        db1["int"] = 5
        XCTAssertTrue(db1["int"] == 5, "Pass")

        let url = URL(string: "www.baidu.com")!
        db1["url"] = url
        XCTAssertTrue(db1["url"] == url, "Pass")

        let date = Date()
        db1["date"] = date
        XCTAssertTrue(db1["date"] == date, "Pass")

        db1["bool"] = true
        XCTAssertTrue(db1["bool"] == true, "Pass")

        db1["float"] = 5.6
        XCTAssertTrue(db1["float"] == 5.6, "Pass")

        db1["string"] = "fuck"
        XCTAssertTrue(db1["string"] == "fuck", "Pass")

        struct A: Codable, Equatable {
            let a = "haha"
            let b = 9823
        }
        let a1 = A()
        let a2 = A()
        db1["a"] = a1
        XCTAssert(db1["a"] == a1, "Pass")

        let array = [a1, a2]
        db1["array"] = array
        XCTAssert(db1["array"] == array, "Pass")

        let dic = [5: a1, 7: a2]
        db1["dic"] = dic
        XCTAssert(db1["dic"] == dic, "Pass")

        let set = Set([3,9,19])
        db1["set"] = set
        XCTAssert(db1["set"] == set, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
