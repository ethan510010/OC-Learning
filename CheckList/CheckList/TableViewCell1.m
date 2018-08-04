//
//  TableViewCell1.m
//  CheckList
//
//  Created by EthanLin on 2018/7/21.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "TableViewCell1.h"




@implementation TableViewCell1



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)updateUI:(ListModel2*) model{
    self.titleLabel.text = model.title;
    if (model.finished){

        [self.finishedButton setTitle:@"Finished" forState:UIControlStateNormal];
    }else{
//        NSLog(@"%@", self.finishedButton);
       [self.finishedButton setTitle:@"Not yet" forState:UIControlStateNormal];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)buttonTapped:(id)sender {
    [self.delegate checkButtonDidTapped:self.index];
}
@end
