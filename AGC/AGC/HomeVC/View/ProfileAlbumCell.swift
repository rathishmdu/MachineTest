//
//  ProfileAlbumCell.swift
//  AGC
//
//  Created by GIS204 on 07/11/21. 
//

import UIKit

class ProfileAlbumCell: UICollectionViewCell {
    
    @IBOutlet weak var profileAlbumImgView: UIImageView!
    
    var photo: ProfileImages!{
        didSet{
            self.profileAlbumImgView.image = UIImage(named:self.photo.profileImage)
        }
    }
}

class ProfileImages {

    let profileImage: String

    init(profileImage: String) {
        self.profileImage = profileImage
    }
}
