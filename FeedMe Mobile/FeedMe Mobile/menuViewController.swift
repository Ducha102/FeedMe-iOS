//
//  menuViewController.swift
//  FeedMe Mobile
//
//  Created by Ha Viet Duc on 12/29/16.
//  Copyright © 2016 Ha Viet Duc. All rights reserved.
//

import UIKit

class menuViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    var menuNameArray:Array = [String]()
    var iconArray:Array = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        menuNameArray = ["Gian Hàng","Hướng Dẫn","Giới Thiệu","Đơn Hàng"," ","FeedMe","","","","","","","",]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuNameArray.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuCell
        
        cell.menuLabel.text! = menuNameArray[indexPath.row]
       // cell.imgIcon.image = iconArray[indexPath.row]
        
        return cell

    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let revealviewcontroller:SWRevealViewController = self.revealViewController()
        
        let cell:MenuCell = tableView.cellForRow(at: indexPath) as! MenuCell
        print(cell.menuLabel.text!)
        if cell.menuLabel.text! == "Gian Hàng"
        {
            print("Danh Mục Sản Phẩm")
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            
            //newViewcontroller.lblText.text = "Danh Mục Sản Phẩm"
            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
            
            
        }
        if cell.menuLabel.text! == "Hướng Dẫn"
        {
            print("Tất Cả Sản Phẩm")
            
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "FeedmeViewController") as! FeedmeViewController
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            
            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
        }
        
        
        if cell.menuLabel.text! == "Giới Thiệu"
        {
            //IntroFoodViewController
           
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "IntroFoodViewController") as! IntroFoodViewController
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            
            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
        }
        
        if cell.menuLabel.text! == "Đơn Hàng"
        {
            print("Tính năng chưa hoạt động")
        }
        
        if cell.menuLabel.text! == "Đơn Hàng"
        {
            print("Tính năng chưa hoạt động")
        }

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
