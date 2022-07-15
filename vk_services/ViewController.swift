//
//  ViewController.swift
//  vk_services
//
//  Created by Ринат Афиатуллов on 15.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Серивисы VK"
        // Do any additional setup after loading the view.
    }
    var categories = AppCategory.allApps

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories[section].apps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        
        let app = categories[indexPath.section].apps[indexPath.row]
        
        cell.textLabel?.text = app.name
        cell.textLabel?.numberOfLines = 0
        
        cell.detailTextLabel?.text = app.description
        cell.detailTextLabel?.numberOfLines = 0
        
        cell.imageView?.image = app.icon
        
        let itemSize = CGSize.init(width: 55, height: 55)
        UIGraphicsBeginImageContextWithOptions(itemSize, false, UIScreen.main.scale);
        let imageRect = CGRect.init(origin: CGPoint.zero, size: itemSize)
        cell.imageView?.image!.draw(in: imageRect)
        cell.imageView?.image! = UIGraphicsGetImageFromCurrentImageContext()!;
        UIGraphicsEndImageContext();
        
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let app = categories[indexPath.section].apps[indexPath.row]
        //вариант с universal URLs (не все установленные приложения открываются)
        /*guard let url = URL(string: app.link) else {return}
        UIApplication.shared.open(url) */
        
        //вариант с URL schemes
        guard let appURL = URL(string: app.appURL) else {return}
        
        if UIApplication.shared.canOpenURL(appURL){
            //deep link
            UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
        } else {
            //website link
            let url = URL(string: app.link)!
            UIApplication.shared.open(url)
        }
        
        
    }
    
}

