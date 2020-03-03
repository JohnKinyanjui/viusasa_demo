import 'package:flutter/material.dart';
import 'package:viusasa_demo/components/widgets.dart';
import 'package:viusasa_demo/screens/screen_details.dart';

class ScreenShows extends StatefulWidget {
  ScreenShows({Key key}) : super(key: key);

  @override
  _ScreenShowsState createState() => _ScreenShowsState();
}

class _ScreenShowsState extends State<ScreenShows> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                  tabs: shows,)
              ),
            ),
            Expanded(
                child: PageView.builder(
                controller: PageController(viewportFraction: 0.8),
                itemCount: shows_images.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenDetails(shows_images[index]))),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(image: NetworkImage(shows_images[index]),fit: BoxFit.cover)
                        ),
                      ),
                    ),
                  );
                },
            ))
          ],
        ),
      ), length: shows.length,
    );
  }
}