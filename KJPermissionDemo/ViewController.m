//
//  ViewController.m
//  KJStstemJurisdictionDemo
//
//  Created by 杨科军 on 2019/9/17.
//  Copyright © 2019 杨科军. All rights reserved.
//

#import "ViewController.h"
#import "KJStstemJurisdictionView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /// 权限界面
    KJStstemJurisdictionView *view = [KJStstemJurisdictionView createStstemJurisdictionViewWithBlock:^(KJStstemJurisdictionView * _Nonnull obj) {
        obj.KJAddView(self.view);
    }];
}


@end
