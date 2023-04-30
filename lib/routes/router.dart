import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/home_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/posts/posts_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/posts/single_post_page.dart';

import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/settings/settings_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/users/user_profile_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/users/users_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
          children: [
            AutoRoute(
              path: '',
              page: PostsRoute.page,
              children: [
                AutoRoute(
                  path: ':postId',
                  page: SinglePostRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: '',
              page: UsersRoute.page,
              children: [
                AutoRoute(
                  path: ':userId',
                  page: UserProfileRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'settings',
              page: SettingsRoute.page,
            )
          ],
        ),
      ];
}
