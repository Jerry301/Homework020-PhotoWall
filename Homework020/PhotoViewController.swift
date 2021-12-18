//
//  PhotoViewController.swift
//  Homework020
//
//  Created by Chun-Yi Lin on 2021/12/17.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let flowLayout = photoCollectionView.collectionViewLayout as? UICollectionViewFlowLayout
        
        flowLayout?.itemSize = CGSize(width: 110, height: 100)
        flowLayout?.estimatedItemSize = .zero
        flowLayout?.minimumInteritemSpacing = 10
    }
}

extension PhotoViewController: UICollectionViewDataSource, UICollectionViewDelegate {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 29
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(PhotoCollectionViewCell.self)", for: indexPath) as? PhotoCollectionViewCell
        else {return UICollectionViewCell()}
        
        cell.photoImageView.image = UIImage(named: "image\(indexPath.item)")
    
    
        return cell
    }
}
