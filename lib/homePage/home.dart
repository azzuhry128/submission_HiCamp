import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> locations = <String>['bali', 'malibu', 'maldives'];
  final List<int> colorCodes = <int>[200, 300, 400];

  final List<String> recommendations = <String>[
    'germany',
    'russia',
    'china',
    'vietnam',
    'india',
    'japan',
    'korea'
  ];

  final List<String> recommendationsLocations = <String>[
    'berlin',
    'kremlin',
    'great wall ',
    'ho chi minh',
    'taj mahal',
    'imperial palace',
    'seoul'
  ];

  final List<int> recommendationsColorCodes = <int>[
    200,
    300,
    400,
    500,
    600,
    700,
    800
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 24.0,
                          ),
                          child: Text(
                            "GOOD MORNING",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0,
                                color: Colors.purple),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 24.0,
                          ),
                          child: Text(
                            "azzuhry128",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16.0,
                                color: Colors.purple),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 48.0),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.purple),
                  child: Icon(
                    Icons.people_rounded,
                    size: 36,
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
                width: double.infinity,
                child: SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(8),
                    itemCount: locations.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 240,
                        width: 180,
                        margin: EdgeInsets.only(right: 8, left: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.purple[colorCodes[index]],
                        ),
                        child: Center(
                          child: Text(locations[index]),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 24.0),
                child: Text(
                  "Recommendations",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
                width: double.infinity,
                child: SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(8),
                    itemCount: recommendations.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 64,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: 8),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color:
                              Colors.purple[recommendationsColorCodes[index]],
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              margin: EdgeInsets.only(right: 8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: Colors.deepPurple[
                                      recommendationsColorCodes[index]]),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "image",
                                    style: TextStyle(),
                                  )),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(recommendations[index]),
                                  Text(recommendationsLocations[index])
                                ]),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
