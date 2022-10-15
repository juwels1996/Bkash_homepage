import 'package:bkash/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: PreferredSize(
            child: AppBars(), //AppBarWidget(),
            preferredSize: Size.fromHeight(82.0)),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.qr_code,
            color: Colors.pink,
            size: 40,
          ),
          tooltip: 'Increment',
          elevation: 2.0,
          backgroundColor: Colors.white,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: BottomNavigationBarWidget(),
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.only(bottom: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    MenuWidget(
                      title: 'Send Money',
                      image: 'assets/send_money.jpg',
                    ),
                    MenuWidget(
                      title: 'Recharge',
                      image: 'assets/mobile_recharge.jpg',
                    ),
                    MenuWidget(
                      title: 'Cash Out',
                      image: 'assets/cash_out.jpg',
                    ),
                    MenuWidget(
                      title: 'make payment',
                      image: 'assets/make_payment.jpg',
                    ),
                  ],
                ),
                Row(
                  children: [
                    MenuWidget(
                      title: 'Add money',
                      image: 'assets/add_money.jpg',
                    ),
                    MenuWidget(
                      title: 'Pay Bill',
                      image: 'assets/pay_bill.jpg',
                    ),
                    MenuWidget(
                      title: 'Saving',
                      image: 'assets/saving.jpeg',
                    ),
                    MenuWidget(
                      title: 'Loan',
                      image: 'assets/loan.jpeg',
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 0, left: 6, right: 6),
            margin: EdgeInsets.only(bottom: 12),
            child: Column(
              children: [
                Card(
                  elevation:1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Bkash",
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All",
                            style: TextStyle(color: Colors.purpleAccent),
                          ))
                    ],
                  ),
                ),
                Row(
                  children: [
                    MenuWidget(
                      title: 'My Offer',
                      image: 'assets/offer.jpeg',
                    ),
                    MenuWidget(
                      title: 'Akash',
                      image: 'assets/akash.jpg',
                    ),
                    MenuWidget(
                      title: 'Priyo Num',
                      image: 'assets/number.jpeg',
                    ),
                    MenuWidget(
                      title: 'Bill',
                      image: 'assets/bill.jpeg',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 4, right: 4, bottom: 12),
            child: Container(
              width: Size.infinite.width,
              child: Image.asset('assets/banner2.jpeg'),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 0, left: 6, right: 6),
            margin: EdgeInsets.only(bottom: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Suggestions",
                      style: TextStyle(color: Colors.black54),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(color: Colors.purpleAccent),
                        ))
                  ],
                ),
                Card(
                  elevation: 2,
                  child: Row(
                    children: [
                      MenuWidget(
                        title: 'Surokkha',
                        image: 'assets/surukkha.jpeg',
                      ),
                      MenuWidget(
                        title: 'Live Sports',
                        image: 'assets/sports.jpeg',
                      ),
                      MenuWidget(
                        title: 'bKash Quiz',
                        image: 'assets/quiz.jpeg',
                      ),
                      MenuWidget(
                        title: 'Bdjobs',
                        image: 'assets/bdjobs.jpeg',
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [],
                )
              ],
            ),
          ),
          Card(
            elevation: 1,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 0, left: 6, right: 6),
              margin: EdgeInsets.only(bottom: 12),
              child: Column(
                children: [
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "More Services",
                          style: TextStyle(color: Colors.black54),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "See All",
                              style: TextStyle(color: Colors.purpleAccent),
                            ))
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      MenuWidget(
                        title: 'Tickets',
                        image: 'assets/tickets.jpg',
                      ),
                      MenuWidget(
                        title: 'GP Flexi',
                        image: 'assets/gp.jpeg',
                      ),
                      MenuWidget(
                        title: 'Donation',
                        image: 'assets/donation.jpeg',
                      ),
                      MenuWidget(
                        title: 'Insurance',
                        image: 'assets/insurance.jpeg',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MenuWidget(
                        title: 'Games',
                        image: 'assets/games.jpeg',
                      ),
                      MenuWidget(
                        title: 'Shopping',
                        image: 'assets/shop.jpeg',
                      ),
                      MenuWidget(
                        title: 'Travel',
                        image: 'assets/travel.jpeg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 4,),
          Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 4, right: 4, bottom: 12),
            child: Container(
              width: Size.infinite.width,
              child: Image.asset('assets/tutorial.jpeg'),
            ),
          ),
          
          Card(
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Text("Show Off Your Quiz Skill"),
                  Text("Get a Chance to Win Bonus"),
                  Container(
                    child: Image.asset("assets/gif.gif"),
                  ),
                  FlatButton(onPressed: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5)
                        ),
                          child: Text("Play Now",style: TextStyle(color: Colors.pink),)))
                ],
              ),
            ),
          ),


          

        ],
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 4 - 6,
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(height: 5.0),
          Text(title,
              style: TextStyle(color: Colors.black45),
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}

class BottomNsvigstion extends StatelessWidget {
  const BottomNsvigstion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 1,
      child: Container(
        child: Row(
          children: [
            IconButton(onPressed: (){}, 
                icon: Icon(Icons.add_home_work,color: Colors.red,))
          ],
        ),
      ),
      
    );
  }
}



