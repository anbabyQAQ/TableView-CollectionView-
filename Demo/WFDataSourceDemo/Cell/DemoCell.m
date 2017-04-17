//
//  DemoCell.m
//  WFDataSourceDemo
//
//  Created by tyl on 15/9/14.
//  Copyright (c) 2015年 中国电信. All rights reserved.
//
#import "DemoCell.h"
#import "DemoCellModel.h"

@interface DemoCell ()
@property (nonatomic, strong) UIImageView *cellImageView;
@property (nonatomic, strong) UILabel *nameLabel;
@end

@implementation DemoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.cellImageView = ({
            UIImageView *cellImageView = [UIImageView new];
            cellImageView.backgroundColor = [UIColor blueColor];
            cellImageView;
        });
        [self.contentView addSubview:self.cellImageView];
        
        self.nameLabel = ({
            UILabel *nameLabel = [UILabel new];
            nameLabel;
        });
        [self.contentView addSubview:self.nameLabel];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.cellImageView.frame = CGRectMake(8, 8, self.frame.size.height-16, self.frame.size.height-16);
    self.nameLabel.frame = CGRectMake(CGRectGetMaxX(self.cellImageView.frame) + 10, 0, 100, 30);
    self.nameLabel.center = CGPointMake(self.nameLabel.center.x, CGRectGetMidY(self.cellImageView.frame));
}

- (void)configCellWithItem:(DemoCellModel *)item
{
    self.imageView.image = [UIImage imageNamed:item.imageName];
    self.nameLabel.text = item.name;
}
@end
