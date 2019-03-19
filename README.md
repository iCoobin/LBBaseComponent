# LBBaseComponent

## Requirements
```
1.UI基类：
    

2.常量定义：
    屏幕宽、高、像素宽度、
    状态条高度、顶部刘海高度、导航栏高度、标签栏高度、底部安全区域、
    是否是iPhoneX系列、是否是模拟器、
    设备型号、设备iOS版本、设备分辨率、设备码、设备用户自定义名称
    当前app版本、当前Build版本、当前app Bundle Identifier
3.类别扩展：便利构建、UIColor等
4.工具类：钥匙串存储、加解密工具、常用正则校验、常用日期转化、UUID、设备号、
5.UI类：弹窗封装、轮播库、K线库
```
## Use

### 1.页面导航
需解决问题：ViewController UI独立化

- 包括状态条隐藏显示、状态栏高亮显示
- 导航栏隐藏显示、仅当前页面禁用侧滑返回、ScrollView与侧滑冲突
- 在导航控制器下首个ScrollView的自动偏移问题，ios11.0之后与之前不一样。

```
//1.
//LBBaseNavigationController
#状态条隐藏显示、状态栏高亮显示
- (BOOL)prefersStatusBarHidden{
    return self.topViewController.prefersStatusBarHidden;
}
- (UIStatusBarStyle)preferredStatusBarStyle{
    return self.topViewController.preferredStatusBarStyle;
}

//2.
#仅当前页面禁用侧滑返回
self.fd_interactivePopDisabled
#仅当前页面导航栏隐藏显示
self.fd_prefersNavigationBarHidden
#侧滑开始边缘距离
self.fd_interactivePopMaxAllowedInitialDistanceToLeftEdge

//3.
UIViewController (Extension) 中已设置
	self.extendedLayoutIncludesOpaqueBars = YES;
    if (@available(iOS 11.0, *)) {
    }else {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
UITableView (Extension) 中使用便利构建已设置
	if (@available(iOS 11.0, *)) {
        tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
```

### 2.主题配置
需解决的问题: 灵活配置。有DefaultTheme，也可配置Theme。

- 包括主题色、背景色
- 多等级字体色
- 多等级字体大小

### 3.国际化
需解决的问题：文言支持灵活扩展，可自动化

- 使用默认NSLocalizedString(<#key#>, <#comment#>)创建
- 由主项目动态扩展语言支持
- 支持自动化脚本

### 4.便利构建器
需解决的问题：常使用类和初始化属性，创建便利构建器。

- 首个tableView在导航下自动偏移问题
- 常用UILabel获取label宽度或高度。

### 5.使用约束来写高度可变Cell

### 6.常量使用

### BaseView子View代码书写示例

### BaseCell子Cell代码书写示例
