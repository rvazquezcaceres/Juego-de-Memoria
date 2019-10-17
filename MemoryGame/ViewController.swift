//
//  ViewController.swift
//  MemoryGame
//
//  Created by alumnos on 15/10/2019.
//  Copyright © 2019 alumnos. All rights reserved.
//

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
    
    var imagesShowed = [UIImage]()

    @IBOutlet weak var players: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func playerRandom(_ sender: Any) {
        var i = 0
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {timer in
           if i < 8 {
            self.changer()
            self.imagesShowed.append(self.players.image!)
            print(self.players.image!)
            }
            i+=1
            })
        
        
    }
    
    func changer(){
        let random = arc4random_uniform(UInt32(images.count))
            
        switch random {
        case 0:
            players.image = UIImage (named: "murray.jpg")
        case 1:
            players.image = UIImage (named: "nadal.jpg")
        case 2:
            players.image = UIImage (named: "thiem.jpg")
        case 3:
            players.image = UIImage (named: "djokovic.jpg")
        case 4:
            players.image = UIImage (named: "tsitsipas.jpg")
        case 5:
            players.image = UIImage (named: "kyrgios.jpg")
        case 6:
            players.image = UIImage (named: "medvedev.jpg")
        case 7:
            players.image = UIImage (named: "federer.jpg")
        default:
            players.image = UIImage (named: "pelota.jpg")
        }
        
        
        
        
        }
        
    }
