// ignore: file_names
import 'package:flutter/material.dart';
import 'package:music/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:music/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:music/pages/HomeScreen/EventScreenVM.dart';

// Create a stful wiget for evntscrn
class EventScreen extends StatefulWidget {
  const EventScreen({
    super.key,
  });

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  
  // Create an instance for the EventScreenVM
  final EventScreenVM _eventScreenVM = EventScreenVM();

  /*Invoke the initState() */
  @override
  void initState() {
    super.initState();
    
    // Using navigation stream to listen to the event
    _eventScreenVM.navigationStream.stream.listen((event) {
      
      // Check whether the condition event is equal to Navigatorpop
      if (event is NavigatorPush) {
        // Using context.pop() pass the pageConfig as paramter
        context.push(pageConfig: event.pageConfig, data: event.data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xff4A43EC),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            height: 195,
            width: 420,
            child: Column(
              children: [
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.menu_rounded, color: Colors.white),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Current Location",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 12),
                                ),
                                const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            const Text(
                              "New Yourk, USA",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    color: const Color(0xffA29EF0)
                                        .withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Icon(
                                  Icons.notifications_none_outlined,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search_sharp,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: const BoxDecoration(
                              border: Border(
                                  left: BorderSide(color: Color(0xffCACCCF)))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text(
                              "Search...",
                              style: TextStyle(
                                  color:
                                      const Color(0xffA29EF0).withOpacity(0.3),
                                  fontSize: 20.33),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 155,
                        ),
                        Row(
                          children: [
                            Container(
                                height: 45,
                                width: 92,
                                decoration: BoxDecoration(
                                    color: const Color(0xff716bf4)
                                        .withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 12,
                                        backgroundColor: const Color(0xff716bf4)
                                            .withOpacity(0.7),
                                        child: const Icon(
                                          Icons.menu,
                                          size: 21,
                                        ),
                                      ),
                                      const Text(
                                        "Filters",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.082),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 170.0),
              child: SizedBox(
                height: 50,
                width: 420,
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 15,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  // Declare the length using instance
                  itemCount: _eventScreenVM.chips.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Chip(
                      padding: const EdgeInsets.only(
                          left: 10, top: 10, bottom: 10, right: 10),
                      shadowColor: const Color(0xff2e2e4f),
                      backgroundColor:
                          
                          // Check whether the instance value is equal to the string value
                          _eventScreenVM.chips[index] == "Sports"
                              
                              // Assign color for it
                              ? const Color(0xfff0635a)
                              
                              // Check whether the instance value is equal to the string value
                              : _eventScreenVM.chips[index] == "Music"
                                  
                                  // Assign color for it
                                  ? const Color(0xfff59762)
                                  
                                  // Check whether the instance value is equal to the string value
                                  : _eventScreenVM.chips[index] == "Food"
                                     
                                      // Assign color for it
                                      ? const Color(0xff29D697)
                                      
                                      // Assign color for it
                                      : const Color(0xff46CDFB),
                      avatar: Image.asset(
                        
                        // Check whether the instance value is equal to the string value
                        _eventScreenVM.chips[index] == "Sports"
                            
                            // If the condition is satisfied give the image path
                            ? "lib/Helpers/Resources/Assets/Images/ball.png"
                            
                            // Check whether the instance value is equal to the string value
                            : _eventScreenVM.chips[index] == "Music"
                                
                                // If the condition is satisfied give the image path
                                ? "lib/Helpers/Resources/Assets/Images/music.png"
                                
                                // Check whether the instance value is equal to the string value
                                : _eventScreenVM.chips[index] == "Food"
                                    
                                    // If the condition is satisfied give the image path
                                    ? "lib/Helpers/Resources/Assets/Images/food.png"
                                    
                                    // If the condition is satisfied give the image path
                                    : "lib/Helpers/Resources/Assets/Images/paint.png",
                      ),
                      label: Text(
                        // Declare the index value for the instance
                        _eventScreenVM.chips[index],
                        style: const TextStyle(
                            fontSize: 17.5, color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ]),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Upcoming Events",
                    style: TextStyle(
                      color: Color(0xff120D26),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text("See All",
                          style: TextStyle(
                            color: Color(0xff747688),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )),
                      const Icon(
                        Icons.arrow_right,
                        color: Color(0xff747688),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 17,
        ),
        Column(
          children: [
            SizedBox(
              width: 400,
              height: 300,
              child: ListView.separated(
                
                // Declare the length using instance
                itemCount: _eventScreenVM.collectionOfBo.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      onTap: () {
                        
                        // Navigate the instance value
                        _eventScreenVM.navigateToNextPage(index: index);
                      },
                      child: Container(
                        height: 300,
                        width: 290,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: Column(
                          children: [
                            Stack(children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Container(
                                  height: 140,
                                  width: 260,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            // Insert the image value usig the instance
                                            _eventScreenVM
                                                .collectionOfBo[index].image),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18, left: 10),
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Column(
                                    children: [
                                      Text(
                                        
                                        // Declare the date using the instance
                                        _eventScreenVM
                                            .collectionOfBo[index].date,
                                        style: const TextStyle(
                                          color: Color(0xffEB5757),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        
                                        // Declare the month using the instance
                                        _eventScreenVM
                                            .collectionOfBo[index].month,
                                        style: const TextStyle(
                                            color: Color(0xffEB5757),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18, left: 215),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Column(children: [
                                    
                                    // Check whether the instance is equal to the true value
                                    _eventScreenVM.collectionOfBo[index]
                                                .bookmark ==
                                            true
                                        
                                        // If the condition is satisfied
                                        ? const Icon(
                                            Icons.bookmark,
                                            color: Color(0xffEB5757),
                                          )
                                        
                                        // if the condition is not satisfied
                                        : const Icon(
                                            Icons.bookmark_border_outlined,
                                            color: Color(0xffEB5757),
                                          )
                                  ]),
                                ),
                              ),
                            ]),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                
                                // Declare the title using the instance
                                _eventScreenVM.collectionOfBo[index].title,
                                style: const TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: const [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      "lib/Helpers/Resources/Assets/Images/girl.png",
                                    ),
                                    radius: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "lib/Helpers/Resources/Assets/Images/boy.png"),
                                    radius: 18,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "+20 Going",
                                    style: TextStyle(
                                        color: Color(0xff3F38DD),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_sharp,
                                    color: Color(0xff716E90),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    
                                    // Declare the address for the instance
                                    _eventScreenVM
                                        .collectionOfBo[index].address,
                                    style: const TextStyle(
                                        color: Color(0xff2B2849),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 12,
                  );
                },
              ),
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: 150,
                  width: 345,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xffd6feff),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Invite your friends",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff120D26)),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "Get \$20 for ticket",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xff120D26)),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 32,
                          width: 72,
                          decoration: BoxDecoration(
                              color: const Color(0xff00F8FF),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(12, 8, 16, 8),
                            child: Text(
                              "INVITE",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 65,
                  top: 25,
                  child: Container(
                    height: 150,
                    width: 345,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "lib/Helpers/Resources/Assets/Images/gift.png")),
                    ),
                  ),
                ),
              ])
            ],
          ),
        )
      ],
    ));
  }

  /* Invoke the dispose() */
  @override
  void dispose() {
    // Using dispose method, dispose the instance _eventScreenVM
    _eventScreenVM.dispose();
    super.dispose();
  }
}
