import 'package:flutter/material.dart';
import 'package:newspaper/Screens/Newspaper.dart';
import 'package:newspaper/utils/paperList/Divisions/Barishal.dart';
import 'package:newspaper/utils/paperList/Divisions/Chittagong.dart';
import 'package:newspaper/utils/paperList/Divisions/Dhaka.dart';
import 'package:newspaper/utils/paperList/Divisions/Khulna.dart';

import '../utils/paperList/Divisions/Mymensingh.dart';

class BengaliPaper extends StatelessWidget {
  const BengaliPaper({Key? key}) : super(key: key);

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

    return Scaffold(
      body: SafeArea(
        child: RawScrollbar(
          thumbColor: Colors.redAccent,
          isAlwaysShown: true,
          thickness: 3,
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  "Bangla Newspapers",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: 400,
                child: RawScrollbar(
                  thumbColor: Colors.redAccent,
                  isAlwaysShown: true,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: InkWell(
                            onTap: () {
                              value = PaperLink[index];
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      Newspaper(value: value)));
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
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                    ),
                  ),
                ),
              ),
             SizedBox(height: 20,),
              barishalNewspapers(),
              chittagongNewspapers(),
             dhakaNewspapers(),
             khulnaNewspapers(),
             mymensinghNewspaper(),
            ],
          ),
        ),
      ),
    );
  }
}
