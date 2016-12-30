//
//  FeedmeViewController.swift
//  FeedMe Mobile
//
//  Created by Ha Viet Duc on 12/29/16.
//  Copyright © 2016 Ha Viet Duc. All rights reserved.
//

import UIKit

class FeedmeViewController: UIViewController,UINavigationBarDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var cartStoreView: UIWebView!
    @IBOutlet weak var menu: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        revealViewController().rearViewRevealWidth = 200
        menu.target = revealViewController()
        menu.action = #selector(SWRevealViewController.revealToggle(_:))
        
        setCartStoreView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setCartStoreView() {
        let url = URL (string: "http://feedme-aptech.azurewebsites.net/delivery.xhtml")
        let requestUrl = URLRequest (url: url!)
        cartStoreView.loadRequest(requestUrl)

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
