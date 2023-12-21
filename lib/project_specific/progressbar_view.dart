import 'package:flutter/material.dart';
import 'package:getsetup/constant/colorconstant.dart';


class ProgressBarView extends StatelessWidget {
  const ProgressBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: ColorConstant.primary,
            shape: BoxShape.circle),
        padding: const EdgeInsets.all(10),
        height: 50,
        width: 50,
        child: const CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 3,
        ),
      ),
    );
  }
}
