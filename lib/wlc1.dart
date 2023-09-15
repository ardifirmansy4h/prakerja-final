import 'package:flutter/material.dart';
import 'package:final_prakerja/sign-in.dart';

class Wlc extends StatelessWidget {
  const Wlc({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/wlc.jpg"), fit: BoxFit.cover),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "From art to Politics,",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: 'Tes',
                ),
              ),
              const Text(
                "Anything in",
                style: TextStyle(
                    color: Colors.red, fontSize: 50, fontFamily: 'Tes'),
              ),
              const Text(
                "Unews",
                style: TextStyle(
                    color: Colors.white, fontSize: 50, fontFamily: 'Tes'),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Divider(
                  height: 20,
                  thickness: 5,
                  indent: 100,
                  endIndent: 100,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignIn();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0))),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
