//
//  LoginCell.swift
//  AGC
//
//  Created by GIS204 on 07/11/21. 
//

import UIKit

class LoginCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var user: AppInfoDetails!{
        didSet{
            self.imgView.image = UIImage(named:self.user.infoImage)
            self.lblName.text = self.user.title
            self.lblDesc.text = self.user.subTitle
        }
    }
}

class AppInfoDetails {
    
    let infoImage: String
    let title: String
    let subTitle: String
    
    init(infoImage: String, title: String, subTitle: String) {
        self.infoImage = infoImage
        self.title = title
        self.subTitle = subTitle
    }
}
