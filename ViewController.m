//
//  ViewController.m
//  UITest
//
//  Created by wuchao-mac on 2023/9/5.
//

#import "ViewController.h"
#import "UITest-Swift.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Do any additional setup after loading the view, typically from a nib.
    tabBarCtrl = [[UITabBarController alloc] init];//要加入的TabBarController
    tabBarCtrl.delegate = self; //
    firstViewCtl = [[FirstViewController alloc] init];
    firstViewCtl.title = @"first view controller";
    firstViewCtl.view.backgroundColor = [UIColor whiteColor];
    firstViewCtl.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"rename first" image: nil tag:1];//自定义tabBarItem,可以贴tabBarItem背景图片，如果不写，tabBarItem的标签将显示为firstViewCtl.title内容
    secondViewCtrl = [[AlertViewController alloc] init];
    secondViewCtrl.title = @"second view controller";
   // secondViewCtrl.view.backgroundColor = [UIColor whiteColor];
    secondViewCtrl.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d",8]; //tabBarItem红色小圈中显示数字
    secondViewCtrl.tabBarItem.tag = 2; //加标示
    NSArray *arryViewContrller = [NSArray arrayWithObjects:firstViewCtl, secondViewCtrl,nil];
    tabBarCtrl.viewControllers = arryViewContrller;
    tabBarCtrl.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);

    [self.view addSubview:tabBarCtrl.view];
 
     
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    NSLog(@"Title22:%@", item.title);
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{

    NSString *strTitle = viewController.title;
    NSLog(@"Title:%@ tag:%ld", strTitle , (long)viewController.tabBarItem.tag);
     if(1 == viewController.tabBarItem.tag){
        viewController.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d", rand()%100];
    }
}


@end
