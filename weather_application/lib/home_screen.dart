
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:weather_application/api/get_api.dart';

var dayinfo = DateTime.now();
 var dateFormat = DateFormat('EEE, d MMM, yyyy').format(dayinfo);

// ignore: must_be_immutable
class HomePaage extends StatelessWidget {
  var client = WeatherData();
  var data;
 

  HomePaage({super.key});

  info() async {
    
    data = await client.getData('calicut');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: FutureBuilder(
      future: info(),
      builder: (context, snapshot) {
        return ListView(children: [
          Column(
            children: [
              Container(
                height: size.height * 0.75,
                width: size.width,
                padding: const EdgeInsets.only(top: 30),
                margin: const EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(40),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff955cd1),
                      Color(0xff3fa2fa),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.2, 0.85],
                  ),
                ),
                child: Column(
                  children: [
                    
                    Text(
                      data?.cityName,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 30,
                          fontFamily: ' MavenPro'),
                    ),
                    Text(
                       dateFormat,
                      
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                          fontFamily: ' MavenPro'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //
                    Image.network(
                      'https:${data?.icon}',
                      width: size.width * 0.3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${data?.conditions}',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            fontFamily: ' MavenPro'),
                      ),
                    ),
                    Text(
                      '${data?.temp}°',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 70,
                          fontWeight: FontWeight.w600,
                          fontFamily: ' MavenPro'),
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
                                '${data?.wind}  km/h',
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
                                'assets/image/cloudy.png',
                                width: size.width * 0.1,
                              ),
                              Text(
                                '${data?.humidity}',
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
                              Text(
                                '${data?.windDirection}',
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
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Gust',
                          style: TextStyle(
                            color: Colors.white.withOpacity(.5),
                            fontFamily: 'MavenPro',
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${data?.gust} kp/h',
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'MavenPro',
                            fontSize: 23,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Pressure',
                          style: TextStyle(
                            color: Colors.white.withOpacity(.5),
                            fontFamily: 'MavenPro',
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${data?.pressure} hps',
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'MavenPro',
                            fontSize: 23,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'UV',
                          style: TextStyle(
                            color: Colors.white.withOpacity(.5),
                            fontFamily: 'MavenPro',
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${data?.uv}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'MavenPro',
                            fontSize: 23,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Precipation',
                          style: TextStyle(
                            color: Colors.white.withOpacity(.5),
                            fontFamily: 'MavenPro',
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${data?.precipation} mm',
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'MavenPro',
                            fontSize: 23,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        'Wind',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.5),
                          fontFamily: 'MavenPro',
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.wind}.km/h',
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'MavenPro',
                          fontSize: 23,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Last Upadate',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.5),
                          fontFamily: 'MavenPro',
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.lastUpadte}',
                        style: const TextStyle(
                          color: Colors.green,
                          fontFamily: 'MavenPro',
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ))
                ],
              )
            ],
          ),
        ]);
      },
    ));
  }
}
