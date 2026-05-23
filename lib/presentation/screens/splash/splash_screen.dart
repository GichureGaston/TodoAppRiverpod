import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../generated/l10n.dart';
import '../auth/controllers/auth_controller.dart';
import '../auth/enum/auth_state_enum.dart';
import '../auth/state/auth_state.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _fadeController;
  late Animation<double> _logoAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _logoController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _logoAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _logoController, curve: Curves.elasticOut),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );

    _startAnimations();
  }

  void _startAnimations() async {
    // Start logo animation
    if (!mounted) return;
    await _logoController.forward();

    // Start fade animation after logo
    await Future.delayed(const Duration(milliseconds: 300));
    if (!mounted) return;
    await _fadeController.forward();

    // Wait a bit then check auth state
    await Future.delayed(const Duration(milliseconds: 1000));
    if (!mounted) return;
    _checkAuthAndNavigate();
  }

  void _checkAuthAndNavigate() {
    if (mounted) {
      final authState = ref.read(authControllerProvider);
      if (authState.status == AuthStatus.authenticated) {
        AppRouter.goToHome(context);
      } else if (authState.status == AuthStatus.unauthenticated) {
        AppRouter.goToLogin(context);
      }
    }
  }

  @override
  void dispose() {
    _logoController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Listen to auth state changes
    ref.listen<AuthState>(authControllerProvider, (previous, next) {
      if (mounted) {
        if (next.status == AuthStatus.authenticated) {
          AppRouter.goToHome(context);
        } else if (next.status == AuthStatus.unauthenticated) {
          AppRouter.goToLogin(context);
        }
      }
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.splashGradient,
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.withOpacity(AppColors.textLight, 0.1),
                Colors.transparent,
                AppColors.withOpacity(AppColors.textLight, 0.05),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                  animation: _logoAnimation,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _logoAnimation.value,
                      child: Transform.rotate(
                        angle: _logoAnimation.value * 0.1,
                        child: Container(
                          width: AppDimensions.splashLogoSize,
                          height: AppDimensions.splashLogoSize,
                          decoration: BoxDecoration(
                            color: AppColors.surfaceLight,
                            borderRadius: BorderRadius.circular(
                              AppDimensions.radiusXXL,
                            ),
                            boxShadow: AppDimensions.shadowHigh,
                          ),
                          child: const Icon(
                            Icons.task_alt,
                            size: AppDimensions.splashIconSize,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    );
                  },
                ),

                const SizedBox(height: AppDimensions.spacingHuge),

                AnimatedBuilder(
                  animation: _fadeAnimation,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _fadeAnimation.value,
                      child: Column(
                        children: [
                          Text(
                            S.current.appName,
                            style: const TextStyle(
                              fontSize: AppDimensions.fontSizeHuge,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textLight,
                              letterSpacing: 1.2,
                            ),
                          ),
                          const SizedBox(height: AppDimensions.spacingS),
                          Text(
                            S.current.splashSubtitle,
                            style: TextStyle(
                              fontSize: AppDimensions.fontSizeL,
                              color: AppColors.withOpacity(
                                AppColors.textLight,
                                0.8,
                              ),
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),

                const SizedBox(height: AppDimensions.spacingHuge),

                AnimatedBuilder(
                  animation: _fadeAnimation,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _fadeAnimation.value,
                      child: SizedBox(
                        width: AppDimensions.progressIndicatorSize,
                        height: AppDimensions.progressIndicatorSize,
                        child: CircularProgressIndicator(
                          strokeWidth:
                              AppDimensions.progressIndicatorStrokeWidth,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            AppColors.withOpacity(AppColors.textLight, 0.8),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
