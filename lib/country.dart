import 'package:flutter/material.dart';
import 'package:final_prakerja/topics.dart';

class ChooseCountry extends StatefulWidget {
  const ChooseCountry({super.key});

  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  final List<String> cntry = <String>[
    'Afganistan',
    'Albania',
    'Algeria',
    'Andora',
    'Argentina',
    'Argentina',
    'Argentina',
  ];
  final List<String> sktan = <String>['AF', 'AL', 'DZ', 'AD', 'AR', 'AD', 'AS'];
  final List<String> flag = <String>[
    'images/afg.jpg',
    'images/alba.png',
    'images/alga.png',
    'images/ando.png',
    'images/arge.png',
    'images/arge.png',
    'images/arge.png',
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
                  const Text(
                    "Skip",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "What is your country ?",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
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
                child: ListView.separated(
                  padding: const EdgeInsets.all(7),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: flag.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              flag[index],
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            sktan[index],
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            cntry[index],
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 30,
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
                          return const Topics();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  child: const Text("Next"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
