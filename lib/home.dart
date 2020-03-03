import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:viusasa_demo/components/custom_tab.dart';
import 'package:viusasa_demo/components/round_button.dart';
import 'package:feather/feather.dart';
import 'package:viusasa_demo/screens/screen_news.dart';
import 'package:viusasa_demo/screens/screen_shows.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static choosed c = choosed.shoes;
  PageController controller = PageController(initialPage: c == choosed.shoes ? 0 : 1 );
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.black.withOpacity(0.4),
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: RichText(text: TextSpan(
          text: "V",
          style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.w900),
          children: [
            TextSpan(
              text: "iusasa",
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w800),
            )
          ]
        )),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(icon: Icon(Feather.menu, color: Colors.black,), onPressed: ()=>_scaffoldKey.currentState.openDrawer()),
        ),
        actions: <Widget>[
         RoundButton(text: "Deals",),
         RoundButton(text: "Pay",),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Icon(Feather.search, color: Colors.black,),
         )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         Center(child: CustomTab(
           onTap1: (){
             print("clicked");
             controller.animateToPage(0, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
             setState(() {
               c = choosed.shoes;
               padding = 45;
             });
           },
           onTap2: (){
             controller.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
             setState(() {
               c = choosed.news;
               padding =130;
             });
           },
         )),
         Center(
           child: Padding(
             padding: const EdgeInsets.only(top :15.0,bottom: 10),
             child: Container(
               width: 200,
               height: 0.5,
               color: Colors.grey[500],
             ),
           ),
         ),
         Expanded(
           child: PageView(
             controller: controller,
             children: <Widget>[
               ScreenShows(),
               ScreenNews()
             ],
           ),
         )
        ],
      ),
      drawer: Container(
        color: Colors.white,
        width: 50,
        child: Column(
          children: <Widget>[
            SizedBox(height: 35,),
            Text("V",style: TextStyle(color: Colors.red,fontSize: 50,fontWeight: FontWeight.w900),),
            Expanded(child: SizedBox()),
            IconButton(icon: Icon(Feather.user,color: Colors.black,), onPressed: (){}),
            IconButton(icon: Icon(Feather.star,color: Colors.black,), onPressed: (){}),
            IconButton(icon: Icon(Feather.credit_card,color: Colors.black,), onPressed: (){}),
            IconButton(icon: Icon(Feather.phone_call,color: Colors.black,), onPressed: (){}),
            IconButton(icon: Icon(Feather.upload,color: Colors.black,), onPressed: (){}),
            IconButton(icon: Icon(Feather.book_open,color: Colors.black,), onPressed: (){}),
            IconButton(icon: Icon(Feather.info,color: Colors.black,), onPressed: (){}),
            IconButton(icon: Icon(Feather.help_circle,color: Colors.black,), onPressed: (){})
          ],
        ),
      ),
    );
  }
}

enum choosed {
  news,
  shoes
}
