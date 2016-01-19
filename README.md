# SKChinaCitySelector

![enter image description here](https://img.shields.io/badge/pod-v1.0.0-brightgreen.svg)![enter image description here](https://img.shields.io/badge/Objective--C-compatible-orange.svg)  ![enter image description here](https://img.shields.io/badge/platform-iOS%207.0%2B-ff69b4.svg)

## 简介

基于UITableView的中国城市选择。数据来自百度APIStore。

## 使用方法

### 第一步：导入

使用CocoaPods导入，在`Podfile`中添加：

`pod 'SKChinaCitySelector'`

之后终端中执行

``` bash
pod install
```

### 第二步：引用

在需要选择城市的文件中，添加头文件：

``` objective-c
#import <SKChinaCitySelector/CityListViewController.h>
```

声明协议：

``` objective-c
@interface ViewController ()<CityListDelegate>
```

添加回调方法：

``` objective-c
- (void)didSelectCityWithName:(NSString *)cityName {
  // 处理选择城市之后的操作
}
```

调用：

``` objective-c
CityListViewController *cityListVC = [[CityListViewController alloc] init];
UINavigationController *naviVC = [[UINavigationController alloc] initWithRootViewController:cityListVC];
[self presentViewController:naviVC animated:YES completion:nil];
```

