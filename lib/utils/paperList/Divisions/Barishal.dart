import 'package:flutter/material.dart';
import 'package:newspaper/Screens/Newspaper.dart';

class  barishalNewspapers extends StatelessWidget {
  const barishalNewspapers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String value = 's';

    List<String> PaperLink = [
      'https://www.barishaltimes.com',
      'http://daynikvoreralo.com/',
      "https://pirojpurkantho.com/",
      'https://dailymatobad.com/',
      "https://www.ajkerbhola.com/"
    ];
    List<String> ImageLink = [
      'https://www.barishaltimes.com/wp-content/uploads/2021/10/Barishal-Times.-Logo.png',
      "https://www.daynikvoreralo24.com/wp-content/uploads/2022/07/%E0%A6%A6%E0%A7%88%E0%A6%A8%E0%A6%BF%E0%A6%95-%E0%A6%AD%E0%A7%8B%E0%A6%B0%E0%A7%87%E0%A6%B0-%E0%A6%86%E0%A6%B2%E0%A7%8B-%E0%A7%A8%E0%A7%AA.%E0%A6%95%E0%A6%AE.png",
      "https://www.allbanglanewspaper.co/img-files/bangladesh-local-newspapers/barisal/pirojpurkantho.png",
      "https://www.allbanglanewspaper.co/img-files/bangladesh-local-newspapers/barisal/dailymatobad.png",
      "https://www.allbanglanewspaper.co/img-files/local-newspapers/ajkerbhola.png",
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal:25),
              child: Text("Barishal",
              style: TextStyle(fontSize: 25,),),
            ),
          ],
        ),
        Container(
          height: 180,
          child: Padding(
            padding:EdgeInsets.symmetric(vertical: 8,horizontal: 10),
            
            child: Center(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                //bottom will be darker
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(5, -5),
                                    blurRadius: 3),
                                //top show is lighter
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset: Offset(-5, 5),
                                  blurRadius: 3,
                                )
                              ]),
                          
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                (ImageLink[index]),
                                width: 150,
                                height: 150,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        value = PaperLink[index];
                        print(value);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Newspaper(value: value),
                        ));
                      },
                    );
                  },
                ),
            ),
          ),
        ),
      ],
    );
  }
}