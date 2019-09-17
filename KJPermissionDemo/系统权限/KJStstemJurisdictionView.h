//
//  KJStstemJurisdictionView.h
//  Winpower
//
//  Created by 杨科军 on 2019/8/23.
//  Copyright © 2019 cq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KJPermissionTool.h"
NS_ASSUME_NONNULL_BEGIN

@interface KJStstemJurisdictionView : UIView
/// 初始化
+ (instancetype)createStstemJurisdictionViewWithBlock:(void(^)(KJStstemJurisdictionView *obj))block;
@property(nonatomic,strong,readonly) KJStstemJurisdictionView *(^KJAddView)(UIView *addView);
@property(nonatomic,strong) NSDictionary *options;
- (void)kDismiss;
@end

NS_ASSUME_NONNULL_END
