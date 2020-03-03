import 'package:flutter/material.dart';
import 'package:viusasa_demo/components/widgets.dart';
import 'package:viusasa_demo/models/news.dart';

class ScreenNews extends StatefulWidget {
  ScreenNews({Key key}) : super(key: key);

  @override
  _ScreenNewsState createState() => _ScreenNewsState();
}

class _ScreenNewsState extends State<ScreenNews> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 40,
                  child: TabBar(
                    isScrollable: true,
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.red
                        ),
                        insets: EdgeInsets.fromLTRB(30, 20, 30, 0)
                    ),
                    indicatorColor: Colors.red,
                    unselectedLabelColor: Colors.grey[500],
                    tabs: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Top News",style: tab_style,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Video Bulletins",style: tab_style,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Scoops",style: tab_style,),
                      ),
                    ],)
              ),
            ),
            Expanded(
              child: listbuilder(bg: Colors.grey[100],)
            )
          ],
        ),
      ),
    );
  }
}