//
//  ViewController.m
//  SKChinaCitySelectorDemo
//
//  Created by 孙恺 on 16/1/13.
//  Copyright © 2016年 sunkai. All rights reserved.
//

#import "ViewController.h"
#import "CityListViewController.h"

@interface ViewController ()<CityListDelegate>
@property (weak, nonatomic) IBOutlet UIButton *cityBtn;

@end

@implementation ViewController

- (void)didSelectCityWithName:(NSString *)cityName {
    [self.cityBtn.titleLabel setText:cityName];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)selectCity:(id)sender {
    CityListViewController *cityListVC = [[CityListViewController alloc] init];
    cityListVC.delegete = self;
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:cityListVC];
    [self presentViewController:navi animated:YES completion:nil];
}

@end
