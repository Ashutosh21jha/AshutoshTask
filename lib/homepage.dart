import 'package:flutter/material.dart';
import 'searchPage.dart';


class homepage extends StatefulWidget {

  homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController _searchController = TextEditingController();
  int _currentIndex=0;

  final tabs =[
    homepage(),
    searchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu),
            color: Colors.white,),
          actions: [
            IconButton(onPressed: (){},
              icon: Icon(Icons.ring_volume),
              color: Colors.white,
            )
          ],
        ),
        body: Container(
          color: Colors.blueGrey,
          child: SingleChildScrollView(
            child: Column (
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 15, 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25.0,0.0, 0.0, 0.2),
                      child: TextField(
                        controller: _searchController,

                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText:" Search Service",
                          hintStyle: TextStyle(color: Colors.white,fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                        child: SizedBox(
                          height: 160,
                          width: 300,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(60),
                              child: Image.asset("assets/b.jpg",
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child:SizedBox(
                          height: 160,
                          width: 300,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(60),
                              child: Image.asset("assets/c.jpg",
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: 160,
                          width: 300,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(60),
                              child: Image.asset("assets/d.jpg",
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
                const ListTile(
                  title: Text("Services", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing: Text("View All",style: TextStyle(fontSize: 18,color: Colors.white),),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width:10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(Icons.plumbing,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Plumbing",style: TextStyle(fontSize: 15,color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.electrical_services_rounded,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Electrician",style: TextStyle(fontSize: 15,color: Colors.white),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.format_paint_rounded,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Painter",style: TextStyle(fontSize: 15,color: Colors.white,),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.carpenter,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Carpenter",style: TextStyle(fontSize: 15,color: Colors.white,),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.cleaning_services,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Cleaning",style: TextStyle(fontSize: 15,color: Colors.white,),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.car_repair,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Car Cleaning",style: TextStyle(fontSize: 13,color: Colors.white,),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.card_travel_rounded,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Car Experts",style: TextStyle(fontSize: 13,color: Colors.white,),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.mail,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Mail",style: TextStyle(fontSize: 15,color: Colors.white,),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


                const ListTile(
                  title: Text("Construction", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing: Text("View All",style: TextStyle(fontSize: 18,color: Colors.white),),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      SizedBox(
                        width:5,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(Icons.construction,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Construction",style: TextStyle(fontSize: 16,color: Colors.white),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(Icons.architecture,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Architects",style: TextStyle(fontSize: 16,color: Colors.white),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(Icons.home,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Interior Design",style: TextStyle(fontSize: 14,color: Colors.white),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(Icons.table_restaurant_rounded,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Furniture",style: TextStyle(fontSize: 16,color: Colors.white),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(Icons.person,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Contractor",style: TextStyle(fontSize: 16,color: Colors.white),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(Icons.rectangle_rounded,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Mason",style: TextStyle(fontSize: 17,color: Colors.white),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(Icons.person_2,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Welder",style: TextStyle(fontSize: 17,color: Colors.white),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(Icons.gradient_rounded,color: Colors.white,size: 35,),
                            SizedBox(height: 10,),
                            Text("Flooring",style: TextStyle(fontSize: 17,color: Colors.white),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),



                ListTile(
                  title: Text("Popular ", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing: Text("View All",style: TextStyle(fontSize: 18,color: Colors.white),),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      const SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child:SizedBox(
                          height: 125,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(60),
                              child: Image.asset("assets/architect.jpg",
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: 125,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(60),
                              child: Image.asset("assets/int.jpg",
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: 125,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(60),
                              child: Image.asset("assets/welder.jpg",
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: 125,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(60),
                              child: Image.asset("assets/construction.jpg",
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: 125,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(60),
                              child: Image.asset("assets/repair.jpg",
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
        bottomNavigationBar:BottomNavigationBar(
          backgroundColor: Colors.lightBlueAccent,
          currentIndex: _currentIndex,
          items:  [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,),
              label: "Home",

            ),
            BottomNavigationBarItem(
              icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => searchPage()));
              },
                icon: Icon(Icons.search_sharp),color: Colors.black,tooltip: "search",),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month,color: Colors.black,),
              label: "Bookings",
            ),BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.black,),
              label: "Account",
            ),BottomNavigationBarItem(
              icon: Icon(Icons.help_rounded,color: Colors.black,),
              label: "Help?",
            ),BottomNavigationBarItem(
              icon: Icon(Icons.local_offer,color: Colors.black,),
              label: "Offers",
            ),

          ],
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });
          },
        )
    );

  }
}