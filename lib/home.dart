import 'package:flutter/material.dart';

class HomeNews extends StatelessWidget {
  const HomeNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "uNews",
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                    Icon(Icons.notifications_sharp),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        image: AssetImage("images/city.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                color: Colors.red,
                                height: 40,
                                width: 40,
                                // decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(1)),
                                child: const Icon(
                                  Icons.check_box,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(30, 25),
                                  backgroundColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Text('Travel'),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "5 Min Reads",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          const Text(
                            "The UNESCO World Heritage Site with Sky-high house prices",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "images/bc.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "BBC News",
                                style: TextStyle(color: Colors.white),
                              ),
                              const Spacer(),
                              const Text(
                                "3 Hours Ago",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                          const Divider(
                            indent: 60,
                            endIndent: 60,
                            thickness: 5,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: const Size(30, 33),
                        ),
                        child: const Text('Latest'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Business   |",
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Sport   |"),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Politics   |"),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Tech"),
                    ],
                  ),
                ),
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "images/china.jpeg",
                            height: 130,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Business",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text("12 Min Reads"),
                                const SizedBox(
                                  width: 60,
                                ),
                                const Icon(Icons.check_box),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Peak Oil is Coming. That Won't",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "Save The World",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "1 Min Ago",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
