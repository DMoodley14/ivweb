// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

import 'const.dart';

///////////////
///
///                                                                    WebAppBar
//////////////
class WebAppBar extends StatelessWidget {
  WebAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).equals(MOBILE)
        ? SliverAppBar(
            snap: true,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: Colors.black),
            automaticallyImplyLeading: false,
            floating: true,
            shadowColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'codonLogo.png',
                  height: 40,
                ),
                Text(' Codon',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
              ],
            ),
          )
        : SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 40,
            pinned: true,
            automaticallyImplyLeading: false,
            actions: [
              Flexible(
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Text(
                      'Home',
                      style: kAppBarTextstyle,
                    )),
              ),
              Flexible(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/about');
                  },
                  child: Text('About Us', style: kAppBarTextstyle),
                ),
              ),
              Flexible(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/services');
                  },
                  child: Text('Services', style: kAppBarTextstyle),
                ),
              ),
              // TextButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, '/blog');
              //   },
              //   child: Text('Blog', style: kAppBarTextstyle),
              // ),
              Flexible(
                child: TextButton(
                  onPressed: () {
                    _launchURL(context);
                  },
                  child: Text('Baobab', style: kAppBarTextstyle),
                ),
              ),
              Flexible(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                  child: Text('Contact Us', style: kAppBarTextstyle),
                ),
              ),
              SizedBox(width: 10)
            ],
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset(
                    'codonLogo.png',
                    height: 48,
                  ),
                  Text('   Codon',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 24)),
                ],
              ),
            ),
          );
  }

  // Function to launch the URL and display the confirmation popup
  void _launchURL(BuildContext context) async {
    const url = 'https://www.projectbaobab.co.za'; //

    // If the user presses "Proceed," open the URL
    await launch(url);
  }
}

//
///
///
///
///                                                                     AppDraw
///
///
///

class AppDraw extends StatelessWidget {
  late var size;
  AppDraw({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Codon',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700)),
          ),
          decoration: BoxDecoration(
            color: Colors.black,
          ),
        ),
        ListTile(
          title: Text(
            'Home',
            style: kAppDraw(context),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
        ListTile(
          title: Text(
            'About Us',
            style: kAppDraw(context),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/about');
          },
        ),
        ListTile(
          title: Text(
            'Services',
            style: kAppDraw(context),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/services');
          },
        ),
        // ListTile(
        //   title: Text('Blog',
        //    style: kAppDraw(context),),
        //   onTap: () {
        //     Navigator.pushNamed(context, '/blog');
        //   },
        // ),
        ListTile(
          title: Text(
            'Project Baobab',
            style: kAppDraw(context),
          ),
          onTap: () {
            _launchURL(context);
          },
        ),
        ListTile(
          title: Text(
            'Contact Us',
            style: kAppDraw(context),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/contact');
          },
        ),
      ],
    ));
  }

  void _launchURL(BuildContext context) async {
    const url = 'https://www.projectbaobab.co.za'; //

    // If the user presses "Proceed," open the URL
    await launch(url);
  }
}

///
///
///
///                                                                       Values
///
///
///

