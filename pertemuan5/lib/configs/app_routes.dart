import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan5/modules/home_screen/home_screen.dart';
import 'package:pertemuan5/modules/news_detail_screen/news_detail_screen.dart';
import 'package:pertemuan5/modules/splash_screen/splash_screen.dart';

import '../models/user.dart';

class AppRoutes {
  static const String splash = "splash";
  static const String home = "home";
  static const String newsDetail = "news-detail";
  static const String newsDetailHot = "news-detail-hot";

  static Page _splahScreenBuilder(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: SplashScreen(),
    );
  }

  static Page _homeScreenBuilder(BuildContext context, GoRouterState state) {
    late User user;
    if (state.extra != null && state.extra is User) {
      user = state.extra! as User;
    } else {
      user = User(
        id: 001,
        name: "Wafa Ghaida Aulia",
        username: "wafagaida",
        email: "wafaghaida@gmail.com",
        profilePhoto:
            "https://media.suara.com/pictures/970x544/2019/06/15/84667-jisoo-blackpink-instagramatsooyaaa.jpg",
        phoneNumber: "0831231231223 ",
      );
    }
    return MaterialPage(
      child: HomeScreen(
        user: user,
      ),
    );
  }

  static Page _newsDetailScreenBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return MaterialPage(
      child: NewsDetailScreen(
        id: state.params["id"]!,
      ),
    );
  }

  static Page _newsDetailScreenHotBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return const MaterialPage(
      child: NewsDetailScreenHot(newsDetailHot: newsDetailHot),
    );
  }

  static final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        name: splash,
        path: "/splash",
        pageBuilder: _splahScreenBuilder,
      ),
      GoRoute(
        name: home,
        path: "/home",
        pageBuilder: _homeScreenBuilder,
        routes: [
          GoRoute(
            name: newsDetail,
            path: "news-detail:id",
            pageBuilder: _newsDetailScreenBuilder,
          ),
        ],
      ),
      GoRoute(
        name: newsDetailHot,
        path: "/news-detail-hot",
        pageBuilder: _newsDetailScreenHotBuilder,
      ),
    ],
    initialLocation: "/splash",
  );
}
