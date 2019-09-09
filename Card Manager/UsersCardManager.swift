
import Foundation
import UIKit

class UsersCardManager: NSObject{
    static let shared = UsersCardManager()
    private override init() {}
    var index = -1
    let usersArray = [
        User(photo: #imageLiteral(resourceName: "Amelia"), name: "Amelia", phone: "+3564878246"),
        User(photo: #imageLiteral(resourceName: "Chloe"), name: "Chloe", phone: "+7256478565"),
        User(photo: #imageLiteral(resourceName: "Harry"), name: "Harry", phone: "+98452365"),
        User(photo: #imageLiteral(resourceName: "James"), name: "James", phone: "+72144658994"),
        User(photo: #imageLiteral(resourceName: "Lily"), name: "Lily", phone: "+12345679546"),
        User(photo: #imageLiteral(resourceName: "Mark"), name: "Mark", phone: "+987654345612"),
        User(photo: #imageLiteral(resourceName: "Matthew"), name: "Matthew", phone: "+80123901458"),
        User(photo: #imageLiteral(resourceName: "Olivia"), name: "Olivia", phone: "+465314587"),
        User(photo: #imageLiteral(resourceName: "Ruby"), name: "Ruby", phone: "+9645685231"),
        User(photo: #imageLiteral(resourceName: "Thomas"), name: "Thomas", phone: "+49532168457")
    ]
    var buttonArray = [UIButton]()
    
    func checkIndex() -> Int{
        let size = usersArray.count
        index+=1
        if index != size {
            return index
        }else {
            index = 0
            return index
        }
        
        
    }
    
}
