import 'package:flutter/material.dart';
import 'package:pdp_ui6_party3/animations/fade_anim.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/im_party.jpeg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: FadeAnimation(
                        1,
                        Text(
                          'Find the best parties near you',
                          style: TextStyle(
                              color: Colors.yellow[200],
                              fontSize: 40,
                              height: 1.1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    FadeAnimation(
                      1.2,
                      Text(
                        'Let us find a party for your interest',
                        style: TextStyle(
                            color: Colors.green.withOpacity(.99),
                            fontSize: 25,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 400,
              // ),

              _isLogin
                  ? FadeAnimation(
                      1.4,
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.yellow[900]),
                        child: const Center(
                          child: Text(
                            'Start',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    )
                  : FadeAnimation(
                      1.3,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red[400]),
                              child: const Center(
                                child: Text(
                                  'Google',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue[400]),
                              child: const Center(
                                child: Text(
                                  'Facebook',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
