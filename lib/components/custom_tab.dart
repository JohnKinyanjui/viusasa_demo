import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
double padding = 45;

class CustomTab extends StatelessWidget {
  Function onTap1;
  Function onTap2;

  CustomTab({this.onTap1,this.onTap2});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: onTap1,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Shows",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: padding == 45 ?Colors.red:Colors.grey[400]),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: onTap2,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("News",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: padding == 130 ?Colors.red:Colors.grey[400]),),
                  ),
                ),
              ),

            ],
          ),
          Row(
            children: <Widget>[
              AnimatedPadding(padding: EdgeInsets.only(left: padding), duration: Duration(milliseconds: 500),
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
