//
//  LoginVC.swift
//  AGC
//
//  Created by GIS204 on 07/11/21. 
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let appInfoArray = [
        AppInfoDetails(infoImage: "group.pdf", title: "lorem ipsum is used", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco."),
        AppInfoDetails(infoImage: "group2.pdf", title: "lorem ipsum is used", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco."),
        AppInfoDetails(infoImage: "group4.pdf", title: "lorem ipsum is used", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco."),
        AppInfoDetails(infoImage: "group14Copy2.pdf", title: "lorem ipsum is used", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco."),
        AppInfoDetails(infoImage: "group7.pdf", title: "lorem ipsum is used", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco."),
        AppInfoDetails(infoImage: "group10.pdf", title: "lorem ipsum is used", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco."),
        AppInfoDetails(infoImage: "group14.pdf", title: "lorem ipsum is used", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco."),
        AppInfoDetails(infoImage: "group15.pdf", title: "lorem ipsum is used", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerClicked(_ sender: UIButton) {
        let homeVC =  UIStoryboard.homeVC
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = homeVC
    }
    


}

extension LoginVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.appInfoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "LoginCell") as! LoginCell
        cell.imgView.image = UIImage(named:self.appInfoArray[indexPath.row].infoImage)
        cell.lblName.text = self.appInfoArray[indexPath.row].title
        cell.lblDesc.text = self.appInfoArray[indexPath.row].subTitle
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
}

