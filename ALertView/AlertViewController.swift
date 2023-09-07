//
//  AlertViewController.swift
//  UITest
//
//  Created by wuchao-mac on 2023/9/7.
//

import UIKit

class AlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let screen = UIScreen.main.bounds;
        
        let buttonAlertView = UIButton(type: .system);
        buttonAlertView.setTitle("Test 警告框", for: UIControl.State())
        
        let buttonAlertVieWidth: CGFloat = 100;
        let buttonAlertViewHeight: CGFloat = 30;
        let buttonAlertViewTopView: CGFloat = 130;
        
        
        buttonAlertView.frame = CGRect(x: (screen.size.width - buttonAlertVieWidth) / 2, y: buttonAlertViewTopView, width: buttonAlertVieWidth, height: buttonAlertViewHeight)
        
        
        self.view.addSubview(buttonAlertView);
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
