//
//  ViewController.swift
//  MemoryGame
//
//  Created by alumnos on 15/10/2019.
//  Copyright © 2019 alumnos. All rights reserved.
//

import UIKit



class Photos: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    var images = [
        UIImage(named: "djokovic.jpg"),
        UIImage(named: "federer.jpg"),
        UIImage(named: "kyrgios.jpg"),
        UIImage(named: "medvedev.jpg"),
        UIImage(named: "murray.jpg"),
        UIImage(named: "nadal.jpg"),
        UIImage(named: "thiem.jpg"),
        UIImage(named: "tsitsipas.jpg")
    ]
    var i = 0
    var lifes = 4
    
    @IBOutlet weak var textAgain: UILabel!
    @IBOutlet weak var fotos: UICollectionView!
    @IBOutlet weak var buttonPlay: UIButton!
    @IBOutlet weak var buttonExit: UIButton!
    @IBOutlet weak var textWin: UILabel!
    @IBOutlet weak var textLose: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fotos.dataSource = self
        fotos.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "ImagenCelda", for: indexPath) as! PhotoCollectionViewCell
        celda.imagen.image = images[indexPath.row]
        return celda
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if i < 7{
            if images[indexPath.row] == imagesShowed[0]{
                imagesShowed.remove(at: 0)
                images.remove(at: indexPath.row)
                collectionView.reloadData()
                print("hola")
                i+=1
            } else {
                lifes-=1
            }
        }
        if lifes > 0{
            textWin.isHidden = false
            textAgain.isHidden = false
            buttonPlay.isHidden = false
            buttonExit.isHidden = false
        } else {
            textLose.isHidden = false
            textAgain.isHidden = false
            buttonPlay.isHidden = false
            buttonExit.isHidden = false
        }
        
        
    }
    
}
