import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p1/SignIn_screen.dart';

class CustomButton extends StatelessWidget{
  final String btnName;
  final Widget? onTap;
  final Color? color;
  final Color? textColor;
  CustomButton({
    required this.btnName,
    this.onTap,
    this.color,
    this.textColor
});

  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> onTap!));
      },
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(btnName, textAlign: TextAlign.center
          ,style: TextStyle(fontSize: 23, color: textColor!),),
        decoration: BoxDecoration(
          color: color!,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(21)),
        ),
      ),
    );
  }
}