//
//  SecondViewController.swift
//  UITest
//
//  Created by wuchao-mac on 2023/9/6.
//

import UIKit





class SecondViewController: UIViewController {

    @IBOutlet weak var table1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screen = UIScreen.main.bounds;
        let labelWidth:CGFloat = screen.width;
        let labelHeight:CGFloat = 20;
        let labelTopView:CGFloat = 150;
        
        let frame = CGRect(x: (screen.size.width - labelWidth) / 2, y: labelTopView, width: labelWidth, height: labelHeight);
        let label = UILabel(frame: frame);
        label.text = "Hello World";
        
        label.textAlignment = NSTextAlignment.center;
        
       //  self.view.addSubview(label);
        
       // let owner = UIView(frame: CGRect(x:700,y:400, width: 40, height: 60 ))
        
        let labelButton = UINib(nibName: "LabelButtonView", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! UIView;
        
        labelButton.frame = CGRect(x: (screen.size.width - 74) / 2, y: (screen.size.height - 31) / 2, width: 74, height: 31);
        
        let label2 = LabelButtonView.initUI();
        label2.frame = CGRect(x: (screen.size.width - labelWidth) / 2, y: labelTopView, width: labelWidth, height: labelHeight)
        label2.textAlignment = NSTextAlignment.center;
        
      //  self.view.addSubview(label2);
        
         labelButton.isUserInteractionEnabled = true
        
        self.view.addSubview(labelButton);
        
      
        
        
        
        
        

//      let myView =  Bundle.main.loadNibNamed("LabelViewController", owner: self, options: nil)![0] as! UIView
//
//        myView.backgroundColor = UIColor.red;
//
    
       

        // Do any additional setup after loading the view.
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
