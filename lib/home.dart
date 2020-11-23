import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class HomePage extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      
      PageViewModel(
          image: Center(child: Image.asset('assets/images/read5.png')),
          title: 'Live',
          body:
              'Meet your favorite characters and feel like a part of the story',
           decoration: PageDecoration(
            titleTextStyle: TextStyle(
                color: Colors.deepOrangeAccent,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 25.0),
            bodyTextStyle:
                TextStyle(color: Colors.black, fontSize: 20.0),
          )),
      PageViewModel(
          image: Center(child: Image.asset('assets/images/read3.png')),
          title: 'Read',
          body: 'Order a book in any language and we will deliver to you',
          decoration: PageDecoration(
            titleTextStyle: TextStyle(
                color: Colors.deepOrangeAccent,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 25.0),
            bodyTextStyle:
                TextStyle(color: Colors.black, fontSize: 20.0),
          )),
      PageViewModel(
          image: Center(child: Image.asset('assets/images/read4.png')),
          title: 'Enjoy',
          body: 'We will recommend you a book based on your preference',
           decoration: PageDecoration(
            titleTextStyle: TextStyle(
                color: Colors.deepOrangeAccent,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 25.0),
            bodyTextStyle:
                TextStyle(color: Colors.black, fontSize: 20.0),
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
            globalBackgroundColor: Colors.white,
            curve: Curves.easeInQuart,
            dotsDecorator: DotsDecorator(
              activeColor: Colors.deepOrangeAccent,
            ),
            pages: getPages(),
            onDone: () {},
            done: Text(
              'Got it',
              style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0),
            )));
  }
}
