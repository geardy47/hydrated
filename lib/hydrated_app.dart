import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HydratedApp extends StatelessWidget {
  const HydratedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) => const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello World!'),
          ),
        ),
      ),
    );
  }
}
