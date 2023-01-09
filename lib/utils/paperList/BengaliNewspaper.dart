import 'package:flutter/material.dart';

import '../../Screens/Newspaper.dart';

class BengaliNewspaper extends StatelessWidget {
  const BengaliNewspaper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String value = 's';

    List<String> PaperLink = [
      'https://www.prothomalo.com/',
      'https://www.thedailystar.net/',
      'https://mzamin.com/',
      'https://www.kalerkantho.com/',
      'https://samakal.com/',
      "https://bonikbarta.net/",
      'https://www.jugantor.com',
      "https://www.dailyjanakantha.com/",
      "https://www.bhorerkagoj.com/",
      'https://www.bd-pratidin.com/'
    ];
    List<String> ImageLink = [
      'https://assetscdn.pushengage.com/client_images/33699/gmzdnkp6xp9g5-33699.png',
      "https://epaper.thedailystar.net///img/logo/logo.png",
      "https://mzamin.com/assets/images/logo.png",
      "https://www.bashundharagroup.com/assets/upload/wallpaper/wallpaper_1525514190.png",
      "https://www.allbanglanewspaper.co/img-files/dailynewspapers/samakal.png",
      "https://bonikbarta.net/uploads/logo_image/12_years_celebration_logo.png",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiz9HGtbhUvLLFYkMOIpuXj9gt17Vj9_1qnA&usqp=CAU",
      "https://www.dailyjanakantha.com/media/common/janakantha-logo.png",
      "https://www.bhorerkagoj.com/wp-content/uploads/2020/01/BK-Live-PNG.png",
      "https://www.bd-pratidin.com/assets/newDesktop/img/logo.png?v=2",
    ];
    return Column(
      children: [
        Container(
          alignment: FractionalOffset(.1, 0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: InkWell(
              onTap: (){
                Navigator.of(context).pushNamed("Bengali");
              } ,
              child: Text(
                "Bengali",
                style: TextStyle(fontSize: 25,decoration:TextDecoration.underline,
                decorationColor: Colors.redAccent.shade200,decorationThickness:2
                ),
                
              ),
            ),
          ),
        ),
        Container(
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: () {
                      value = PaperLink[index];
                    print(value);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Newspaper(value: value),
                    ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            //bottom will be darker
                            BoxShadow(
                              color: Colors.grey.shade400,
                              offset: Offset(3, -3),
                            ),
                            //top show is lighter
                            BoxShadow(
                              color: Colors.grey.shade300,
                              offset: Offset(-3, 3),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            (ImageLink[index]),
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            ),
          ),
        ),
      ],
    );
  }
}
