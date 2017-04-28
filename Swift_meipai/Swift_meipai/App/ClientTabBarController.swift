//
//  ClientTabBarController.swift
//  Swift_meipai
//
//  Created by qq on 2017/2/1.
//  Copyright © 2017年 fangxian. All rights reserved.
//

import UIKit

class ClientTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBar = UITabBar.appearance()
        tabBar.tintColor = UIColor.red
        // 添加子控制器
        addChildViewControllers()
    }
    
    /**
     *  添加子控制器
     */
    
    private func addChildViewControllers() {
        
        //        addChildViewController(childController: ViewController(), title: "首页", imageName: "home_tabbar_22x22_", selectedImageName: "home_tabbar_press_22x22_")
        
        // 这里即可以代码构建框架各模块的根控制器  当然也可以用UIStoryboard
        addChildVCWithSBName(sbName: "Main", title: "首页", norImageName: "home_tabbar_22x22_", selectedImageName: "home_tabbar_press_22x22_")
        addChildViewController(childController: VideoViewController(), title: "视频", imageName: "video_tabbar_22x22_", selectedImageName: "video_tabbar_press_22x22_")
        addChildViewController(childController: NewCareViewController(), title: "关注", imageName: "newcare_tabbar_22x22_", selectedImageName: "newcare_tabbar_press_22x22_")
        addChildViewController(childController: MineViewController(), title: "我的", imageName: "mine_tabbar_22x22_", selectedImageName: "mine_tabbar_press_22x22_")
    }
    
    
    
    /**
     *  通过代码创建控制器
     *
     *  @param title             tabBarItem标题
     *  @param imageName      默认图片
     *  @param selectedImageName 选中图片
     *
     *
     */
    
    func addChildViewController(childController: UIViewController, title: String, imageName: String, selectedImageName: String) {
        
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: selectedImageName)
        childController.title = title
        let nav = ClientNavigationController(rootViewController: childController)
        addChildViewController(nav)
    }
    
    
    /**
     *  通过一个SB创建控制器
     *
     *  @param sbName            StoryBoard名称
     *  @param title             tabBarItem标题
     *  @param norImageName      默认图片
     *  @param selectedImageName 选中图片
     *
     *
     */
    func addChildVCWithSBName(sbName: String, title: String, norImageName: String, selectedImageName: String) {
        
        
        let sb = UIStoryboard(name: sbName, bundle: nil)
            .instantiateInitialViewController()!
        
        sb.tabBarItem.image = UIImage(named: norImageName)
        sb.tabBarItem.selectedImage = UIImage(named: selectedImageName)
        sb.title = title
        let nav = ClientNavigationController(rootViewController: sb)
        addChildViewController(nav)
        
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
