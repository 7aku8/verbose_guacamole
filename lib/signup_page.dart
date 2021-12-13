import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    List images = [
      'g.png',
      't.png',
      'f.png'
    ];

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
                width: w,
                height: h * 0.3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "img/signup.png"
                      ),
                      fit: BoxFit.cover,
                    )
                ),
              child: Column(
                children: [
                  SizedBox(height: h * 0.14),
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      'img/profile1.png',
                    ),
                    backgroundColor: Colors.white70,
                  )
                ],
              )
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2)
                              )
                            ]
                        ),
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: const Icon(Icons.email, color: Colors.deepOrangeAccent),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1.0,
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1.0,
                                    )
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            )
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2)
                              )
                            ]
                        ),
                        child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                                prefixIcon: const Icon(Icons.password_outlined, color: Colors.deepOrangeAccent),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1.0,
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1.0,
                                    )
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            )
                        ),
                      )
                    ]
                )
            ),
            const SizedBox(height: 40),
            Container(
              width: w * 0.5,
              height: h * 0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(h * 0.04),
                  image: const DecorationImage(
                    image: AssetImage(
                        "img/loginbtn.png"
                    ),
                    fit: BoxFit.cover,
                  )
              ),
              child: const Center(
                child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    )
                ),
              ),
            ),
            SizedBox(height: h * 0.08),
            Text(
              'Sign up using one of the following methods',
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              children: List<Widget>.generate(
                3,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          'img/' + images[index]
                        ),
                      ),
                    ),
                  );
                }
              )
            )
          ],
        )
    );
  }
}
