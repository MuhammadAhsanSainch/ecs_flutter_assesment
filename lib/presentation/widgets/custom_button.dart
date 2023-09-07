import 'package:ecs_flutter_assesment/constants/app_extensions.dart';
import 'package:ecs_flutter_assesment/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPress;
  final bool hasIcon;
  final Icon icon;
  final Color textColor;

  const CustomButton(
      {Key? key,
      required this.buttonText,
      required this.onPress,
        this.icon=const Icon(Icons.add, color: Colors.black,),
      this.hasIcon=false,
        this.textColor=const Color(0xffD0D5DD)
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: hasIcon == false
          ? Container(
              width: context.width * 0.4,
              height: context.height * 0.05,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD0D5DD)),
                  borderRadius: BorderRadius.circular(context.width * 0.02)),
              child:  Center(
                child: CustomText(
                  text: buttonText,
                  textColor: textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          : Container(
        padding: EdgeInsets.all(context.width*0.02),
              width: context.width * 0.5,
              height: context.height * 0.07,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD0D5DD)),
                  borderRadius: BorderRadius.circular(context.width * 0.02)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    icon,
                    CustomText(
                      text: buttonText,
                      textColor: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
