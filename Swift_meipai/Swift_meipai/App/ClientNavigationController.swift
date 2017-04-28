//
//  ClientNavigationController.swift
//  Swift_meipai
//
//  Created by qq on 2017/2/1.
//  Copyright © 2017年 fangxian. All rights reserved.
//

import UIKit

class ClientNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let navBar = UINavigationBar.appearance();
        navBar.barTintColor = UIColor.red
        navBar.tintColor = UIColor.white
        // 设置导航栏中的标题的文字外观
        navBar.titleTextAttributes = [NSFontAttributeName : UIFont.systemFont(ofSize: 16)]//NSForegroundColorAttributeName : [UIColor.black]
        
    }
    
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "lefterbackicon_titlebar_28x28_"), style: .plain, target: self, action: #selector(navigationBack))
        }
        super.pushViewController(viewController, animated: true)
    }
    
    func navigationBack() {
        popViewController(animated: true)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
