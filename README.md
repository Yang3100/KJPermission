# KJStstemJurisdictionDemo
一款权限工具，用什么就直接去里面提炼出来就完事 
<p align="left">
  <img width="200" src="Res/5715.jpg" hspace="30px" />
</p>

----------------------------------------
### 框架整体介绍
* [作者信息](#作者信息)
* [作者其他库](#作者其他库)
* [使用方法](#使用方法)

#### <a id="作者信息"></a>作者信息
> Github地址：https://github.com/yangKJ  
> 简书地址：https://www.jianshu.com/u/c84c00476ab6  
> 博客地址：https://blog.csdn.net/qq_34534179  

#### <a id="作者其他库"></a>作者其他Pod库
```
播放器 - KJPlayer是一款视频播放器，AVPlayer的封装，继承UIView
pod 'KJPlayer'  # 播放器功能区
pod 'KJPlayer/KJPlayerView'  # 自带展示界面

实用又方便的Category和一些自定义控件
pod 'KJEmitterView'
pod 'KJEmitterView/Function'#
pod 'KJEmitterView/Control' # 自定义控件

轮播图 - 支持缩放 多种pagecontrol 支持继承自定义样式 自带网络加载和缓存
pod 'KJBannerView'  # 轮播图，网络图片加载

菜单控件 - 下拉控件 选择控件
pod 'KJMenuView' # 菜单控件

加载Loading - 多种样式供选择
pod 'KJLoadingAnimation' # 加载控件

```

##### Issue
如果您在使用中有好的需求及建议，或者遇到什么bug，欢迎随时issue，我会及时的回复，有空也会不断优化更新这些库

#### <a id="使用方法"></a>使用方法
```
/* 获取权限 */
- (void)kj_permissonType:(PermissionType)type Block:(KJPermissionToolBlock)block;
```

```
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
```