//
//  DemoCellModel.h
//  WFDataSourceDemo
//
//  Created by tyl on 15/9/14.
//  Copyright (c) 2015年 中国电信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DemoCellModel : NSObject
@property (nonatomic,   copy) NSString *name;
@property (nonatomic,   copy) NSString *imageName;

@property (nonatomic, assign) CGFloat cellHeight;
@end
