 
import UIKit

var imagesShowed = [UIImage]()
var level = 0
 
class ViewController: UIViewController {
    
    let images = [
        UIImage(named: "djokovic.png"),
        UIImage(named: "federer.jpg"),
        UIImage(named: "kyrgios.jpg"),
        UIImage(named: "medvedev.jpg"),
        UIImage(named: "shapovalov.jpg"),
        UIImage(named: "nadal.jpg"),
        UIImage(named: "thiem.jpg"),
        UIImage(named: "tsitsipas.jpg")
    ]
    
    var randomImage: [Int] = []
    

    
    @IBOutlet weak var players: UIImageView!
    @IBOutlet weak var levelEasy: UIButton!
    @IBOutlet weak var levelMedium: UIButton!
    @IBOutlet weak var levelHard: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        levelEasy.isHidden = false
        levelMedium.isHidden = false
        levelHard.isHidden = false
        players.image = UIImage(named: "pelota")
    }
    @IBAction func easyLevel(_ sender: Any) {
        level = 3
        playerRandom()
    }
    
    @IBAction func mediumLevel(_ sender: Any) {
        level = 5
        playerRandom()
    }
    
    @IBAction func hardLevel(_ sender: Any) {
        level = 7
        playerRandom()
    }
    
    //Lo que hace este método es, sacar un random de unas imagenes y mostrarlas sin repetir, y cuando se muestra las añado en un array que se usa en la siguiente pantalla para guardar el orden de las imagenes mostradas
    func playerRandom() {
        var h = 0
        var i = 0
        levelEasy.isHidden = true
        levelMedium.isHidden = true
        levelHard.isHidden = true
        imageRandom()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {timer in
           if i < level {
            self.players.image = self.images[self.randomImage[i]]
            imagesShowed.append(self.players.image!)
            print(self.players.image!)
            }
            i+=1
            h+=1
            if h > level {
                self.performSegue(withIdentifier: "chooseScreen", sender: nil)
                timer.invalidate()
                
            }
            })                                      
    }
    
    //Este es el método que genera el orden random de las imagenes
    func imageRandom(){
        for i in 0...level {
            randomImage.append(i)
        }
        randomImage.shuffle()
    }
 }
