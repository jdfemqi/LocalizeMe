//
//  LocalizeMeViewController.m
//  LocalizeMe
//
//  Created by qiujian on 16/1/31.
//  Copyright © 2016年 qiujian. All rights reserved.
//
// iOS开发-Xcode6应用程序国际化本地化 
// http://my.oschina.net/u/2407613/blog/510794

#import "LocalizeMeViewController.h"

@interface LocalizeMeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *LocaleLabel;
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;

@end

@implementation LocalizeMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLocale* locale = [NSLocale currentLocale];
    NSString* displayNameString = [locale displayNameForKey:NSLocaleIdentifier value:[locale localeIdentifier]];
    
    self.LocaleLabel.text = displayNameString;
    
    self.label1.text = NSLocalizedString(@"One", @"The number 1");
    self.label2.text = NSLocalizedString(@"Two", @"The number 2");
    self.label3.text = NSLocalizedString(@"Three", @"The number 3");
    self.label4.text = NSLocalizedString(@"Four", @"The number 4");
    self.label5.text = NSLocalizedString(@"Five", @"The number 5");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
