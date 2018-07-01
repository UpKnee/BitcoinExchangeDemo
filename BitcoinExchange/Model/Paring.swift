import UIKit

class Paring: NSObject {
    
    var pairing_id: String?
    var primary_currency: String?
    var secondary_currency: String?
    var primary_min: String?
    var secondary_min: String?
    var active: String?
    
    init(jsonDict: NSDictionary) {
        pairing_id = jsonDict.object(forKey: "pairing_id") as? String
        primary_currency = jsonDict.object(forKey: "primary_currency") as? String
        secondary_currency = jsonDict.object(forKey: "secondary_currency") as? String
        primary_min = jsonDict.object(forKey: "primary_min") as? String
        secondary_min = jsonDict.object(forKey: "secondary_min") as? String
        active = jsonDict.object(forKey: "active") as? String
    }
    
    func doSomething(_ work: String) {
        
    }
    
}
