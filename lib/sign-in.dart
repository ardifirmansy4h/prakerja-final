// ignore: file_names
import 'package:flutter/material.dart';
import 'package:final_prakerja/country.dart';
import 'package:final_prakerja/wlc1.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool? check1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
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
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Text(
                        "Skip",
                        style: TextStyle(fontSize: 17),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 10.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const Wlc();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0, bottom: 15.0),
                  child: Text(
                    "Create an Account",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Colors.red,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    suffixIcon: const Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Colors.red,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    suffixIcon: const Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Colors.red,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: check1,
                      onChanged: (bool? value) {
                        setState(
                          () {
                            check1 = value;
                          },
                        );
                      },
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'I Have Read ',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Terms & Aggrement',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ChooseCountry();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                    child: Text("Sign Up"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "or sign up with",
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 40,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.map),
                        label: const Text(
                          'Goggle',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 120,
                      height: 40,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.apple),
                        label: const Text(
                          'Apple',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
