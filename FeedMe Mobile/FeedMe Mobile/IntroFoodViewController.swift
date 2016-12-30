//
//  IntroFoodViewController.swift
//  FeedMe Mobile
//
//  Created by Ha Viet Duc on 12/29/16.
//  Copyright © 2016 Ha Viet Duc. All rights reserved.
//

import UIKit

class IntroFoodViewController: UIViewController, UINavigationBarDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var IntroducView: UIWebView!
    
    @IBOutlet weak var menu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        revealViewController().rearViewRevealWidth = 200
        menu.target = revealViewController()
        menu.action = #selector(SWRevealViewController.revealToggle(_:))
        setIntroducView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setIntroducView() {
        let url = URL(string: "http://feedme-aptech.azurewebsites.net/introduction.xhtml")
        let requestUrl = URLRequest (url: url!)
        IntroducView.loadRequest(requestUrl)
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
