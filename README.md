# flutter_yunpian_captcha

适用于 Flutter 的云片行为验证插件

[![pub version][pub-image]][pub-url]

[pub-image]: https://img.shields.io/pub/v/flutter_yunpian_captcha.svg
[pub-url]: https://pub.dev/packages/flutter_yunpian_captcha

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [屏幕截图](#%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE)
- [快速开始](#%E5%BF%AB%E9%80%9F%E5%BC%80%E5%A7%8B)
  - [安装](#%E5%AE%89%E8%A3%85)
  - [用法](#%E7%94%A8%E6%B3%95)
    - [获取 SDK 版本](#%E8%8E%B7%E5%8F%96-sdk-%E7%89%88%E6%9C%AC)
    - [初始化 SDK](#%E5%88%9D%E5%A7%8B%E5%8C%96-sdk)
    - [开始验证](#%E5%BC%80%E5%A7%8B%E9%AA%8C%E8%AF%81)
- [相关链接](#%E7%9B%B8%E5%85%B3%E9%93%BE%E6%8E%A5)
- [许可证](#%E8%AE%B8%E5%8F%AF%E8%AF%81)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## 屏幕截图

<div>
  <img src='./screenshots/flutter_yunpian_captcha-android.jpeg' width=280>
  <img src='./screenshots/flutter_yunpian_captcha-ios.png' width=280>
</div>

## 快速开始

### 安装

将此添加到包的 pubspec.yaml 文件中：

```yaml
dependencies:
  flutter_yunpian_captcha: ^0.0.1
```

您可以从命令行安装软件包：

```bash
$ flutter packages get
```

### 用法

#### 获取 SDK 版本

```dart
String sdkVersion = await YunPianCaptcha.sdkVersion;
```

#### 初始化 SDK

```dart
YunPianCaptcha.init('<captchaId>');
```

#### 开始验证

> 响应码请参与：https://www.yunpian.com/official/document/sms/zh_CN/captcha_captcha_service_ios

```dart
YunPianCaptchaConfig config = YunPianCaptchaConfig(
  // 请求验证码过期时限。单位秒，默认 30
  expired: 30,
  // 支持语言，默认简体中文。zh-cn(简体中文)、en(英文)
  lang: 'zh-cn',
  // 验证码语言包。当设置 langPack 后 lang 设置会自动失效。
  // YPcaptcha_02 // 默认：请按顺序点击:
  // YPcaptcha_03 // 默认：向右拖动滑块填充拼图
  // YPcaptcha_04 // 默认：验证失败，请重试
  langPack: {
    'YPcaptcha_02': '请按顺序点击:',
    'YPcaptcha_03': '向右拖动滑块填充拼图',
    'YPcaptcha_04': '验证失败，请重试',
  },
  // 视图透明度。默认 0.3
  alpha: 0.3,
  // 是否显示加载指示器。默认显示
  showLoadingView: true,
  // 添加无感验证参数
  username: 'yunpian-captcha',
);
await YunPianCaptcha.verify(
  config: config,
  onLoaded: () {
    // do something
  },
  onSuccess: (dynamic data) {
    // do something
  },
  onFail: (dynamic data) {
    // do something
  },
);
```

## 相关链接

- https://github.com/yunpian/yunpian-captcha-demo-android
- https://github.com/yunpian/yunpian-captcha-demo-ios
- https://www.yunpian.com/official/document/sms/zh_CN/captcha_captcha_service_android
- https://www.yunpian.com/official/document/sms/zh_CN/captcha_captcha_service_ios

## 许可证

```
MIT License

Copyright (c) 2020 LiJianying <lijy91@foxmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
