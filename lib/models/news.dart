import 'package:flutter/cupertino.dart';
import 'package:viusasa_demo/components/widgets.dart';

class News{
  String image;
  String title;
  String des;
  String source;

  News({@required this.image,@required this.title,@required this.des,@required this.source});

}

List<News> news_feed = [
  News(
      image: "https://www.nation.co.ke/image/view/-/5474760/medRes/2570255/-/7gc1hez/-/Somalia2.jpg",
      title: "No punishment for MPs in Somalia trip",
      des: "Mr Muturi said that although Standing Order 260 requires members of the House traveling outside the country, whether in official or private capacity, to seek permission from the Speaker, it does not provide sanctions for those who flout it.",
      source: "national.co.ke"
      ),
  News(
      image: "https://www.nation.co.ke/image/view/-/5477396/highRes/2572044/-/maxw/600/-/rl9b9p/-/msa.jpg",
      title: "Kenya halts flights from Italy",
      des: "Kilifi, Malindi and Watamu are tourist destinations popular with Italians.Over the years, north coast has earned the nickname ‘Little Italy’ because of its high number of Italian residents and tourists.",
      source: "national.co.ke"
  ),
  News(
      image: "https://www.nation.co.ke/image/view/-/5477110/highRes/2571897/-/maxw/600/-/c0eaypz/-/un.jpg",
      title: "MPs trip to US cancelled over coronavirus concerns",
      des: "MPs who were set to attend a meeting in US on gender equality have cancelled their trip over coronavirus fears.A section of Kenyan women leaders were scheduled to travel this weekend for the 64th session of the Commission on the Status of Women (CSW 64) in New York City.",
      source: "national.co.ke"
  ),
  News(
      image: "https://www.nation.co.ke/image/view/-/5477084/highRes/2571799/-/maxw/600/-/6h0mu1z/-/Rape+victim.jpg",
      title: "Uproar as policeman accused of defiling daughter roams free",
      des: "Police in Isebania are on the spot over allegations that they have been reluctant to arrest and prosecute their colleague who was accused of defiling his daughter in December before locking her up in cells to conceal evidence.Locals say the suspect, who is on the run, often makes technical appearances in local pubs within the town and roams freely in the company of his",
      source: "national.co.ke"
  ),
  News(
      image: "https://www.nation.co.ke/image/view/-/5469620/highRes/2567197/-/maxw/600/-/nv1vh1z/-/mask_pix.jpg",
      title: "Tokyo Olympics could be postponed, Japan says",
      des: "The Tokyo Olympics contract could allow the Games to be postponed until later in 2020, a Japanese government minister said Tuesday as concerns over the new coronavirus surge.Olympics Minister Seiko Hashimoto said Japan's government, Tokyo organisers and the International Olympic Committee are doing their best to make sure the Games start as scheduled on July 24.",
      source: "national.co.ke"
  ),
];

class listbuilder extends StatelessWidget {
  Color bg;
  listbuilder({this.bg});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news_feed.length,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: bg,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(image: NetworkImage(news_feed[index].image),fit: BoxFit.cover)
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Expanded(child:Text(news_feed[index].title,style: tab_style,)),
                      Padding(
                        padding: const EdgeInsets.only(bottom:8.0),
                        child: Text(news_feed[index].source,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
