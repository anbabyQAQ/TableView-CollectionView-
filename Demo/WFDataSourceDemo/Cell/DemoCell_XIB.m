//
//  DemoCell_XIB.m
//  WFDataSourceDemo
//
//  Created by tyl on 15/9/14.
//  Copyright (c) 2015年 中国电信. All rights reserved.
//

#import "DemoCell_XIB.h"
#import "DemoCellModel_XIB.h"

@interface DemoCell_XIB ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@end

@implementation DemoCell_XIB

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)configCellWithItem:(DemoCellModel_XIB *)item
{
    self.titleLabel.text = item.title;
    self.infoLabel.text = item.subTitle;
}
@end
