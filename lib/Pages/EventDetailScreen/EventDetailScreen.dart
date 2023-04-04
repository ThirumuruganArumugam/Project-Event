// ignore: file_names
import 'package:flutter/material.dart';
import 'package:music/BO/EventBo.dart';
import 'package:music/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:music/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:music/Pages/EventDetailScreen/EventDetailScreenVM.dart';

// Create a class Named EventDetailScreen whihc extends the Statefulwidget
class EventDetailScreen extends StatefulWidget {
  /* Create a Constructor named EventDetailScreen */
  const EventDetailScreen({super.key, required this.data});

  // Initiate the class Bo data and make it final
  final Bo data;

  /* override the createState function */
  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

// Create a class _EventDetailScreen which extends the State<EventDetailScreen>
class _EventDetailScreenState extends State<EventDetailScreen> {
  // Create an instance for the class EventDetailScreen
  late final EventDetailScreenVM _eventDetailScreenVM =
      EventDetailScreenVM(data: widget.data);

  /* Invoke the function initState */
  @override
  void initState() {
    super.initState();
    // Access the navigation stream using instance and listen to the event
    _eventDetailScreenVM.navigationStream.stream.listen((event) {
      // Check whether the condition event is equal to navigatorpush
      if (event is NavigatorPop) {
        // push the pageconfig,data of the event to the context
        context.pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors

    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: () {
            _eventDetailScreenVM.back();
          },
          label: const Text("BUY TICKET  \$120 "),
          icon: const Icon(Icons.arrow_forward_ios_outlined),
        ),
        appBar: AppBar(
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          elevation: 0.0,
          backgroundColor: Colors.white,
          // ignore: prefer_const_constructors
          leading: MaterialButton(
            onPressed: () {
              /* call the back function using the _eventDetailScreenVM instance */
              _eventDetailScreenVM.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "Event Details",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 24),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon:
                    // Check whether the instance is equal to the true value
                    _eventDetailScreenVM.instance.bookmark == true
                        // If the condition is satisfied
                        ? const Icon(
                            Icons.bookmark,
                            color: Colors.black,
                          )
                        // If the condition is not satisfied
                        : const Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.black,
                          ))
          ],
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: 1,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "lib/Helpers/Resources/Assets/Images/image1.png",
                  fit: BoxFit.fill,
                  height: 250,
                  width: 420,
                ),
                Column(children: [
                  const SizedBox(
                    height: 40,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 100,
                    width: 350,
                    child: Text(
                      // Declare the title using the instance
                      _eventDetailScreenVM.instance.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Row(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              color: const Color(0xff5669FF).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                  "lib/Helpers/Resources/Assets/Images/Calendar.png")),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  // Declare the date using the instance
                                  _eventDetailScreenVM.instance.date,
                                  style: const TextStyle(
                                      color: Color(0xff120D26),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const Text(
                                  " DECEMBER  2021",
                                  style: TextStyle(
                                      color: Color(0xff120D26),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              "Tuesday, 4:00PM - 9:00PM",
                              style: TextStyle(
                                  color: Color(0xff747688),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Row(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              color: const Color(0xff5669FF).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                    "lib/Helpers/Resources/Assets/Images/location.png"),
                                const SizedBox(
                                  height: 1.25,
                                ),
                                Image.asset(
                                    "lib/Helpers/Resources/Assets/Images/location1.png"),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // Declare the location using the instance
                              _eventDetailScreenVM.instance.location,
                              style: const TextStyle(
                                  color: Color(0xff120D26),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              "36 Guild Street London, UK",
                              style: TextStyle(
                                  color: Color(0xff747688),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Row(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "lib/Helpers/Resources/Assets/Images/profile.png"))),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // Declare the organizer using the instance
                              _eventDetailScreenVM.instance.organizer,
                              style: const TextStyle(
                                  color: Color(0xff120D26),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "Organizer",
                              style: TextStyle(
                                  color: Color(0xff747688),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 28,
                              width: 63,
                              decoration: BoxDecoration(
                                color: const Color(0xff5669FF).withOpacity(0.1),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
                                child: Text(
                                  "Follow",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff5669FF),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "About Event",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                              // Declare the aboutEvent using the instance
                              _eventDetailScreenVM.instance.aboutEvent,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              )),
                        ],
                      ),
                    ]),
                  )
                ])
              ]);
            },
          ),
        ));
  }

  /* invoke the dispose function */
  @override
  void dispose() {
    // Using dispose method, dispose the instance
    _eventDetailScreenVM.dispose();
    super.dispose();
  }
}
