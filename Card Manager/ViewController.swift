
import UIKit

class ViewController: UIViewController {
    @IBOutlet var containerCardViewCollection: [UIView]!
    let containerCornerRadius:CGFloat = 15
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createXib()
    }
    
    
    func createXib(){
        
        for element in self.containerCardViewCollection{
            element.layer.cornerRadius = self.containerCornerRadius
            
            guard let cardView = CardView.fromNib() as? CardView
                else {
                    return
            }
            
            cardView.frame.size = element.frame.size
            cardView.layer.cornerRadius = self.containerCornerRadius
            
            cardView.userPhotoImage.image = UsersCardManager.shared.usersArray[count].photo
            cardView.userNameLabel.text = UsersCardManager.shared.usersArray[count].name
            cardView.userPhoneLabel.text = UsersCardManager.shared.usersArray[count].phone
            
            element.addSubview(cardView)
            self.createButton(element, self.count)
            
            self.count+=1
        }
    }
    
    func createButton(_ forView: UIView, _ counterTag: Int){
        let cardButton = UIButton(frame: CGRect(x: 0, y: 0, width: forView.frame.width, height: forView.frame.height))
        cardButton.addTarget(self, action: #selector(showUserCard), for: .touchUpInside)
        cardButton.layer.zPosition = 1
        cardButton.tag = counterTag
        forView.addSubview(cardButton)
        //UsersCardManager.shared.buttonArray.append(cardButton)
    }
    
    @objc func showUserCard(sender: UIButton!) {
        guard let userCard = UserCard.fromNib() as? UserCard
            else {
                return
        }
        
        userCard.frame.size = self.view.frame.size
        userCard.layer.cornerRadius = self.containerCornerRadius
        
        userCard.userCardPhotoImage.image = UsersCardManager.shared.usersArray[sender.tag].photo
        userCard.userCardNameLabel.text = UsersCardManager.shared.usersArray[sender.tag].name
        userCard.userCardPhoneLabel.text = UsersCardManager.shared.usersArray[sender.tag].phone
        userCard.layer.zPosition = 2
        self.view.addSubview(userCard)
        self.createClosingButton(userCard)
    }
    
    func createClosingButton(_ forUserCardView: UIView){
        let closeButton = UIButton(frame: CGRect(x: 0, y: 0, width: forUserCardView.frame.width, height: forUserCardView.frame.height))
        closeButton.addTarget(self, action: #selector(closeUserCard), for: .touchUpInside)
        closeButton.layer.zPosition = 3
        forUserCardView.addSubview(closeButton)
    }
    
    @objc func closeUserCard(sender: UIButton!) {
        sender.superview?.removeFromSuperview()
    }
    
}

