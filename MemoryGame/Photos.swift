//
//  ViewController.swift
//  MemoryGame
//
//  Created by alumnos on 15/10/2019.
//  Copyright © 2019 alumnos. All rights reserved.
//

import UIKit



class Photos: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    
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
    @IBOutlet weak var fotos: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fotos.dataSource = self
        fotos.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "ImagenCelda", for: indexPath) as! PhotoCollectionViewCell
        celda.imagen.image = images[indexPath.row]
        return celda
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(imagesShowed)
    }
    
    
}
