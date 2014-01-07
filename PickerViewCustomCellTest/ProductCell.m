//
//  ProductCell.m
//  PickerViewCustomCellTest
//
//  Created by Jinho Son on 2014. 1. 7..
//  Copyright (c) 2014년 STD1. All rights reserved.
//

#import "ProductCell.h"

@implementation ProductCell

// 제품정보를 셀로반영
- (void)setProductInfo:(Product *)item
{
    // 뷰에반영
    self.productName.text = item.name;
    self.productPrice.text = item.price;
    self.productImage.image = [UIImage imageNamed:item.imageName];
}

@end