class Values extends StatelessWidget {
  const Values({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).largerThan(MOBILE)
        ? Container(
            height: 400,
            padding: EdgeInsets.fromLTRB(100, 80, 100, 80),
            child: Row(children: [
              Flexible(
                flex: 1,
                child: Column(children: [
                  Icon(Icons.center_focus_strong,
                      size: 75, color: Colors.black),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                        '''We are driven by the vision to create a better world for patients and providers.  ''',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        )),
                  ),
                ]),
              ),
              Flexible(
                flex: 1,
                child: Column(children: [
                  Icon(Icons.insights_outlined, size: 75, color: Colors.black),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                        'We strive to transform healthcare through innovative technology and a deep commitment to improving access, quality, and outcomes.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        )),
                  ),
                ]),
              ),
              Flexible(
                flex: 1,
                child: Column(children: [
                  Icon(Icons.health_and_safety_outlined,
                      size: 75, color: Colors.black),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                        'Together, we can shape a future where healthcare is truly patient-centered, efficient, and equitable.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        )),
                  ),
                ]),
              ),
            ]),
          )
        : Container(
            //MOBILE VIEW
            height: MediaQuery.of(context).size.width < 350 ? 600 : 500,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(10, 80, 10, 80),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Icon(Icons.center_focus_strong,
                          size: 50, color: Colors.black),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ValueBox(
                          value:
                              '''We are driven by the vision to create a better world for patients and providers.  ''',
                        )),
                  ]),
                  SizedBox(height: 50),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Icon(Icons.insights_outlined,
                          size: 50, color: Colors.black),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ValueBox(
                          value:
                              'We strive to transform healthcare through innovative technology and a deep commitment to improving access, quality, and outcomes.',
                        )),
                  ]),
                  SizedBox(height: 50),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Icon(Icons.health_and_safety_outlined,
                          size: 50, color: Colors.black),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: ValueBox(
                        value:
                            'Together, we can shape a future where healthcare is truly patient-centered, efficient, and equitable.',
                      ),
                    ),
                  ]),
                ]),
          );
  }
}

