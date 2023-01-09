import 'package:flutter/material.dart';
import 'package:newspaper/Screens/Newspaper.dart';

class  chittagongNewspapers extends StatelessWidget {
  const chittagongNewspapers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String value = 's';

    List<String> PaperLink = [
      'https://dainikazadi.net/',
      'https://dainikpurbokone.net/',
      "https://ctgpratidin.com/",
      'https://thedailyshangu.com/',
      "https://chandpurtimes.com/"
    ];
    List<String> ImageLink = [
      'https://www.allbanglanewspaper.co/img-files/bangladesh-local-newspapers/chittagong/dainikazadi.png',
      "https://www.allbanglanewspaper.co/img-files/bangladesh-local-newspapers/chittagong/dainikpurbokone.png",
      "https://www.allbanglanewspaper.co/img-files/bangladesh-local-newspapers/chittagong/ctgpratidin.png",
      "https://www.allbanglanewspaper.co/img-files/bangladesh-local-newspapers/chittagong/thedailyshangu.png",
      "https://www.allbanglanewspaper.co/img-files/bangladesh-local-newspapers/chittagong/chandpurtimes.png",
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal:25),
              child: Text("Chittagong",
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