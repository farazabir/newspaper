import 'package:flutter/material.dart';
import 'package:newspaper/Screens/Newspaper.dart';

class internationalNews extends StatelessWidget {
  const internationalNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String value = 's';

    List<String> PaperLink = [
      'https://www.wsj.com/',
      'https://www.thedailystar.net/',
      'https://www.nytimes.com/international/',
      'https://www.theguardian.com/international',
      'https://timesofindia.indiatimes.com/',
    ];
    List<String> ImageLink = [
      'https://s.wsj.net/img/meta/wsj-social-share.png',
      "https://epaper.thedailystar.net///img/logo/logo.png",
      "https://upload.wikimedia.org/wikipedia/commons/7/77/The_New_York_Times_logo.png?20071125090257",
      "https://seeklogo.com/images/T/The_Guardian-logo-A1290A063A-seeklogo.com.png",
      "https://logos-download.com/wp-content/uploads/2021/01/The_Times_of_India_Logo_full-1536x550.png",
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal:25),
              child: Text("International",
              style: TextStyle(fontSize: 25,decoration: TextDecoration.underline,decorationColor: Colors.redAccent.shade200,decorationThickness:2),),
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