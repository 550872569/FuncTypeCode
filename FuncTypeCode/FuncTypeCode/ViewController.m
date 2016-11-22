//
//  ViewController.m
//  FuncTypeCode
//
//  Created by Yan on 16/11/2.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "ViewController.h"
#import "YYFuncTypeModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self func];
}

- (void)func {
    YYFuncTypeModel *model = [YYFuncTypeModel new];
    [model run];
    [model eat];
    [[model eatFunc] runFunc];
    [[model runFunc] eatFunc];
    [[model eatFunc] eat];
    [[model runFunc] run];
    [[[[[[model runFunc]runFunc]runFunc] runFunc] eatFunc] eatFunc];
    [model runBlock];
    model.runBlock();
    model.eatBlock().runBlock();
    model.blockRun(100).blockEat(@"water");
    model.blockEat(@"food").runBlock(10);
}

@end
