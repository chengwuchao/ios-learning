//
//  LabelButtonViewController.swift
//  UITest
//
//  Created by wuchao-mac on 2023/9/6.
//

import UIKit

class LabelButtonViewController: UIViewController {
    
     var label: UILabel!;
    
    
    @objc func onClick(_sender: AnyObject) {
        
        
        
        self.label.text = "HelloWorld";
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let screen = UIScreen.main.bounds;
        
        let labelWidth: CGFloat = 90;
        let labelHeight: CGFloat = 20;
        let labelTopView: CGFloat = 150;
        self.label = UILabel(frame: CGRect(x: (screen.size.width - labelWidth) / 2, y: labelTopView, width: labelWidth, height: labelHeight));
        
        self.label.text = "Label";
        
        self.label.textAlignment = .center;
        self.view.addSubview(self.label)
        
        
        let button = UIButton(type: UIButton.ButtonType.system);
        
        let buttonWidth: CGFloat = 60;
        let buttonHeight: CGFloat = 20;
        let buttonTopView: CGFloat = 250;
        
        button.setTitle("OK", for: UIControl.State())
        
        button.frame = CGRect(x: (screen.size.width - buttonWidth) / 2, y: buttonTopView, width: buttonWidth, height: buttonHeight)
        
        button.addTarget(self, action: #selector( onClick), for: .touchUpInside)
        
        self.view.addSubview(button)
        
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
