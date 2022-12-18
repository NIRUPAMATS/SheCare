import 'package:flutter/material.dart';
import 'package:shecare/home.dart';
// import 'package:shecare/home.dart';


class Fitness extends StatelessWidget {
  const Fitness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Color(0xff3d3a3a),
        title : Center(
          child: Text('My Wellness',
            style: TextStyle(
              letterSpacing: 2.0,
              fontSize: 20.0,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffff385d),
                    Colors.white,
                  ],
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(.0),
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Text(
                          'A healthy outside starts from the inside.',
                          style: TextStyle(
                            fontFamily:'Heland' ,
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 25,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: ()
                          {
                            showDialog(context: context, builder: (context)
                            {
                              return Dialog(
                                child: Container(

                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/2,
                                    child: Column(
                                      children: [
                                        IconButton(

                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fitness()));
                                          },
                                        ),
                                        Center(
                                          child: Text(
                                            ' Contemplation is good for your soul, helps you cope with the demands of daily life, and may even help lower your blood pressure.',
                                            style: TextStyle(
                                              color: Color(0xfff35773),
                                              fontSize: 18,

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ),
                                ),
                              );
                            }
                            );
                          },
                          child: Card(

                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.accessibility_new, size: 40),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('Meditate, pray, or otherwise find solace',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()
                          {
                            showDialog(context: context, builder: (context)
                            {
                              return Dialog(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/2,
                                    child: Column(
                                      children: [
                                        IconButton(

                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fitness()));
                                          },
                                        ),
                                        Center(
                                          child: Text(
                                            "A healthy diet is essential for good health and nutrition.It protects you against many chronic noncommunicable diseases, such as heart disease, diabetes and cancer. Eat plenty of vegetables and fruit,Eat less fat,Limit intake of sugars and salt",
                                            style: TextStyle(
                                              color: Color(0xfff35773),
                                              fontSize: 18,

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ),
                                ),
                              );
                            }
                            );
                          },


                          child:Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.emoji_food_beverage_rounded, size: 40),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('Healthy food equals healthy life',
                                      style:TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()
                          {
                            showDialog(context: context, builder: (context)
                            {
                              return Dialog(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/2,
                                    child: Column(
                                      children: [
                                        IconButton(

                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fitness()));
                                          },
                                        ),
                                        Center(
                                          child: Text(
                                            'The poses help increase strength and flexibility and improve balance. These are critical areas for older folks especially, and both men and women can benefit.',
                                            style: TextStyle(
                                              color: Color(0xfff35773),
                                              fontSize: 18,

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ),
                                ),
                              );
                            }
                            );
                          },

                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.accessibility_new_sharp, size: 40),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('Try yoga ',
                                      style:TextStyle(
                                        fontSize: 18,
                                      ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()
                          {
                            showDialog(context: context, builder: (context)
                            {
                              return Dialog(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/2,

                                    child: Column(
                                      children: [
                                        IconButton(

                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fitness()));
                                          },
                                        ),
                                        Center(
                                          child: Text("Protein  is an essential part of your eating plan, and can make up anywhere from 10%-35% of your total calories. Enjoy small portions of nuts, low-fat dairy, beans, lean meat, poultry, or fish 5 have a positive attitude.",
                                            style: TextStyle(
                                              color: Color(0xfff35773),
                                              fontSize: 18,

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                            );
                          },
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.emoji_food_beverage, size: 40),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('Power up the protein',
                                      style:TextStyle(
                                        fontSize: 18,
                                      ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()
                          {
                            showDialog(context: context, builder: (context)
                            {
                              return Dialog(
                                child: Container(

                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/2,
                                    child: Column(
                                      children: [
                                        IconButton(

                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fitness()));
                                          },
                                        ),
                                        Center(
                                          child: Text('Do your best to look at life as if "the glass is half full." You must believe in yourself, have good support systems, and think positively ("I think I can, I think I can…") to succeed.',
                                            style: TextStyle(
                                              color: Color(0xfff35773),
                                              fontSize: 18,

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                            );
                          },

                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.mood, size: 40),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('Have a positive attitude',
                                      style:TextStyle(
                                        fontSize: 18,
                                      ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()
                          {
                            showDialog(context: context, builder: (context)
                            {
                              return Dialog(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/2,

                                    child: Column(
                                      children: [
                                        IconButton(

                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fitness()));
                                          },
                                        ),
                                        Center(
                                          child: Text("Set aside no more than eight hours for sleep. The recommended amount of sleep for a healthy adult is at least seven hours. Most people don't need more than eight hours in bed to be well restedGo to bed and get up at the same time every day, including weekends. Being consistent reinforces your body's sleep-wake cycle.",
                                            style: TextStyle(
                                              color: Color(0xfff35773),
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                            );
                          },
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.airline_seat_individual_suite, size: 40),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('Have a good sleep',
                                      style:TextStyle(
                                        fontSize: 18,
                                      ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: ()
                          {
                            showDialog(context: context, builder: (context)
                            {
                              return Dialog(
                                child: Container(

                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/2,
                                    child: Column(
                                      children: [
                                        IconButton(

                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fitness()));
                                          },
                                        ),
                                        Center(
                                          child: Text("Drinking enough water each day is crucial for many reasons: to regulate body temperature, keep joints lubricated, prevent infections, deliver nutrients to cells, and keep organs functioning properly. Being well-hydrated also improves sleep quality, cognition, and mood.",
                                            style: TextStyle(
                                              color: Color(0xfff35773),
                                              fontSize: 18,

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                            );
                          },
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.emoji_food_beverage_outlined, size: 40),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('Stay Hydrated',
                                      style:TextStyle(
                                        fontSize: 18,
                                      ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: ()
                          {
                            showDialog(context: context, builder: (context)
                            {
                              return Dialog(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/2,
                                    child: Column(
                                      children: [
                                        IconButton(

                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fitness()));
                                          },
                                        ),
                                        Center(
                                          child: Text('Good personal hygiene is one of the best ways to protect yourself from getting gastro or infectious diseases such as COVID-19, colds and flu. Washing your hands with soap removes germs that can make you ill. Maintaining good personal hygiene will also help prevent you from spreading diseases to other people.',
                                            style: TextStyle(
                                              color: Color(0xfff35773),
                                              fontSize: 18,

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                            );
                          },
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.clean_hands_rounded, size: 40),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('Hygeine for better health',
                                      style:TextStyle(
                                        fontSize: 18,
                                      ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: ()
                          {
                            showDialog(context: context, builder: (context)
                            {
                              return Dialog(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/2,
                                    child: Column(
                                      children: [
                                        IconButton(

                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fitness()));
                                          },
                                        ),
                                        Center(
                                          child: Text('You will look 5 pounds lighter if you stand tall and tighten your abdominal muscles. Whenever you walk, think "tall and tight" to get the most out of the movement.',
                                            style: TextStyle(
                                              color: Color(0xfff35773),
                                              fontSize: 18,

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                            );
                          },
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.accessibility, size: 40),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('Stand up straight',
                                      style:TextStyle(
                                        fontSize: 18,
                                      ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],

              ),
            ),
          ),
        ),
      ),

    );
  }
}
