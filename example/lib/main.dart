import 'package:flutter/material.dart';
import 'package:size_adapter/size_adapter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SizeAdapter(
      designSize: const Size(375.0, 812.0),
      designStatusBarHeight: 34.0,
      designHomeBarHeight: 28.0,
      child: MaterialApp(
        title: 'Size Adapter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.indigo, useMaterial3: false),
        home: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Scaffold(
        appBar: const AppBarWidget(),
        drawer: const Drawer(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.ph, vertical: 20.pv),
          child: Column(
            children: [
              Container(
                width: 335.w,
                height: 62.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFFE0E0E0),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  'This is heading',
                  style:
                      TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Container(
                    width: 160.w,
                    height: 160.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      'Simple',
                      style: TextStyle(
                          fontSize: 40.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Container(
                    width: 160.w,
                    height: 160.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      'This\nis\nsimple\ntext',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Container(
                    width: 160.w,
                    height: 160.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      'This is\nsimple\ntext',
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Container(
                    width: 160.w,
                    height: 160.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      'simple\ntext',
                      style: TextStyle(fontSize: 32.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Container(
                    width: 160.w,
                    height: 160.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      'This is simple text',
                      style: TextStyle(fontSize: 10.sp),
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Container(
                    width: 160.w,
                    height: 160.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      'This is simple text',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: 375.w,
          height: 51.h,
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 20.ph),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.home, color: Colors.white, size: 28.h),
              Icon(Icons.search, color: Colors.white, size: 28.h),
              Icon(Icons.bookmark, color: Colors.white, size: 28.h),
              Icon(Icons.person, color: Colors.white, size: 28.h),
            ],
          ),
        ),
      );
    });
  }
}

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.4,
      iconTheme: IconThemeData(size: 24.h, color: Colors.white),
      title: Text('Size Adapter',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp)),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20.ph),
          child: Icon(Icons.notifications, size: 24.h),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.ph),
          child: Icon(Icons.share, size: 24.h),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.ph),
          child: Icon(Icons.search, size: 24.h),
        ),
      ],
    );
  }

  //TODO Instead of 56.h replace it with your design app bar height
  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
