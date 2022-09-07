import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_player/NavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 2.0,
        leading: const Icon(
          Icons.account_circle_sharp,
          size: 30,),
        title: SizedBox(
            height: 35.0,
            child: Image.asset("assets/starplayers.png")),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.notification_important, size: 30),
          )
        ],
      ),
      body: SingleChildScrollView(
      child: Column(
          children: [
          Container(
          color: Colors.black,
          // margin: const EdgeInsets.all(5),
          child: DatePicker(
            DateTime.now(),
            height:100,
            width:50,
            initialSelectedDate: DateTime.now(),
            selectionColor: Colors.green,
            selectedTextColor: Colors.black,
            dateTextStyle: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
      ),
            Container(
              height: 80,
              width: 500,
              color: Colors.green[900],
            child: DefaultTabController(
              length: 3,
              child:Column(
            children: const <Widget>[
              TabBar(  indicatorColor: Colors.black,
                indicatorWeight: 5,

                tabs: [
                  Tab(icon: Icon(Icons.sports_cricket_sharp), text: 'Cricket',),
                  Tab(icon: Icon(Icons.sports_football), text: 'Football'),
                  Tab(icon: Icon(Icons.sports_basketball), text: 'Basketball'),
                ],
              ),
            ],
         ),
        ),
            ),
            Container(
              height: 250,
              width: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/players.png'),
                    fit:BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black45,
                        BlendMode.darken)
                ),
              ),
            ),

            // const SizedBox(height: 15,),
            // Container(
            //   padding: const EdgeInsets.symmetric(
            //       horizontal: 10,
            //       vertical: 60),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(15),
            //     color: Colors.white
            //   ),
            // ),
      ]
      ),
      ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (idx) {
              setState(() {
                pageIdx = idx;
              });
            },
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.green[900],
      unselectedItemColor: Colors.white,
            currentIndex: pageIdx,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_events_sharp, size: 30),
          label: 'My Matches',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit, size: 30),
          label: 'Rewards',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt, size: 30),
          label: 'Refer & Earn',
        ),
      ],
    ),
    );

  }
}
