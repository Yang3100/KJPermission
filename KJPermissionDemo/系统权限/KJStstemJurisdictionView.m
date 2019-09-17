//
//  KJStstemJurisdictionView.m
//  Winpower
//
//  Created by 杨科军 on 2019/8/23.
//  Copyright © 2019 cq. All rights reserved.
//

#import "KJStstemJurisdictionView.h"
#define _weakself __weak typeof(self) weakself = self
@interface KJStstemJurisdictionView ()
@property (weak, nonatomic) IBOutlet UILabel *OpenLabel;
@property (weak, nonatomic) IBOutlet UIButton *XXButton;
@property (weak, nonatomic) IBOutlet UIButton *NetworkButton;
@property (weak, nonatomic) IBOutlet UIButton *PhotoButton;
@property (weak, nonatomic) IBOutlet UIButton *AddressButton;
@property (weak, nonatomic) IBOutlet UIButton *InformButton;
@property (weak, nonatomic) IBOutlet UIView *BackView;

@end

@implementation KJStstemJurisdictionView

- (void)awakeFromNib{
    [super awakeFromNib];
}

+ (instancetype)createStstemJurisdictionViewWithBlock:(void(^)(KJStstemJurisdictionView *obj))block{
    KJStstemJurisdictionView *view = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([KJStstemJurisdictionView class]) owner:nil options:nil] lastObject];//[[self alloc] initWithFrame:[UIScreen mainScreen].bounds];
    view.frame = [UIScreen mainScreen].bounds;
    [view setUI];
    if (block) {
        block(view);
    }
    [view kDisplay];
    [view setDatas];
    return view;
}
- (void)setUI{
    /// 渐变色
//    CAGradientLayer *gradientLayer = [self.OpenLabel kj_GradientLayerWithColors:@[UIColorHexFromRGB(0xFF260F),UIColorHexFromRGB(0xFF0E3F)] Frame:CGRectMake(0, 0, 285-66, 35) Locations:@[@0.,@1.0] StartPoint:CGPointMake(0, 0) EndPoint:CGPointMake(1, 0)];
//    gradientLayer.cornerRadius = 17.5;
//    gradientLayer.masksToBounds = YES;
//    [self.OpenLabel.layer insertSublayer:gradientLayer atIndex:0];
    _weakself;
//    [self.XXButton kj_addAction:^(UIButton * _Nonnull kButton) {
//        [weakself kDismiss];
//    }];
//    [self.OpenLabel kj_AddTapGestureRecognizerBlock:^(UIView * _Nonnull view, UIGestureRecognizer * _Nonnull gesture) {
        [weakself openNetwork];
        [weakself openPhoto];
        [weakself openAddress];
        [weakself openNotication];
//    }];
}
- (void)kDisplay{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    animation.values = @[@(0.1),@(0.2),@(0.3),@(0.4),@(0.5),@(0.6),@(0.7),@(0.8),@(0.9),@(1.0)];
    animation.duration = 0.1;
    animation.autoreverses = NO;
    animation.repeatCount = 0;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    [self.BackView.layer addAnimation:animation forKey:@"zoom"];
}
- (void)kDismiss{
    [self removeFromSuperview];
}
- (void)setDatas{
//    /// 检测网络权限
//    [[HWNetworkReachabilityManager shareManager] monitorNetworkStatusBlock:^(AFNetworkReachabilityStatus status) {
//        if (status == AFNetworkReachabilityStatusUnknown || status == AFNetworkReachabilityStatusNotReachable) {
//            /// 未知网络和无网络
//            self.NetworkButton.selected = NO;
//        }else{
//            self.NetworkButton.selected = YES;
//        }
//    }];
//
//    self.PhotoButton.selected = [self isOpenPhoto];
//    self.AddressButton.selected = [self isOpenLocation];
//    self.InformButton.selected = [[KJJPushTool sharedSingleton] kj_devicePermissionNotificationAuth];
}

#pragma mark - 打开权限
- (void)openNetwork{
    /// 检测网络权限
    _weakself;
    
}
- (void)openPhoto{
    _weakself;
    [[KJPermissionTool shareInstance] kj_permissonType:(PermissionTypePhoto) Block:^(BOOL granted, id  _Nullable data) {
        weakself.PhotoButton.selected = granted;
    }];
}
- (void)openAddress{
    _weakself;
    [[KJPermissionTool shareInstance] kj_permissonType:(PermissionTypeLocationWhen) Block:^(BOOL granted, id  _Nullable data) {
        weakself.AddressButton.selected = granted;
    }];
}
- (void)openNotication{
//    /* 配置极光推送 */
//    [[KJJPushTool sharedSingleton] wp_configJPushWithLaunchOptions:self.options];
//    /*********** 设置极光IM信息 ***********/
//    [KJJMessageTool kj_JMessageWithOptions:self.options];
//    _weakself;
//    [[KJJPushTool sharedSingleton] kj_devicePermissionCheckNotificationAuth:^(BOOL check) {
//        weakself.InformButton.selected = check;
//    }];
//    // 延时执行
//    int64_t delayInSeconds = 1.0; // 延迟的时间
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        weakself.InformButton.selected = [[KJJPushTool sharedSingleton] kj_devicePermissionNotificationAuth];
//    });
}

#pragma mark - 链接编程设置View的一些属性
- (KJStstemJurisdictionView *(^)(UIView *addView))KJAddView {
    return ^(UIView *addView){
        if (addView) {
            [addView addSubview:self];
        }
        return self;
    };
}

@end
