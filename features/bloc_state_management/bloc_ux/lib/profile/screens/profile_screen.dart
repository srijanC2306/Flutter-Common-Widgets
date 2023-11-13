import 'package:bloc_ux/profile/widgets/animated_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});

  static const DELAY = 1 ;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0 , vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _avater ,
               const SizedBox(height: 30.0),
              _firstNameTitle(context) ,
              const SizedBox(height: 4.0),
              _firstName(context),
              const SizedBox(height: 16.0),
              _lastNameTitle(context) ,
              const SizedBox(height: 4.0),
              _lastName(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget get _avater  =>  Center(
    child: InteractiveViewer(
      minScale: 0.5,
      maxScale:1.0,
      panEnabled: false,
      child: CircleAvatar(
        radius: 80.0,
        backgroundColor: Colors.transparent,
        backgroundImage:  AssetImage('assets/images/srijan.jpg') ,
      ),
    ),
  ) ;

  Widget  _firstNameTitle(context) => AnimatedText(
    delay: DELAY,
    child: Text("First Name"  ,style: Theme.of(context).textTheme.bodyMedium?.copyWith(
      color: Colors.white ,
    ),),
  );

  Widget _firstName(context) => AnimatedText(
      delay: DELAY *2,
      child: Text("Srijan" , style: Theme.of(context).textTheme.headlineSmall
          ?.copyWith(
         color: Colors.white
       )));

   Widget  _lastNameTitle(context) => AnimatedText(
     delay: DELAY *3,
     child: Text("Last Name"  ,style: Theme.of(context).textTheme.bodyMedium?.copyWith(
       color: Colors.white ,
     ),),
   );

   Widget _lastName(context) => AnimatedText(
       delay: DELAY*4,
       child: Text("Mukhopadhyay" , style: Theme.of(context).textTheme.headlineSmall
           ?.copyWith(
           color: Colors.white
       )));


}
