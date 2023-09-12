import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kookminpt_sample/src/config/router/app_router.dart';
import 'package:flutter_kookminpt_sample/src/theme/colors.dart';
import 'package:flutter_kookminpt_sample/src/theme/text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRouter(),
        GatheringRouter(),
        CenterRouter(),
        TrainerRouter(),
        StoreRouter(),
        MyRouter()
      ],
      transitionBuilder: (context, child, animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return ScaffoldWithNavbar(tabsRouter, child);
      },
    );
  }
}

class ScaffoldWithNavbar extends StatelessWidget {
  const ScaffoldWithNavbar(this.tabsRouter, this.child, {super.key});

  final TabsRouter tabsRouter;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: tabsRouter.activeIndex,
        selectedItemColor: KookminColors.gray800,
        unselectedItemColor: KookminColors.gray400,
        selectedLabelStyle: KookminTextStyle.dockbar,
        unselectedLabelStyle: KookminTextStyle.dockbar,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/ic_home.svg',
                colorFilter: ColorFilter.mode(
                    tabsRouter.activeIndex == 0
                        ? KookminColors.gray800
                        : KookminColors.gray400,
                    BlendMode.srcIn)),
            label: '홈'
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/ic_flag.svg',
                colorFilter: ColorFilter.mode(
                    tabsRouter.activeIndex == 1
                        ? KookminColors.gray800
                        : KookminColors.gray400,
                    BlendMode.srcIn),
              ),
              label: '모임'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/ic_coach_search.svg',
                colorFilter: ColorFilter.mode(
                    tabsRouter.activeIndex == 2
                        ? KookminColors.gray800
                        : KookminColors.gray400,
                    BlendMode.srcIn),
              ),
              label: '강사'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/ic_center_search.svg',
                colorFilter: ColorFilter.mode(
                    tabsRouter.activeIndex == 3
                        ? KookminColors.gray800
                        : KookminColors.gray400,
                    BlendMode.srcIn),
              ),
              label: '센터'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/ic_shopping.svg',
                colorFilter: ColorFilter.mode(
                    tabsRouter.activeIndex == 4
                        ? KookminColors.gray800
                        : KookminColors.gray400,
                    BlendMode.srcIn),
              ),
              label: '상점'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/ic_profile.svg',
                colorFilter: ColorFilter.mode(
                    tabsRouter.activeIndex == 5
                        ? KookminColors.gray800
                        : KookminColors.gray400,
                    BlendMode.srcIn),
              ),
              label: '마이')
        ],
        onTap: (index) {
          tabsRouter.setActiveIndex(index);
        },
      ),
      body: child,
    );
  }
}
