//
//  HomeVC.swift
//  AGC
//
//  Created by GIS204 on 07/11/21. 
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let photos = [ ProfileImages(profileImage: "Ankara"),
                   ProfileImages(profileImage: "Antalya"),
                   ProfileImages(profileImage: "Aydin"),
                   ProfileImages(profileImage: "Bodrum"),
                   ProfileImages(profileImage: "Canakkale"),
                   ProfileImages(profileImage: "Cappadocia")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension HomeVC: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileAlbumCell", for: indexPath) as! ProfileAlbumCell
        cell.profileAlbumImgView.image = UIImage(named: self.photos[indexPath.row].profileImage)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 168, height: 168)
        }
    
    
}
