import 'dart:async';

import 'package:flutter/material.dart';
class AnimatedText extends StatefulWidget {
  final int? delay ;
  final Widget child ;
   const AnimatedText({
    this.delay ,
    required this.child ,
    super.key});

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> with SingleTickerProviderStateMixin{


  late AnimationController _animationController ;
  late Animation<Offset> animation ;
  
  @override
  void initState() {
   _animationController = AnimationController(vsync: this , duration: Duration(seconds: 1 ));
   final CurvedAnimation curvedAnimation = CurvedAnimation(parent: _animationController, 
       curve: Curves.decelerate) ; 
   
   animation  = Tween<Offset>(begin:const Offset(-5.0 , 0.0) , end: const  Offset(0.0 , 0.0)).animate(curvedAnimation) ;
   
   if(widget.delay == null ){
     _animationController.forward() ; 
   }else {
     Timer(Duration(seconds: widget.delay ?? 0 ), () {
       _animationController.forward() ;
     });
   }
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: animation ,
        child: widget.child,

    );
  }
}
