import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../routing/go_router_provider.dart';
import '../data/dashboard_repository.dart';

part 'dashboard_controller.g.dart';

@riverpod
class DashboardController extends _$DashboardController {
  @override
  int build() {
    return 0;
  }

  void setPageIndex(int index) {
    final dashboardRepository = ref.read(dashboardRepositoryProvider);
    final goRouter = ref.read(goRouterProvider);

    state = dashboardRepository.setPageIndex(index);

    switch (state) {
      case 0:
        goRouter.go('/');
        break;
      case 1:
        goRouter.go('/profile');
        break;
    }
  }
}
