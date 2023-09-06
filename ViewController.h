//
//  ViewController.h
//  UITest
//
//  Created by wuchao-mac on 2023/9/5.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITabBarDelegate>
{
    UITabBarController *tabBarCtrl;
    UIViewController *firstViewCtl;
    UIViewController *secondViewCtrl;
}


@end

