//
//  FirstViewController.swift
//  UITest
//
//  Created by wuchao-mac on 2023/9/6.
//


import UIKit

@objc class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 创建视图 viewA
        let viewA = UIView();
        viewA.backgroundColor = UIColor.gray;
        viewA.frame = CGRect(x: 0, y: 0, width: 300, height: 400);
        self.view.addSubview(viewA);
        
        // 创建视图 viewB
        
        let viewB = UIView();
        viewB.backgroundColor = UIColor.green;
        viewB.frame = CGRect(x: 50, y: 100, width: 100, height: 200);
        
        viewA.addSubview(viewB);
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
