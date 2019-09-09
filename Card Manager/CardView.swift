import UIKit

class CardView: UIView {
    @IBOutlet weak var userPhotoImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userPhoneLabel: UILabel!
    @IBOutlet var userInfoContainersCollection: [UIView]!
    var infoCornerRadius:CGFloat = 15
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureViews()
    }

    
    private func configureViews(){
        userPhotoImage.layer.cornerRadius = userPhotoImage.frame.width/5
        
        userPhotoImage.layer.borderWidth = 1
        userPhotoImage.layer.borderColor = #colorLiteral(red: 0.6435596447, green: 0.3564708259, blue: 0.2119384444, alpha: 1)
        userPhotoImage.contentMode = .scaleAspectFill
        userPhotoImage.clipsToBounds = true
        
        for element in userInfoContainersCollection{
            element.layer.cornerRadius = self.infoCornerRadius
        }
        
    }
    
    static func fromNib() -> UIView{
        return UINib(nibName: "CardView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
    
    
//    func testCustom(_ user: User, counter: Int){
//        userPhotoImage.image = UsersCardManager.shared.usersArray[counter].photo
//        userNameLabel.text = UsersCardManager.shared.usersArray[counter].name
//        userPhoneLabel.text = UsersCardManager.shared.usersArray[counter].phone
//    }
    
}
