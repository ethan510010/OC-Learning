//
//  SecondViewController.h
//  Callback
//
//  Created by EthanLin on 2018/7/29.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SecondViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *colorPickerView;
@property (weak, nonatomic) IBOutlet UIButton *ensureButton;
- (IBAction)ensureAction:(UIButton *)sender;

-(void) passColorToFirstVC: (void (^)(NSString* colorName)) callbackBlock;
@end
