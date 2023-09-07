import 'package:ecs_flutter_assesment/constants/app_extensions.dart';
import 'package:flutter/cupertino.dart';

class CustomSpacing extends StatelessWidget {
  final double h;
  const CustomSpacing({Key? key,this.h=0.02}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height*h,
    );
  }
}
