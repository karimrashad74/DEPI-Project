import 'package:go_router/go_router.dart';
import 'package:turath/features/home/home_screen.dart';
import 'package:turath/features/auth/login_screen.dart';
import 'package:turath/features/on_boarding/presintation/views/onboarding_screen.dart';
import 'package:turath/features/auth/signup_screen.dart';
import 'package:turath/features/splash/presintation/views/sconed_splach_screen.dart';
import 'package:turath/features/splash/presintation/views/splash_screen.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: '/SconedSplachScreen',
    builder: (context, state) => const SconedSplachScreen(),
  ),
  GoRoute(
    path: '/on_boarding',
    builder: (context, state) => const OnboardingScreen(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/signup',
    builder: (context, state) => const SignupScreen(),
  ),
  GoRoute(
    path: '/homeScreen',
    builder: (context, state) => const HomeScreen(),
  ),
]);
