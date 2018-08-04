//
//  TableViewCell1.h
//  CheckList
//
//  Created by EthanLin on 2018/7/21.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListModel2.h"


@protocol CheckButtonDidTappedProtocol

-(void) checkButtonDidTapped:(NSIndexPath*) index;

@end

@interface TableViewCell1 : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *finishedButton;
- (IBAction)buttonTapped:(id)sender;
@property (weak, nonatomic) id<CheckButtonDidTappedProtocol> delegate;
@property (strong, nonatomic) NSIndexPath* index;
-(void) updateUI:(ListModel2*)model;

@end
