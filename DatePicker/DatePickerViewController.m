//
//  DatePickerViewController.m
//  UITest
//
//  Created by wuchao-mac on 2023/9/8.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    CGFloat datePickerWidth = 320;
    CGFloat datePickerHeight = 167;
    
    self.datePicker.frame = CGRectMake(0, 0, datePickerWidth, datePickerHeight);
    
    self.datePicker.locale = [NSLocale localeWithLocaleIdentifier:@"zh-Hans"];
        //设置日期时间模式
      //  self.datePicker.datePickerMode = UIDatePickerModeDateAndTime;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
