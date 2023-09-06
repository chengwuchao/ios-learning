//
//  LabelButtonView.swift
//  UITest
//
//  Created by wuchao-mac on 2023/9/6.
//

import UIKit

class LabelButtonView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    class func initUI() -> UILabel {
        let label = UILabel();
        label.text = "Chengwuchao";
        label.textColor = UIColor.yellow;
        return label;
        
        
    }
    
    class func instanceFromNib() -> LabelButtonView {
        return UINib(nibName: "LabelButtonView", bundle: nil).instantiate(withOwner:  nil, options: nil)[0] as! LabelButtonView;
            }
    
    

}
