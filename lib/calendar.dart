import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:shecare/home.dart';

String pd="";
String f="";
void add(int len,DateTime now){
  final later=now.add(Duration(days:len));
  pd=DateFormat('yyyy-MM-dd').format(later);
  final period=DateTime.parse(pd);
  final fer=period.add(Duration(days:14));
  f=DateFormat('yyyy-MM-dd').format(fer);
  print(pd);
  print(f);
}

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

final namecontroller=TextEditingController();
final lengthcontroller=TextEditingController();

class _CalendarState extends State<Calendar> {
  CalendarFormat format=CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay  = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Color(0xff3d3a3a),
        title : Center(
          child: Text('Calender',
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
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffff385d),
                Colors.white,
              ],
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child:Column(
            children: [
              Card(
                color: Colors.white,
                child: TableCalendar(

                  headerVisible: true,
                  focusedDay: selectedDay,
                  firstDay:DateTime(1998),
                  lastDay: DateTime(2050),
                  calendarFormat: format,
                  onFormatChanged: (CalendarFormat _format){
                    setState(() {
                      format= _format;
                    });
                  },
                  startingDayOfWeek: StartingDayOfWeek.sunday,
                  daysOfWeekVisible: true,

                  //Day changed
                  onDaySelected: (DateTime selectDay,DateTime focusDay)
                  {
                    setState(() {
                      selectedDay=selectDay;
                      focusedDay=focusDay;
                    });

                    print(focusedDay);

                  },
                  selectedDayPredicate: (DateTime date){
                    return

                      isSameDay(selectedDay, date);

                  },

                  //To style the calendar
                  calendarStyle: CalendarStyle(
                      isTodayHighlighted: true,
                      selectedDecoration: BoxDecoration(
                        color:Colors.black38,
                        shape: BoxShape.circle,),
                      selectedTextStyle: TextStyle(color: Colors.white),
                      todayDecoration: BoxDecoration(
                        color:Color(0xffff5e6b),
                        shape: BoxShape.circle,
                      )
                  ),

                  headerStyle: HeaderStyle(
                    formatButtonVisible: true,
                    titleCentered: true,
                    formatButtonShowsNext: false,
                    formatButtonDecoration: BoxDecoration(
                      color: Color(0xffff385d),
                      borderRadius: BorderRadius.circular(5.0)
                      ,          ),
                    formatButtonTextStyle: TextStyle(color:Colors.white,),
                  ),
                  // calendarBuilders: CalendarBuilders(
                  //     dowBuilder: (context, day) {
                  //       final date=DateTime.parse(pd);
                  //       if(day==date){
                  //         final text=DateFormat.E().format(day);
                  //         return Center(
                  //           child:Text(
                  //             text,
                  //             style: TextStyle(color: Colors.amber),
                  //           ),
                  //         );
                  //       }
                  //     })


                ),
              ),
              SizedBox(
                height: 10 ,
              ),
              Container(
                //height: MediaQuery.of(context).size.height/9,
                width: MediaQuery.of(context).size.width-40,
                child: Column(
                  children: [
                    // Center(
                    //   child:
                    //       Text(
                    //         'High chance of getting period!',
                    //         style: TextStyle(
                    //           color: Color(0xffff004e),
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 25
                    //         ),
                    //       ),
                    //
                    //   ),
                    TextField(
                      controller: namecontroller,
                      decoration:const InputDecoration(hintText: 'Enter last period date',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                              borderSide: BorderSide())
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextField(
                      controller: lengthcontroller,
                      decoration:const InputDecoration(hintText: 'Enter period length',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                              borderSide: BorderSide())
                      ),
                    ),
                    const SizedBox(height: 10,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
                        onPressed:() async {
                          final now=DateTime.parse(namecontroller.text);
                          int len=int.parse(lengthcontroller.text);
                          add(len,now);
                        },
                        child: const Text('OK')),
                    Container(
                      height: MediaQuery.of(context).size.height/5.6,
                      width: MediaQuery.of(context).size.width-10,

                      child: Card(
                        color: Colors.white54,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  'Next Periods on '+pd+'\nNext Fertile Date '+f,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),




            ],
          ),

        ),
      ),


    );





  }

}