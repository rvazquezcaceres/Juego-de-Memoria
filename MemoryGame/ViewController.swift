 
import UIKit

class ViewController: UIViewController {
    
    let images = [
        UIImage(named: "djokovic.jpg"),
        UIImage(named: "federer.jpg"),
        UIImage(named: "kyrgios.jpg"),
        UIImage(named: "medvedev.jpg"),
        UIImage(named: "murray.jpg"),
        UIImage(named: "nadal.jpg"),
        UIImage(named: "thiem.jpg"),
        UIImage(named: "tsitsipas.jpg")
    ]
    
    var randomImage: [Int] = []
    var imagesShowed = [UIImage]()

    
    @IBOutlet weak var players: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        performSegue(withIdentifier: "chooseScreen", sender: nil)
    }

    @IBAction func playerRandom(_ sender: Any) {
        var h = 0
        var i = 0
        imageRandom()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {timer in
           if i < 7 {
            self.players.image = self.images[self.randomImage[i]]
            self.imagesShowed.append(self.players.image!)
            print(self.players.image!)
            }
            i+=1
            h+=1
            if h > 7 {
                self.performSegue(withIdentifier: "chooseScreen", sender: nil)
            }
            })                                      
    }
    func imageRandom(){
        for i in 1...7 {
            randomImage.append(i)
        }
        randomImage.shuffle()
    }
    
    }
