import 'package:ecs_flutter_assesment/constants/app_extensions.dart';
import 'package:flutter/cupertino.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset('assets/icons/logo.png'),
        SizedBox(width: context.width*0.25,),
        Image.asset('assets/icons/notification_icon.png'),
        Image.asset('assets/icons/messages_icon.png'),
        Image.asset('assets/icons/menu_icon.png'),
      ],
    );
  }
}
