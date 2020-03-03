import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:viusasa_demo/components/round_button.dart';
import 'package:viusasa_demo/components/widgets.dart';

class ScreenDetails extends StatefulWidget {
  String image_link;
  ScreenDetails(this.image_link);

  @override
  _ScreenDetailsState createState() => _ScreenDetailsState();
}

class _ScreenDetailsState extends State<ScreenDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(widget.image_link),fit: BoxFit.fill)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(top :8.0,left: 20,bottom: 10),
                  child: Text("Maria",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.white), ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RoundButton(text: "Season 1",widh: 100,),
                RoundButton(text: "Season 2",widh: 100,),
                RoundButton(text: "Season 3",widh: 100,),
                RoundButton(text: "Season 4",widh: 100,),
                RoundButton(text: "Season 5",widh: 100,),
              ],
            ),
          ),
          Expanded(child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: shows_images.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(shows_images[index]),fit: BoxFit.cover)
                    ),
                  ),
                );
              },
          ))
        ],
      ),
    );
  }
}
