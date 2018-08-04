//
//  SecondViewController.m
//  Callback
//
//  Created by EthanLin on 2018/7/29.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@property (nonatomic,strong) NSArray* pickerArray;
@property (nonatomic,strong) NSString* defaultColor;

@end

@implementation SecondViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.pickerArray = [NSArray arrayWithObjects:@"Red",@"Green",@"Blue", nil];
    self.defaultColor = @"Red";
    _colorPickerView.delegate = self;
    _colorPickerView.dataSource = self;
    // Do any additional setup after loading the view.
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

- (IBAction)ensureAction:(UIButton *)sender {
    //把值傳回去
//    self.completion(_defaultColor);
//    self.completion = ^(NSString *color) {
//        ViewController* firstVC = self.navigationController.viewControllers.firstObject;
//        firstVC.colorFromSecondVC = color;
//    };
    [self passColorToFirstVC:^(NSString *colorName) {
        ViewController* firstVC = self.navigationController.viewControllers.firstObject;
        firstVC.colorFromSecondVC = colorName;
    }];
    [self.navigationController popToRootViewControllerAnimated:YES];
}



- (void)passColorToFirstVC:(void (^)(NSString *))callbackBlock{
    callbackBlock(_defaultColor);
}

- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.pickerArray.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    NSString* eachRowTitle = self.pickerArray[row];
    return eachRowTitle;
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSString* selectedColor = self.pickerArray[row];
    _defaultColor = selectedColor;
    NSLog(@"%@",_defaultColor);
}

@end
