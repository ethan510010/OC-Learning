//
//  DemoViewController.m
//  CheckList
//
//  Created by EthanLin on 2018/7/21.
//  Copyright © 2018 EthanLin. All rights reserved.
//

#import "DemoViewController.h"
#import "ListModel2.h"
#import "TableViewCell1.h"

@interface DemoViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property  (strong, nonatomic) NSMutableArray* dataArray;

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    // Do any additional setup after loading the view.
    
//    ListModel2* data1 = [[ListModel2 alloc] init];
//    data1.title = @"S1";
//    data1.finished = NO;
//    ListModel2* data2 = [[ListModel2 alloc] init];
//    data2.title = @"s2";
//    data2.finished = NO;
    ListModel2* data1 = [[ListModel2 alloc] initWithTitle:@"S1" finished:NO];
    ListModel2* data2 = [[ListModel2 alloc] initWithTitle:@"S2" finished:NO];
    self.dataArray = [NSMutableArray arrayWithObjects:data1, data2, nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell1* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    [cell updateUI: [self.dataArray objectAtIndex:indexPath.row] ];
    cell.index = indexPath;
    cell.delegate = self;
    return cell;
}

- (void)checkButtonDidTapped:(NSIndexPath *)index{
    ListModel2* chooseList =  [self.dataArray objectAtIndex:index.row];
    chooseList.finished = !chooseList.finished;
    [self.tableView reloadRowsAtIndexPaths:[NSArray arrayWithObjects:index, nil] withRowAnimation:UITableViewRowAnimationAutomatic];
//    [self.tableView reloadRowsAtIndexPaths:index withRowAnimation:UITableViewRowAnimationAutomatic];
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
