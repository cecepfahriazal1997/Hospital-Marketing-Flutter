import 'package:go_router/go_router.dart';
import 'package:hostpitalmarketing/pages/signin.dart';
import 'package:hostpitalmarketing/pages/main.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/home', builder: (context, state) => const MyApp()),
  GoRoute(
    path: '/',
    builder: (context, state) => const Signin(),
  )
]);
