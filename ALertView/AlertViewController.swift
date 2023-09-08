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
    
    @objc func testAlertView() {
        let alertController: UIAlertController = UIAlertController(title: "Alert", message: "Alert text goes here", preferredStyle: UIAlertController.Style.alert)
        
        
        let noAction = UIAlertAction(title: "NO", style: .default) { UIAlertAction in
          print("Tap NO Button")
        }
        
        let yesAction = UIAlertAction(title: "YES", style: .default) { UIAlertAction in
          print("Tap YES Button")
        }
        
        alertController.addAction(noAction)
        alertController.addAction(yesAction)
        
        
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
