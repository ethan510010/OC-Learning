//
//  ViewController.m
//  OCPrepare
//
//  Created by EthanLin on 2018/7/21.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (IBAction)perform:(id)sender {
    [self performSegueWithIdentifier:@"performSecond" sender:nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"performSecond"]){
    SecondViewController* secondVC = segue.destinationViewController;
    secondVC.textFromVC1 = self.textField.text;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
