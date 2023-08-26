import 'package:bookly_app/Features/Splash/presentation/views/widget/sliding_text.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:go_router/go_router.dart';


class SplashViewBody extends StatefulWidget {
   const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }


void dispose()
{
  super.dispose();
  animationController.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:
      [
       Image.asset(AssetsData.logo),
       const SizedBox(height: 4,),
       SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
  void initSlidingAnimation() {
    animationController =AnimationController(vsync:this,duration:const Duration(seconds: 1));
    slidingAnimation=Tween<Offset>(begin:const Offset(0,2) ,end:Offset.zero ).animate(animationController);
    animationController.forward();
  }
  void navigateToHome() {

    Future.delayed(const Duration(seconds: 2),()
    {
      GoRouter.of(context).push(AppRouter.kHomeView);
      // Get.to(()=>const HomeView(),transition:Transition.fade,duration: KTranstionDuration);
    });
  }
}


