import 'package:flutter/material.dart';

class searchPage extends StatefulWidget {
  searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  TextEditingController _search= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Center(child: Text("Search",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items:  [
          BottomNavigationBarItem(
              icon: IconButton(onPressed: (){
                Navigator.pop(context);
              },
                  icon: Icon(Icons.home,color: Colors.black,)
              ),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp,color: Colors.black,),
              label: "Search"

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month,color: Colors.black,),
              label: "Bookings"
          ),BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.black,),
              label: "Account"
          ),BottomNavigationBarItem(
              icon: Icon(Icons.help_rounded,color: Colors.black,),
              label: "Help?"
          ),BottomNavigationBarItem(
            icon: Icon(Icons.local_offer,color: Colors.black,),
            label: "Offers",
          ),

        ],
      ),
      body: Container(
        color: Colors.teal ,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.2),
                  child: TextField(
                    controller: _search,

                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText:" Search Service",
                      hintStyle: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [


                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 100,
                              width: 100,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Welder",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("Fix the broken joints with a welder",style: TextStyle(fontSize: 18,color: Colors.black),),
                              ],
                            ),
                          )
                        ]
                    ),
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(60),
                                  child: Image.asset("assets/electrician.jpg",
                                    fit:BoxFit.cover ,),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Electrician",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("Get help in sorting out home wires",style: TextStyle(fontSize: 18,color: Colors.black),),

                              ],
                            ),
                          )
                        ]
                    ),
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(60),
                                  child: Image.asset("assets/painter.jpg",
                                    fit:BoxFit.cover ,),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Painter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("Makeover by painting new colors",style: TextStyle(fontSize: 18,color: Colors.black),),

                              ],
                            ),
                          )
                        ]
                    ),
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(60),
                                  child: Image.asset("assets/flooring.jpg",
                                    fit:BoxFit.cover ,),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Flooring",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("Get a span new flooring for home",style: TextStyle(fontSize: 18,color: Colors.black),),

                              ],
                            ),
                          )
                        ]
                    ),
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(60),
                                  child: Image.asset("assets/cleaning.jpg",
                                    fit:BoxFit.cover ,),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Home Cleaning",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("Let us help in cleaning your house",style: TextStyle(fontSize: 18,color: Colors.black),),

                              ],
                            ),
                          )
                        ]
                    ),
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(60),
                                  child: Image.asset("assets/plumber.jpg",
                                    fit:BoxFit.cover ,),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Plumber",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("Fix your pipe issues with plumber",style: TextStyle(fontSize: 18,color: Colors.black),),

                              ],
                            ),
                          )
                        ]
                    ),
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 100,
                              width: 100,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Car Repair",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("who helps you in plumbing works",style: TextStyle(fontSize: 18,color: Colors.black),),

                              ],
                            ),
                          )
                        ]
                    ),
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(60),
                                  child: Image.asset("assets/carpenter.jpg",
                                    fit:BoxFit.cover ,),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Carpenter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("who helps you in plumbing works",style: TextStyle(fontSize: 18,color: Colors.black),),

                              ],
                            ),
                          )
                        ]
                    ),
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(60),
                                  child: Image.asset("assets/glazier.jpg",
                                    fit:BoxFit.cover ,),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("GLAZIER",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("Install or repair your windows",style: TextStyle(fontSize: 18,color: Colors.black),),

                              ],
                            ),
                          )
                        ]
                    ),




                  ],
                ),
              ),
            )




          ],
        ),
      ),
    );
  }
}