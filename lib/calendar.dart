import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:SheCare/home.dart';
class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

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

      body: Container(
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
            TableCalendar(

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
                return isSameDay(selectedDay, date);
              },


              //To style the calendar
              calendarStyle: CalendarStyle(isTodayHighlighted: true,
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
                formatButtonTextStyle: TextStyle(color:Colors.white,backgroundColor: Color(0xffff5e6b)),
              ),
            ),
            SizedBox(
              height: 10 ,
            ),

          ],
        ),

      ),


    );





  }

}