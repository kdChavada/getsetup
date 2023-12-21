import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getsetup/api/dio_client.dart';
import 'package:getsetup/controller/auth_controller.dart';
import 'package:getsetup/page/splash_page.dart';

void main() async{
  /*--------- Need Three --------*/
  DioClient.init();
  Get.put(AuthController());
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: "/",
        getPages: [
        GetPage(name: "/", page: () => const SplashPage())],
    );
  }
}


