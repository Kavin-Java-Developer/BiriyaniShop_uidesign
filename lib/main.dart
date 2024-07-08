import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

String mainImg =
    'https://b.zmtcdn.com/data/menus/608/20610608/fc681c22d1980040236b102b5fff8ba1.jpg';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Donne Biriyani Shop',
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          //logo
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage(
                  'https://cdn.dribbble.com/users/621668/screenshots/15550383/biryanilogo.png'),
              radius: 70,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //menus
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 10,
                ),
                buildContainer('Kolkata Biriyani'),
                SizedBox(
                  width: 10,
                ),
                buildContainer('SS Hyderabad biryani'),
                SizedBox(
                  width: 10,
                ),
                buildContainer('Dindugal biriyani'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 400,
            width: double.infinity,
            //color: Colors.black,
            child: Row(
              children: [
                //left
                Container(
                  height: 400,
                  width: 170,
                  //color: Colors.blue,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        leftMenu(
                            'https://thebruisedfrypan.wordpress.com/wp-content/uploads/2021/01/main-2.jpg'),
                        SizedBox(
                          height: 15,
                        ),
                        leftMenu(
                            'https://i0.wp.com/experiencesofagastronomad.com/wp-content/uploads/2016/07/Kolkata-Chicken-Biryani1.jpg?resize=720%2C1080&ssl=1'),
                        SizedBox(
                          height: 15,
                        ),
                        leftMenu(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC0jTHfK1vvefydNk-YeU54S9VggpGm87VhQ&s'),
                        SizedBox(
                          height: 15,
                        ),
                        leftMenu(
                            'https://lh3.googleusercontent.com/oqPmpgNOeZXIWXYdlyPJ9-EhXZUzOl3TxHCDwZBiOittoyOk-w_z37WaZCkXbVNU2psl6yNfPb-QYLglwgY51YVayL4tLYIBohlXR3ifLQ=w1200-rw'),
                      ],
                    ),
                  ),
                ),
                //right
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          color: Colors.white,
                          image: DecorationImage(
                              image: NetworkImage(mainImg), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(4, 5),
                              blurRadius: 6,
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Main Ingredients',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //ingredients images
                    Container(
                      width: 200,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            buildCircleavatar_ingredientsImg(
                                'https://shelfcooking.com/wp-content/uploads/2020/03/how-long-does-cooked-chicken-last-in-fridge.jpg'),
                            SizedBox(
                              width: 10,
                            ),
                            buildCircleavatar_ingredientsImg(
                                'https://www.vegrecipesofindia.com/wp-content/uploads/2022/06/how-to-cook-basmati-rice-2.jpg'),
                            SizedBox(
                              width: 10,
                            ),
                            buildCircleavatar_ingredientsImg(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsddFKoFN5qwwcQa2y4xM-j-Heh0lMI7kEaw&s'),
                            SizedBox(
                              width: 10,
                            ),
                            buildCircleavatar_ingredientsImg(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUGwc1oYeHDDKIazMXf1tBNMJ9FAWdjqsOCA&s'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Kolkata biriyani \n ₹ 200',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  CircleAvatar buildCircleavatar_ingredientsImg(Ingimage) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: 27,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage(Ingimage),
        radius: 25,
      ),
    );
  }

  GestureDetector leftMenu(img) {
    return GestureDetector(
      onTap: () {
        setState(() {
          mainImg = img;
        });
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            color: Colors.white,
            image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(4, 5),
                blurRadius: 6,
              )
            ]),
      ),
    );
  }

  Container buildContainer(title) {
    return Container(
      height: 35,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
