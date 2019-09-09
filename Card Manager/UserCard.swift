import UIKit

class UserCard: UIView {
    @IBOutlet weak var userCardPhotoImage: UIImageView!
    @IBOutlet weak var userCardNameLabel: UILabel!
    @IBOutlet weak var userCardPhoneLabel: UILabel!
    @IBOutlet var userInfoContainersCollection: [UIView]!
    var infoCornerRadius:CGFloat = 15
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    
    
    private func configureViews(){
        userCardPhotoImage.layer.cornerRadius = userCardPhotoImage.frame.width/5
        
        userCardPhotoImage.layer.borderWidth = 1
        userCardPhotoImage.layer.borderColor = #colorLiteral(red: 0.6435596447, green: 0.3564708259, blue: 0.2119384444, alpha: 1)
        userCardPhotoImage.contentMode = .scaleAspectFill
        userCardPhotoImage.clipsToBounds = true
        
        for element in userInfoContainersCollection{
            element.layer.cornerRadius = self.infoCornerRadius
        }
        
    }
    
    static func fromNib() -> UIView{
        return UINib(nibName: "UserCard", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    } //функция возвращает созданный объект нашего xib
    

}
