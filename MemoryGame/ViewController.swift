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

    @IBOutlet weak var players: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playerRandom(_ sender: Any) {
        for _ in 1...4 {
            changer(segundos: 2)
            
        }
        
    }
    
    func changer(segundos: UInt32){
        sleep(segundos)
        let random = arc4random_uniform(8) //returns 0 to 2 randomly
        
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

