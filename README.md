# flutter_app3

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

===

# Flutter

1. 访问 https://flutter.dev/docs/development/tools/sdk/releases?tab=windows 下载 flutter

Android Studio 3.5.2
flutter_windows_v1.12.13+hotfix.5-stable 报错 uid 10051 does not have android.permission.UPDATE_DEVICE_STATS
flutter_windows_v1.9.1+hotfix.6-stable 没问题

2. AS 下载插件 Flutter

3. 关联 Flutter sdk 到 as

4. 配置 Flutter sdk 到系统环境变量

5. 创建Flutter项目

6. terminal 运行命令 flutter build apk 生成 release 包


flutter clean 删除 ./build


flutter release 包会比 debug 包运行快很多


ndk {
	abiFilters 'armeabi', 'armeabi-v7a' //, 'arm64-v8a', 'x86', 'x86_64'
}



## 参考资料
* Dart 官网 https://dart.dev/tutorials
* https://time.geekbang.org/column/article/107315