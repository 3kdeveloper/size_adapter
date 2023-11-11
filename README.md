# Why Size Adapter?

Say goodbye to responsive design headaches in Flutter!
Introducing Size Adapter – the solution that effortlessly adapts your UI components to different screen sizes.

## Platforms

| Platforms | Supported | 
|-----------|-----------|
| Android   | ✅        |  
| iOS       | ✅        |
| Web       | ❌        |
| Desktop   | ❌        |


[![pub package](https://img.shields.io/pub/v/easy_ads_flutter.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/size_adapter)
[![Last Commits](https://img.shields.io/github/last-commit/nooralibutt/easy-ads?logo=git&logoColor=white)](https://github.com/3kdeveloper/size_adapter/commits/main)
[![Pull Requests](https://img.shields.io/github/issues-pr/nooralibutt/easy-ads?logo=github&logoColor=white)](https://github.com/3kdeveloper/size_adapter/pulls)
[![Code size](https://img.shields.io/github/languages/code-size/nooralibutt/easy-ads?logo=github&logoColor=white)](https://github.com/3kdeveloper/size_adapter)
[![License](https://img.shields.io/github/license/nooralibutt/easy-ads?logo=open-source-initiative&logoColor=green)](https://github.com/3kdeveloper/size_adapter/blob/main/LICENSE)
<a href="https://developer.android.com" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-android-blue">
</a>
<a href="https://developer.apple.com/ios/" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-iOS-blue">
</a>

## 💻 Usage ##

To use this library in your code:

* add a dependency in your `pubspec.yaml` :

  ```yaml
  dependencies:
    size_adapter: latest
  ```

* add import in your `dart` code:

  ```dart
  import 'package:size_adapter/size_adapter.dart';

## 💡 Overview

This Flutter package simplifies responsive design, making your UI look stunning on any mobile device. 
Check out the demos below.

<img src="provide png" alt="Demo Screen"
width="250" height="500">

## How to use

```dart

SizeAdapter(
  /// 375.0 is the design width
  ///-- 
  /// 812.0 is the design height
  designSize: const Size(375.0, 812.0),
  /// 44.0 is the design status bar height
  designStatusBarHeight: 44.0,
  /// 28.0 is the design bottom bar height
  designBottomBarHeight: 28.0,
  child: MaterialApp(
  title: 'My App',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch: Colors.indigo),
  home: const HomeScreen(),
  ),
);

```

## 💪🏻 Contribution Guide

I would be happy to have your contributions 💙

You are welcome to open a *[ticket](https://pub.dartlang.org/packages/size_adapter/issues)* on github if any problems arise. New ideas are always welcome.  
If you fixed a bug or implemented a feature, please send a [Pull Request](https://pub.dartlang.org/packages/size_adapter/pulls).


## Authors
##### Kamran Khan
[![GitHub Follow](https://img.shields.io/badge/Connect--blue.svg?logo=Github&longCache=true&style=social&label=Follow)](https://github.com/3kdeveloper) [![LinkedIn Link](https://img.shields.io/badge/Connect--blue.svg?logo=linkedin&longCache=true&style=social&label=Connect
)](https://www.linkedin.com/in/3kdeveloper)