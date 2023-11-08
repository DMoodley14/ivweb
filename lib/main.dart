import 'package:flutter/material.dart';
import 'package:ivline_e3c6c/const.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'pages/aboutuspage.dart';
import 'pages/blogpage.dart';
import 'pages/contactpage.dart';
import 'pages/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets.dart';

void main() => runApp(Website());

class Website extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Codon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //font family
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 907, name: MOBILE),
          const Breakpoint(start: 908, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      initialRoute: "/",
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/services': (context) => ServicePage(),
        '/blog': (context) => BlogPage(),
        '/contact': (context) => ContactUsPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          WebAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ConstrainedBox(
                  constraints: BoxConstraints(
                      // minHeight: MediaQuery.of(context).size.height * 0.4,
                      maxHeight: MediaQuery.of(context).size.height * 0.8),
                  child: Stack(
                    children: [
                      Image.asset(
                        'leafBlack.jpeg',
                        fit:
                            ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                                ? BoxFit.fitWidth
                                : BoxFit.fitWidth,
                        width: double.infinity,
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Providing healthcare professionals with\nthe digital tools needed to make a difference',
                            style: kPageHeading(context),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Values(), /////////////////                              Values
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight:
                          ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                              ? MediaQuery.of(context).size.height * 0.8
                              : MediaQuery.of(context).size.width < 350
                                  ? MediaQuery.of(context).size.height
                                  : MediaQuery.of(context).size.height * 0.75),
                  child: Stack(
                    children: [
                      // ColorFiltered(
                      //  colorFilter: ColorFilter.mode(
                      //      Colors.black.withOpacity(0), BlendMode.dstATop),
                      //    child:
                      Container(
                        decoration: BoxDecoration(
                            //   color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage('blackpentagon.jpg'),
                                fit: ResponsiveBreakpoints.of(context)
                                        .largerThan(MOBILE)
                                    ? BoxFit.fitWidth
                                    : BoxFit.fitHeight)),
                        width: double.infinity,
                      ),
                      //  ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            color: Colors.transparent,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Card(
                                color: Colors.transparent,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35, 30, 35, 30),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxWidth:
                                            ResponsiveBreakpoints.of(context)
                                                    .largerThan(MOBILE)
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'True impact should never be held back by a lack of resources',
                                          style: kPageHeading(context),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          'If you possess a ground-breaking idea with the potential to make a significant global impact, we invite you to submit it through our Project Baobab initiative.\n\nThrough this program, we seek to identify and support transformative ideas that can change the world for the better.\n\n If your idea demonstrates great promise and aligns with our vision, we are committed to developing your app or website without any financial cost to you. \n\nOur goal is to empower innovators like you to bring their visionary concepts to life, fostering positive change and shaping a better future for all.',
                                          style: TextStyle(
                                            fontSize: ResponsiveBreakpoints.of(
                                                        context)
                                                    .equals(MOBILE)
                                                ? 11
                                                : 14,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            _launchURL(context);
                                          },
                                          child: Text(
                                            'Learn more about Project Baobab',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600),
                                          ),
                                          style: ButtonStyle(
                                            minimumSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(200, 50)),
                                            backgroundColor:
                                                MaterialStateProperty
                                                    .all<Color>(Color.fromARGB(
                                                        255, 54, 77, 147)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'How we can help you:',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w700),
                      ),
                      ServiceBoxHome(),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.8),
                  child: Stack(
                    children: [
                      const Image(
                        image: AssetImage(
                          'steth.jpeg',
                        ),
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              color: Color.fromARGB(94, 0, 0, 0),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  'All projects are lead by a medical doctor, ensuring that you stay connected with an individual who possesses a deep understanding of the intricacies of the healthcare field.\n\nThe same level of care and attention that you provide to your patients is what we provide to you',
                                  style: kPageSubHeading(context),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                featureBoxHome(
                  icon: 'collab.png',
                  feature:
                      'We recognize the immense value of your idea. It represents the culmination of your years of distinct experience combined with your vision to perceive the world in a unique way. Consequently, safeguarding it becomes paramount. Therefore, we wholeheartedly offer our commitment to signing a non-disclosure/confidentiality agreement before engaging in any discussions.',
                ),
                ResponsiveBreakpoints.of(context).equals(MOBILE)
                    ? Column(
                        children: [
                          featureBoxHome(
                              icon: 'journey.png',
                              feature:
                                  'Whether you are a healthcare professional with a revolutionary idea or already have a well-defined plan but need guidance on how to proceed, we are here to support you every step of the way. We understand that bringing transformative ideas to fruition can be challenging, especially when it comes to sourcing the right developer or navigating the development stage. Our commitment is to be your partner throughout this journey.'),
                          featureBoxHome(
                              icon: 'resources.png',
                              feature:
                                  'No matter where you currently stand in the process, we offer our expertise and resources to assist you. We are dedicated to working closely with you, drawing upon our knowledge and expertise to support the realization of your impactful medical innovation. By collaborating together, we have the potential to create a significant and enduring impact on the field of medicine, ultimately improving healthcare outcomes for individuals around the globe. ')
                        ],
                      )
                    : Row(
                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: featureBoxHome(
                                  icon: 'journey.png',
                                  feature:
                                      'Whether you are a healthcare professional with a revolutionary idea or already have a well-defined plan but need guidance on how to proceed, we are here to support you every step of the way. We understand that bringing transformative ideas to fruition can be challenging, especially when it comes to sourcing the right developer or navigating the development stage. Our commitment is to be your partner throughout this journey.')),
                          Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: featureBoxHome(
                                  icon: 'resources.png',
                                  feature:
                                      'No matter where you currently stand in the process, we offer our expertise and resources to assist you. We are dedicated to working closely with you, drawing upon our knowledge and expertise to support the realization of your impactful medical innovation. By collaborating together, we have the potential to create a significant and enduring impact on the field of medicine, ultimately improving healthcare outcomes for individuals around the globe. '))
                        ],
                      ),
                SizedBox(height: 50),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.5),
                  child: Stack(
                    children: [
                      Image(
                        image: AssetImage(
                          'mountain.jpg',
                        ),
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Card(
                            color: Color.fromARGB(69, 0, 0, 0),
                            child: Container(
                              height: 200,
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'To move a mountain, one begins by carrying a single stone',
                                    style: kPageSubHeading(context),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    '- Confucius',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Contact us today to build your dream',
                                    style: kPageSubHeading(context),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                BottomBar()
              ],
            ),
          ),
        ],
      ),
      endDrawer: AppDraw(size: true),
    );
  }

  // Function to launch the URL and display the confirmation popup
  void _launchURL(BuildContext context) async {
    const url = 'https://www.projectbaobab.co.za'; //

    // If the user presses "Proceed," open the URL
    await launch(url);
  }
}
