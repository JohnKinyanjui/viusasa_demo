import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final double widh;
  RoundButton({@required this.text, this.widh});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 10,bottom: 10),
      child: Container(
        height: 30,
        width: widh == null ?50: widh,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Center(child:Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
      ),
    );
  }
}
