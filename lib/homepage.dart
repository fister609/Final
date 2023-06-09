import 'package:first/profile.dart';
import 'package:first/study.dart';
import 'package:flutter/material.dart';
import 'About.dart';
import 'buy_sell.dart';
import 'calendar.dart';
import 'chat.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageindex = 1;
  final pages = [const StudyPage(),EventsPage(),const ChatPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[pageindex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.deepOrangeAccent,blurRadius: 5,blurStyle: BlurStyle.solid)],
        border: Border.all(color: Colors.deepOrangeAccent),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageindex = 0;
              });
            },
            icon: pageindex == 0
                ? const Icon(
              Icons.menu_book,
              color: Colors.deepOrangeAccent,
              size: 40,
            )
                : const Icon(
              Icons.menu_book_outlined,
              color: Colors.grey,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageindex = 1;
              });
            },
            icon: pageindex == 1
                ? const Icon(
              Icons.home,
              color: Colors.deepOrangeAccent,
              size: 40,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.grey,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageindex = 2;
              });
            },
            icon: pageindex == 2
                ? const Icon(
              Icons.chat,
              color: Colors.deepOrangeAccent,
              size: 40,
            )
                : const Icon(
              Icons.chat_outlined,
              color: Colors.grey,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
class EventsPage extends StatefulWidget
{
  @override
  State<EventsPage> createState() => _EventsPageState();

}

class _EventsPageState extends State<EventsPage>
{
  int size =5;
  late DateTime _selectedDate;
  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }
  void _resetSelectedDate(){
    _selectedDate = DateTime.now().add(const Duration(days: 2),);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body:  PageView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.deepOrange,
                  title: Title(color: Colors.white, child: Text('Fi-ster',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => CalendarPage()));
                      }, icon: Icon(Icons.calendar_month, weight: 20)),

                    ),],
                  elevation: 3,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("UPCOMING EVENTS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                ),
                InkWell(
                  onTap: (){
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: true,
                      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: const Duration(milliseconds: 200),
                      pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
                        return Center(
                          child: Container(
                            width: 350,
                            height: 500,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("No Events Currently listed!",style: TextStyle(color: Colors.black, fontSize: 15)),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close"),
                                ),
                              ],),
                          ),);
                      },);},
                  child: Container(
                    margin: EdgeInsets.all(11),
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7),),
                      border: Border.all(width: 3),
                      color: Colors.transparent,
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: true,
                      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: const Duration(milliseconds: 200),
                      pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
                        return Center(
                          child: Container(
                            width: 350,
                            height:500,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("No Events Currently listed!",style: TextStyle(color: Colors.black, fontSize: 15)),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close"),
                                ),
                              ],),
                          ),);
                      },);},
                  child: Container(
                    margin: EdgeInsets.all(11),
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7),),
                      border: Border.all(width: 3),
                      color: Colors.transparent,
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: true,
                      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: const Duration(milliseconds: 200),
                      pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
                        return Center(
                          child: Container(
                            width: 350,
                            height: 500,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("No Events Currently listed!",style: TextStyle(color: Colors.black, fontSize: 15)),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close"),
                                ),
                              ],),
                          ),);
                      },);},
                  child: Container(
                    margin: EdgeInsets.all(11),
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7),),
                      border: Border.all(width: 3),
                      color: Colors.transparent,
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: true,
                      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: const Duration(milliseconds: 200),
                      pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
                        return Center(
                          child: Container(
                            width: 350,
                            height: 500,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("No Events Currently listed!",style: TextStyle(color: Colors.black, fontSize: 15)),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close"),
                                ),
                              ],),
                          ),);
                      },);},
                  child: Container(
                    margin: EdgeInsets.all(11),
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7),),
                      border: Border.all(width: 3),
                      color: Colors.transparent,
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: true,
                      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: const Duration(milliseconds: 200),
                      pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
                        return Center(
                          child: Container(
                            width: 350,
                            height: 500,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("No Events Currently listed!",style: TextStyle(color: Colors.black, fontSize: 15)),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close"),
                                ),
                              ],),
                          ),);
                      },);},
                  child: Container(
                    margin: EdgeInsets.all(11),
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7),),
                      border: Border.all(width: 3),
                      color: Colors.transparent,
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: true,
                      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: const Duration(milliseconds: 200),
                      pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
                        return Center(
                          child: Container(
                            width: 350,
                            height: 500,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("No Events Currently listed!",style: TextStyle(color: Colors.black, fontSize: 15)),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close"),
                                ),
                              ],),
                          ),);
                      },);},
                  child: Container(
                    margin: EdgeInsets.all(11),
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7),),
                      border: Border.all(width: 3),
                      color: Colors.transparent,
                    ),
                  ),
                ),

                SizedBox(height: 10),

              ],
            ),
          ),
          ChatPage(),
        ], ),
    );
  }
}

class MainDrawer extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.deepOrange,
          ), //BoxDecoration
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.deepOrange),
            accountName: Text(
              "Username",
              style: TextStyle(fontSize: 18),
            ),
            accountEmail: Text("username@gmail.com"),
            currentAccountPictureSize: Size.square(50),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "U",
                style: TextStyle(fontSize: 30.0, color: Colors.blue),
              ), //Text
            ), //circleAvatar
          ), //UserAccountDrawerHeader
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.manage_accounts_rounded,weight: 20),
            title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            onTap: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.chat, weight: 20),
            title: Text("Chats", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            onTap: ()
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatPage()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.menu_book_sharp, weight: 20),
            title: Text("Study", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            onTap: ()
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StudyPage()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.shopping_cart,weight: 20,),
            title: Text("Buy/Sell", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            onTap: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context) => BuyPage()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: InkWell(
            child: Text('Contact Us',
                textAlign: TextAlign.center
            ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
        ),
      ],

    );
  }
}

