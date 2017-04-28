//
//  ViewController.swift
//  Swift_meipai
//
//  Created by qq on 2017/2/1.
//  Copyright © 2017年 fangxian. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,JKHTTPPageRefresDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        APIAccountViewModel.shared().requestToLogin(withPhoneNumber: "13888445020", password: "123456", type: "1") { (resp, AccountModel, AccountAdditionalModel) in
            
            if (resp?.isValid)!{
//                print(resp?.originalData! ?? AnyObject.self)
                print("2222", AccountModel!, AccountModel?.imgUrl ?? NSString(), AccountModel?.id ?? NSString()) //  模型数据的 输出
            }
            
        }
        
//        print("getUserToken", AccountAdditionalModel.currentAccount().getUserToken())//  缓存数据的 输出
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.yellow;
        
        // 注册Cell
        let nib = UINib(nibName: "MainTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "MainTableViewCell")
        
        //  挂上  上拉、下拉刷新  并开始请求第一页的数据
        self.setUpRefresFooterControllWith(self.tableView, refresDelegate: self)
        self.setUpRefresHeaderControllWith(self.tableView, refresDelegate: self)
        let hiddenBool : Bool = true
        self.setRefresControllFooterHidden(hiddenBool)
        refresHeaderBeginRereshing()
    
    }
    
    
    
    //1.1默认返回一组
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    // 1.2 返回行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 55;
    }
    
    //1.3 返回行高
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        
        return 44;
    }
    
    
    
//    //1.4每组的头部高度
//    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 10;
//    }
//    
//    //1.5每组的底部高度
//    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 1;
//    }
    //1.6 返回数据源
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath as IndexPath) as! MainTableViewCell
        cell.titleLabel.text = "titleLabeltitleLabeltitleLabel"
        return cell
        
        
//        var cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell")
//        if (cell == nil)
//        {
//            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "MainTableViewCell")
//        }
//        cell?.textLabel?.text = "Storyboard"
//         cell?.accessoryType=UITableViewCellAccessoryType.disclosureIndicator;
//        return cell!
        
    }
    
    private func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath)
    {
        
    }
    
// JKHTTPPageRefresDelegate 
    
    func refresHeaderBeginRereshing() {
        
        self.standardPage = APIPageObject.init()
        self.standardPage.requestPageIndex = 1;
        requeseLoadList()
    }
    
    func refresFooterBeginRereshing() {
        
        self.standardPage.requestPageIndex = self.standardPage.requestPageIndex + 1;//self.standardPage.currentPageIndex + 1;
        requeseLoadList()
    }
    
    func requeseLoadList() {
        
        // 接口请求放这里
        let refreshBool : Bool = false
        self.setRefresControllHeaderRefreshing(refreshBool)
        self.setRefresControllFooterRefreshing(refreshBool)
        self.setRefresControllFooterHidden(refreshBool)
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