class ValueBox extends StatelessWidget {
  late String value;
  ValueBox({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Text(value,
          textAlign: TextAlign.justify,
          softWrap: true,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
    );
  }
}

class ServiceBoxHome extends StatelessWidget {
  //////////SERVICE BOX HOMEPAGE
  const ServiceBoxHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).equals(MOBILE)
        ? Padding(
            ////////////////////  MOBILE VIEW
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Card(
                  elevation: 10,
                  color: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'laptop.png',
                          height: 50,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Web Development',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 20),
                        Text(
                            style: TextStyle(fontSize: 12, color: Colors.white),
                            'We build websites and webapps that are fast, secure, and scalable. Our team of developers are experts in the latest web technologies, and we are committed to delivering a product that meets your needs, exceeds your expectations and most importantly your cost budget.',
                            textAlign: TextAlign.justify),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'phone.png',
                          height: 60,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Mobile App Development',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(height: 20),
                        Text(
                          style: TextStyle(fontSize: 13, color: Colors.white),
                          'We excel in creating beautiful Android and iOS apps. Our skilled team crafts tailored solutions that combine impeccable design with seamless performance. Experience the power of captivating mobile experiences.',
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Card(
                    elevation: 10,
                    color: Colors.grey[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      padding: EdgeInsets.all(75),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'laptop.png',
                            height: 75,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Web Development',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 20),
                          Text(
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                              'We build websites and webapps that are fast, secure, and scalable. Our team of developers are experts in the latest web technologies, and we are committed to delivering a product that meets your needs, exceeds your expectations and most importantly your cost budget.',
                              textAlign: TextAlign.justify),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Card(
                    elevation: 10,
                    color: Colors.grey[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      padding: EdgeInsets.all(75),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'phone.png',
                            height: 75,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Mobile App Development',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(height: 20),
                          Text(
                            style: TextStyle(fontSize: 13, color: Colors.white),
                            'We excel in creating beautiful Android and iOS apps. Our skilled team crafts tailored solutions that combine impeccable design with seamless performance. Experience the power of captivating mobile experiences.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}

class featureBoxHome extends StatelessWidget {
  late String icon;
  late String feature;
  featureBoxHome({super.key, required this.icon, required this.feature});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).equals(MOBILE)
        ? Padding(
            padding: EdgeInsets.all(20.0),
            child: Card(
              color: Colors.grey[900],
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Image.asset(
                      //'collab.png',
                      icon,
                      height: 75,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 50),
                    child: Text(
                      //  'We recognize the immense value of your idea. It represents the culmination of your years of distinct experience combined with your vision to perceive the world in a unique way. Consequently, safeguarding it becomes paramount. Therefore, we wholeheartedly offer our commitment to signing a non-disclosure/confidentiality agreement before engaging in any discussions.',
                      feature,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.all(50.0),
            child: Card(
              color: Colors.grey[900],
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Image.asset(
                      //'collab.png',
                      icon,
                      height: 75,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 0, 100, 50),
                    child: Text(
                      //  'We recognize the immense value of your idea. It represents the culmination of your years of distinct experience combined with your vision to perceive the world in a unique way. Consequently, safeguarding it becomes paramount. Therefore, we wholeheartedly offer our commitment to signing a non-disclosure/confidentiality agreement before engaging in any discussions.',
                      feature,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).equals(MOBILE)
        ? Container(
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Links:',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Home',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/about');
                          },
                          child: Text(
                            'About Us',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/services');
                          },
                          child: Text(
                            'Services',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                      // TextButton(
                      //     onPressed: () {
                      //       Navigator.pushNamed(context, '/blog');
                      //     },
                      //     child: Text(
                      //       'Blog',
                      //       textAlign: TextAlign.left,
                      //       style: TextStyle(color: Colors.white),
                      //     )),
                      TextButton(
                          onPressed: () {
                            _launchURL(context);
                          },
                          child: Text(
                            'Project Baobab',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                      SizedBox(height: 30),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/contactUs');
                          },
                          child: Text(
                            'Contact Us:',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),
                          )),
                      TextButton(
                          onPressed: null,
                          child: Row(
                            children: [
                              Text(
                                'Email: ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SelectableText(
                                'support@codon.co.za',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                      TextButton(
                          onPressed: null,
                          child: Row(
                            children: [
                              Text(
                                'Phone: ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SelectableText(
                                '+27 78 538 1332',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                      TextButton(
                          onPressed: null,
                          child: Row(
                            children: [
                              Text(
                                'Whatsapp: ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SelectableText(
                                '+27 78 538 1332',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'codonLogo.png',
                          height: 50,
                        ),
                        Text(
                          '  Codon',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Providing the digital tools\nneeded to make a difference',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Text(
                      '\n\n© 2023 Codon. All rights reserved.',
                      style: TextStyle(color: Colors.white, fontSize: 9),
                    ),
                  ],
                )
              ],
            ),
          )
        : Container(
            color: Colors.black,
            child: Padding(
              padding: EdgeInsets.all(75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Text(
                            'Home',
                            style: TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/about');
                          },
                          child: Text(
                            ' About Us',
                            style: TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/services');
                          },
                          child: Text(
                            ' Services',
                            style: TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/blog');
                          },
                          child: Text(
                            'Blog',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () {
                            _launchURL(context);
                          },
                          child: Text(
                            ' Project Baobab',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/contactUs');
                          },
                          child: Text(
                            'Contact Us:',
                            style: TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: null,
                          child: Row(
                            children: [
                              Text(
                                'Email: ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                              SelectableText(
                                'support@codon.co.za',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ],
                          )),
                      TextButton(
                          onPressed: null,
                          child: Row(
                            children: [
                              Text(
                                'Phone: ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                              SelectableText(
                                '+27785381332',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ],
                          )),
                      TextButton(
                          onPressed: null,
                          child: Row(
                            children: [
                              Text(
                                'Whatsapp: ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                              SelectableText(
                                '+27785381332',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ],
                          )),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'codonLogo.png',
                            height: 50,
                          ),
                          Text(
                            '  Codon',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'Providing the digital tools\nneeded to make a difference',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                      Text(
                        '\n\n© 2023 Codon. All rights reserved.',
                        style: TextStyle(color: Colors.white, fontSize: 9),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  void _launchURL(BuildContext context) async {
    const url = 'https://www.projectbaobab.co.za'; //

    // If the user presses "Proceed," open the URL
    await launch(url);
  }
}
