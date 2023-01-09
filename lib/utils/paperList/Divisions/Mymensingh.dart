import 'package:flutter/material.dart';
import 'package:newspaper/Screens/Newspaper.dart';

class mymensinghNewspaper extends StatelessWidget {
  const mymensinghNewspaper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String value = 's';

    List<String> PaperLink = [
      'https://www.mymensinghpratidin.com/',
      'https://www.dainikjamalpur.com/',
      'https://trishalprotidin.com/',
      "https://www.sherpurnews.com/"
    ];
    List<String> ImageLink = [
      'http://www.mymensinghpratidin.com/wp-content/uploads/2021/07/m.pratidin-logo.png',
      "https://www.dainikjamalpur.com/media/common/jamalpurlogo.png",
      "http://www.bangladeshimedia.com/Trishal_Protidin.png",
      "https://www.sherpurnews.com/media/common/sherpurnews.png"
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal:25),
              child: Text("Mymensingh",
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
                  itemCount: 4,
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