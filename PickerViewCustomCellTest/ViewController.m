//
//  ViewController.m
//  PickerViewCustomCellTest
//
//  Created by Jinho Son on 2014. 1. 7..
//  Copyright (c) 2014년 STD1. All rights reserved.
//

#import "ViewController.h"
#import "ProductCell.h"
#import "Product.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
{
    NSArray *data;
}
@end

@implementation ViewController


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRODUCT_CELL" forIndexPath:indexPath];
    
    // 셀내용 갱신
    Product *item = data[indexPath.row];
    [cell setProductInfo:item];
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 제품목록
    data = @[[Product product:@"Baseball" price:@"100" image:@"Baseball.png"],
             [Product product:@"Basketball" price:@"200" image:@"Basketball.png"],
             [Product product:@"Football" price:@"250" image:@"Football.png"],
             [Product product:@"Rugbyball" price:@"300" image:@"Rugbyball.png"],
             [Product product:@"Wilson" price:@"999" image:@"Wilsonball.jpg"]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
