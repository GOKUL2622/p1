import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScreen extends StatelessWidget{
  final Widget? child;

  CustomScreen({
    this.child
});
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset('assets/images/wallpaperflare.com_wallpaper.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(child: child!)
        ],
      ),
    );
  }
}