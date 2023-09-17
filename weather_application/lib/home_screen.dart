import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: size.height * 0.75,
              width: size.width,
              padding: const EdgeInsets.only(top: 30),
              margin: const EdgeInsets.only(right: 10, left: 10),
              decoration: BoxDecoration(
                  color: Colors.red,
                  gradient: const LinearGradient(
                      colors: [Color(0xff955cd1), Color(0xff3fa2fa)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [0.2, 0.85]),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    'Constantine',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 35,
                        fontFamily: 'MavenPro'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Monday,05 Mars',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'MavenPro'),
                  ),
                  Image.asset(
                    'assets/image/icons8-sunny-100.png',
                    width: size.width * 0.4,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Sunny',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hubbali'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '15',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 75,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Hubbali'),
                  ),
                 Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/img/icons8-windwhite-100.png',
                                width: size.width * 0.1,
                              ),
                              Text(
                                'data?.wind}  km/h',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Hubballi',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Wind',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Hubballi',
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/img/cloudy.png',
                                width: size.width * 0.1,
                              ),
                               Text(
                                'data?.humidity',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Hubballi',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Humidity',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Hubballi',
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/img/icons8-windflag-100.png',
                                width: size.width * 0.1,
                              ),
                              // Text(
                              //   '${data?.windDirection}',
                              //   style: const TextStyle(
                              //       color: Colors.white,
                              //       fontFamily: 'Hubballi',
                              //       fontSize: 20,
                              //       fontWeight: FontWeight.bold),
                              // ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Wind Direction',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Hubballi',
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
