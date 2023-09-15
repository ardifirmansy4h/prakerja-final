import 'package:flutter/material.dart';
import 'package:final_prakerja/nav.dart';

class Topics extends StatefulWidget {
  const Topics({super.key});

  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  bool? check1 = false;
  List<String> topics = <String>[
    'Science',
    'Fashion',
    'Technology',
    'Sport',
    'Goverment',
    'Future'
  ];
  List<String> imageTop = <String>[
    'images/science.jpeg',
    'images/fashion.jpeg',
    'images/tech.jpeg',
    'images/sport.jpeg',
    'images/gv.jpeg',
    'images/ft.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text(
                    "Skip",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Choose your topics?",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Topics',
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  // scrollDirection: Axis.horizontal,
                  itemCount: topics.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 18,
                    crossAxisSpacing: 18,
                    childAspectRatio: 4 / 5,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.grey,
                          //       blurRadius: 10,
                          //       offset: Offset.zero)
                          // ],
                          image: DecorationImage(
                            image: AssetImage(imageTop[index]),
                            fit: BoxFit.cover,
                          )),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Checkbox(
                              value: check1,
                              onChanged: (bool? value) {
                                setState(
                                  () {
                                    check1 = value;
                                  },
                                );
                              },
                            ),
                          ),
                          Text(
                            topics[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Navigate();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  child: Text("Next"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
