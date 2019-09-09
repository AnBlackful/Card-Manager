import Foundation
import UIKit
class User {
    
    var name:String
    var photo:UIImage
    var phone:String
    init(photo:UIImage, name:String, phone:String){
        self.photo = photo
        self.name = name
        self.phone = phone
    }
    
}
