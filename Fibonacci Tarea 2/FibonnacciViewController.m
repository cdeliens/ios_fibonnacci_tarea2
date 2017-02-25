//
//  FibonnacciViewController.m
//  Fibonacci Tarea 2
//
//  Created by Christian Deliens on 2/18/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "FibonnacciViewController.h"
#import "FibonacciTableViewCell.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"


@interface FibonnacciViewController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *fibonacciArray;

@end

@implementation FibonnacciViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[FibonacciTableViewCell getClassName]];
    [self initFibonacciArray];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.fibonacciArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FibonacciTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[FibonacciTableViewCell getClassName]];
    [cell setupCellWithNumber:[self.fibonacciArray objectAtIndex:indexPath.row]];
    
    
    return cell;
}


-(void)initFibonacciArray
{
    int range = 100;
    self.fibonacciArray = [[NSMutableArray alloc]init];
    for (int k =0; k< range; k++)
    {
        if(k<2)
        {
            [self.fibonacciArray addObject:[NSString stringWithFormat:@"%d",k]];
            continue;
        }
        else
        {
            int fib = [[self.fibonacciArray objectAtIndex:k-2] intValue] + [[self.fibonacciArray objectAtIndex:k-1] intValue];
            [self.fibonacciArray addObject:[NSString stringWithFormat:@"%d",fib]];
        }
    }
}
@end
