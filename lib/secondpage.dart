import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/services.dart';


class SecondRoute extends StatelessWidget {
  // const SecondRoute({Key? key}) : super(key: key);
  SecondRoute({required this.result});

  double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
      body: Container(
        height: 800,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://designimages.appypie.com/appbackground/appbackground-65-nature-outdoors.jpg"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                child: Text('\n\n\n'),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    border: Border(
                      left: BorderSide(width: 5.0, color: Colors.white),
                      top: BorderSide(width: 5.0, color: Colors.white),
                      right: BorderSide(width: 5.0, color: Colors.white),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Your BMI is ',
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'arial',
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                      ),
                    ),
                    Container(
                      child: Text(result.toString(),
                          style: const TextStyle(
                              fontSize: 30,
                              fontFamily: 'arial',
                              color: Colors.white,
                              fontWeight: FontWeight.normal)),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  if (result == 0)
                    ...[]
                  else if (result < 18.5) ...[
                    Container(
                      padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 25.0),
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          border: Border(
                            left: BorderSide(width: 5.0, color: Colors.white),
                            bottom: BorderSide(width: 5.0, color: Colors.white),
                            right: BorderSide(width: 5.0, color: Colors.white),
                          )),
                      child: Column(
                        children: [
                          Container(
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 8.0),
                              child: Center(
                                  child: Text(
                                    'UNDERWEIGHT',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: 'arial',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ] else if (result > 18.5 && result < 24.9) ...[
                    Container(
                      padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 25.0),
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          border: Border(
                            left: BorderSide(width: 5.0, color: Colors.white),
                            bottom: BorderSide(width: 5.0, color: Colors.white),
                            right: BorderSide(width: 5.0, color: Colors.white),
                          )),
                      child: Column(
                        children: [
                          Container(
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 8.0),
                              child: Center(
                                  child: Text(
                                    'NORMAL',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: 'arial',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ] else if (result > 25.0 && result < 29.9) ...[
                    Container(
                      padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 25.0),
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          border: Border(
                            left: BorderSide(width: 5.0, color: Colors.white),
                            bottom: BorderSide(width: 5.0, color: Colors.white),
                            right: BorderSide(width: 5.0, color: Colors.white),
                          )),
                      child: Column(
                        children: [
                          Container(
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 8.0),
                              child: Center(
                                  child: Text(
                                    'OVERWEIGHT',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: 'arial',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ] else if (result >= 30.0) ...[
                    Container(
                      padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 25.0),
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          border: Border(
                            left: BorderSide(width: 5.0, color: Colors.white),
                            bottom: BorderSide(width: 5.0, color: Colors.white),
                            right: BorderSide(width: 5.0, color: Colors.white),
                          )),
                      child: Column(
                        children: [
                          Container(
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 8.0),
                              child: Center(
                                  child: Text(
                                    'OBESE',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: 'arial',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
                ],
              ),
              Container(
                child: Text('\n\n\n'),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 25.0),
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  border: Border.all(
                    width: 5,
                    color: Colors.white,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 8.0),
                        child: Center(
                            child: Text(
                              'Rate our App!',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'arial',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    RatingBar.builder(
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        null;
                      },
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
