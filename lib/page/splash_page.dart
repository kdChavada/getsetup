import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getsetup/constant/colorconstant.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  /*----  We need to use */
  /*final _homeController = HomeController();*/
  /*-------- find controller -----*/
  /*final _authController = Get.find<AuthController>();*/
  /*----------- check user Login  Or not ------------*/
  /*route() {
    Navigator.pushAndRemoveUntil(
        context,
        PageTransition(
            child: SharedPrefs.readBoolValue(PrefConstants.isUserLogin)
                ? const HomePage()
                : const LoginPage(),
            alignment: Alignment.center,
            duration: const Duration(milliseconds: 800),
            // type: PageTransitionType.rightToLeftWithFade
            type: PageTransitionType.size),
            (route) => false);
  }
*/
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      /*---- api  call heare */
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: ColorConstant.primary,
      ),
    );
  }
}
