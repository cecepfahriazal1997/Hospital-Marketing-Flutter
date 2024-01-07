import 'package:go_router/go_router.dart';
import 'package:hostpitalmarketing/pages/signin.dart';
import 'package:hostpitalmarketing/pages/dashboard.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const Dashboard()),
  GoRoute(
    path: '/signin',
    builder: (context, state) => const Signin(),
  )
]);
