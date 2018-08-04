//
//  SecondViewController.h
//  Delegate
//
//  Created by EthanLin on 2018/7/29.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PassDataDelegate
-(void) passDataDelegate:(NSString*) colorName;
@end

@interface SecondViewController: UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *colorPickerView;
@property (weak, nonatomic) IBOutlet UIButton *ensureButton;
- (IBAction)ensureAction:(UIButton *)sender;
@property (weak, nonatomic) id<PassDataDelegate> delegate;

@end
