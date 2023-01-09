import 'package:flutter/material.dart';
import 'package:newspaper/Screens/Newspaper.dart';

class  dhakaNewspapers extends StatelessWidget {
  const dhakaNewspapers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String value = 's';

    List<String> PaperLink = [
      'https://www.livenarayanganj.com/',
      'https://www.dailydhakasangbad.com/',
      "https://dainikanandabazar.com/",
      'https://www.tangailtimes24.com/',
      "https://www.bd24enews.com/"
    ];
    List<String> ImageLink = [
      'https://www.livenarayanganj.com/wp-content/uploads/2019/08/LNWeb_logo_m.jpg',
      "https://www.dailydhakasangbad.com/wp-content/uploads/2022/03/Dhaka-Sangbad-Logo.jpg",
      "https://dainikanandabazar.com/wp-content/uploads/2022/02/logo-finall-.png",
      "https://seeklogo.com/images/T/tangailbarta24-com-logo-9383D37B83-seeklogo.com.png?v=637933923280000000",
      "https://blogger.googleusercontent.com/img/a/AVvXsEimzftVScWmpu28lMx-T12s9vxhoW31LUzgodFpzwmFuYb0H6RmbNjxdXpoi-TT-sX97HkmH5TFUrmQqeiyrwSYp7oQmoaGQ4N0ka97NHzkMxE6oFMcU4B9BkLiC5v52Ctukps_SMAyZgWMFbpHAu39rfzB9-2zieeiOM52fYy_12mal4lU7cZyDy_g=s1280",
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal:25),
              child: Text("Dhaka",
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