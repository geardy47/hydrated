import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/dependencies/go_router.dart';
import 'core/themes/theme_data.dart';

class HydratedApp extends ConsumerWidget {
  const HydratedApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) => MaterialApp.router(
        routerConfig: goRouter,
        debugShowCheckedModeBanner: false,
        theme: themeData(context),
      ),
    );
  }
}
