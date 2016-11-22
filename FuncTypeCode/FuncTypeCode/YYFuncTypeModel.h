//
//  YYFuncTypeModel.h
//  FuncTypeCode
//
//  Created by Yan on 16/11/2.
//  Copyright © 2016年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YYFuncTypeModel : NSObject

- (void)run;

- (void)eat;

- (nonnull YYFuncTypeModel *)runFunc;

- (nonnull YYFuncTypeModel *)eatFunc;

- (nonnull void(^)())runBlock;

- (YYFuncTypeModel * (^)())eatBlock;

- (YYFuncTypeModel * (^)(NSString *food))blockEat;

- (YYFuncTypeModel * (^)(double mater))blockRun;

@end
