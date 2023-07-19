import 'package:flutter/material.dart';
import 'package:flutter_basic_components/2%20widget%20practice/splash_screen.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //fontFamily: "CustomFont",
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var timeOfDay = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                //padding: const EdgeInsets.all(6),
                //height: double.maxFinite,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.camera_alt_outlined),
                      suffixIcon: const Icon(Icons.search),
                      suffixIconColor: Colors.grey,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.orange, width: 2)),
                      hintText: "   Google Search ",
                      hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2)),
                ),
              ),
            ),
            Container(
              //margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              height: 140,
              width: double.infinity,
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(DateFormat("jm").format(timeOfDay),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 55,
                          fontWeight: FontWeight.bold,
                          fontFamily: "CustomFont")),
                  Text(DateFormat("yMMMd").format(timeOfDay),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: "CustomFont")),
                ],
              ),
            ),
            Container(
              height: 350,
              alignment: AlignmentDirectional.center,
              //color: Colors.red,
              width: double.infinity,
              child: Image.asset("assets/images/h.png"),
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.fromLTRB(35, 5, 35, 5),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  child: IconButton(
                    icon: const Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.fromLTRB(35, 5, 35, 5),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  child: IconButton(
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.fromLTRB(35, 5, 35, 5),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  child: IconButton(
                    icon: const Icon(
                      Icons.message_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
/* This is the format of the time and date
 DAY                          d
 ABBR_WEEKDAY                 E
 WEEKDAY                      EEEE
 ABBR_STANDALONE_MONTH        LLL
 STANDALONE_MONTH             LLLL
 NUM_MONTH                    M
 NUM_MONTH_DAY                Md
 NUM_MONTH_WEEKDAY_DAY        MEd
 ABBR_MONTH                   MMM
 ABBR_MONTH_DAY               MMMd
 ABBR_MONTH_WEEKDAY_DAY       MMMEd
 MONTH                        MMMM
 MONTH_DAY                    MMMMd
 MONTH_WEEKDAY_DAY            MMMMEEEEd
 ABBR_QUARTER                 QQQ
 QUARTER                      QQQQ
 YEAR                         y
 YEAR_NUM_MONTH               yM
 YEAR_NUM_MONTH_DAY           yMd
 YEAR_NUM_MONTH_WEEKDAY_DAY   yMEd
 YEAR_ABBR_MONTH              yMMM
 YEAR_ABBR_MONTH_DAY          yMMMd
 YEAR_ABBR_MONTH_WEEKDAY_DAY  yMMMEd
 YEAR_MONTH                   yMMMM
 YEAR_MONTH_DAY               yMMMMd
 YEAR_MONTH_WEEKDAY_DAY       yMMMMEEEEd
 YEAR_ABBR_QUARTER            yQQQ
 YEAR_QUARTER                 yQQQQ
 HOUR24                       H
 HOUR24_MINUTE                Hm
 HOUR24_MINUTE_SECOND         Hms
 HOUR                         j
 HOUR_MINUTE                  jm
 HOUR_MINUTE_SECOND           jms
 HOUR_MINUTE_GENERIC_TZ       jmv   (not yet implemented)
 HOUR_MINUTE_TZ               jmz   (not yet implemented)
 HOUR_GENERIC_TZ              jv    (not yet implemented)
 HOUR_TZ                      jz    (not yet implemented)
 MINUTE                       m
 MINUTE_SECOND                ms
 SECOND                       s
 * */
