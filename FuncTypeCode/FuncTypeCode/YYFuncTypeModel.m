//
//  YYFuncTypeModel.m
//  FuncTypeCode
//
//  Created by Yan on 16/11/2.
//  Copyright © 2016年 YY. All rights reserved.
#import "YYFuncTypeModel.h"
@implementation YYFuncTypeModel
- (void)eat {
    NSLog(@"eat");
}
- (void)run {
    NSLog(@"run");
}
- (nonnull YYFuncTypeModel *)eatFunc {
    NSLog(@"eatFunc");
    return self;
}
- (nonnull YYFuncTypeModel *)runFunc {
    NSLog(@"runFunc");
    return self;
}
- (void (^) ())runBlock {
    void(^myBlock)() = ^ {
      NSLog(@"runBlock");
    };
    return myBlock;
}
- (YYFuncTypeModel * (^) ())eatBlock {
    YYFuncTypeModel *(^myBlock)() = ^ {
        NSLog(@"eatBlock");
        return self;
    };
    return myBlock;
}
- (YYFuncTypeModel *(^)(NSString *))blockEat {
    YYFuncTypeModel *(^myBlock)(NSString * food) = ^(NSString *foods) {
        NSLog(@"blockEat");
        return self;
    };
    return myBlock;
}

- (YYFuncTypeModel *(^)(double))blockRun {
    YYFuncTypeModel *(^myBlock)(double) = ^(double mater) {
        NSLog(@"blockRun");
        return self;
    };
    return myBlock;
}
@end
