//
//  SecondViewController.m
//  Delegate
//
//  Created by EthanLin on 2018/7/29.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()
@property (strong,nonatomic) NSArray* colorArray;
@property (strong,nonatomic) NSString* colorName;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _colorName = @"Red";
    self.colorArray = [NSArray arrayWithObjects:@"Red",@"Green",@"Blue", nil];
    _colorPickerView.delegate = self;
    _colorPickerView.dataSource = self;
//    self.colorPickerView.delegate = self;
//    self.colorPickerView.dataSource = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return _colorArray.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    NSString* selectedColor = self.colorArray[row];
    return selectedColor;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSString* selectedColorString = _colorArray[row];
    _colorName = selectedColorString;
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
    
    ViewController* firstVC = self.navigationController.viewControllers.firstObject;
    self.delegate = firstVC;
    [_delegate passDataDelegate:_colorName];ㄋ
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
