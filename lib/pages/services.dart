import 'package:flutter/material.dart';
import 'package:ivline_e3c6c/const.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import '../widgets.dart';
import 'package:photo_view/photo_view.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ResponsiveBreakpoints.of(context).equals(MOBILE)
              ? SliverAppBar(
                  backgroundColor: Colors.black,
                  iconTheme: IconThemeData(color: Colors.white),
                )
              : WebAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
                color: Colors.black,
                height: MediaQuery.of(context).size.height *
                    (ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                        ? 0.8
                        : 0.4),
                child: Center(
                  child: Text('Simplicity is our default',
                      style: kPageHeading(context)),
                )),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Center(
                child: Text(
                  'We offer 2 products: Custom Mobile Apps and Custom Web Apps',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize:
                          ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                              ? 28
                              : 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            ServiceBox(),
            SizedBox(
              height: 60,
            ),
            ResponsiveBreakpoints.of(context).equals(MOBILE)
                ? Container(
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height),
                    child: PhotoView(
                      imageProvider: AssetImage("ROADMAP.png"),
                    ))
                : Image.asset("ROADMAP.png"),
            BottomBar()
          ]))
        ],
      ),
    );
  }
}

class ServiceBox extends StatelessWidget {
  const ServiceBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).equals(MOBILE)
        ? Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
              child: Column(
                children: [
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'laptop.png',
                            height: 45,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Web Development',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 20),
                          Text(
                              style:
                                  TextStyle(fontSize: 11, color: Colors.black),
                              '''Your website serves as the face of your business in the digital realm, and we understand the importance of creating a visually appealing, user-friendly, and performance-driven website. Our web development team combines creativity and technical expertise to design and develop stunning websites that align with your brand and business goals. Using modern front-end and back-end technologies, we create responsive and scalable websites that provide an optimal viewing experience across various devices. From informational websites to complex e-commerce platforms, we ensure your website stands out from the competition.''',
                              textAlign: TextAlign.justify),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'phone.png',
                            height: 45,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Mobile App Development',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 20),
                          Text(
                            style: TextStyle(fontSize: 11, color: Colors.black),
                            '''In today's mobile-first world, having a powerful mobile app is crucial for reaching and engaging your customers. Our skilled team of mobile app developers excels in building feature-rich, user-friendly applications for iOS and Android platforms. We follow a streamlined development process, starting from concept ideation and UI/UX design to development, testing, and deployment. Whether you need a native app, hybrid app, or a cross-platform solution, we leverage the latest technologies and industry best practices to deliver a seamless and captivating mobile experience.''',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        : Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.7,
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
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 20),
                            Text(
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                                '''Your website serves as the face of your business in the digital realm, and we understand the importance of creating a visually appealing, user-friendly, and performance-driven website. Our web development team combines creativity and technical expertise to design and develop stunning websites that align with your brand and business goals. Using modern front-end and back-end technologies, we create responsive and scalable websites that provide an optimal viewing experience across various devices. From informational websites to complex e-commerce platforms, we ensure your website stands out from the competition.''',
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
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.7,
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
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 20),
                            Text(
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              '''In today's mobile-first world, having a powerful mobile app is crucial for reaching and engaging your customers. Our skilled team of mobile app developers excels in building feature-rich, user-friendly applications for iOS and Android platforms. We follow a streamlined development process, starting from concept ideation and UI/UX design to development, testing, and deployment. Whether you need a native app, hybrid app, or a cross-platform solution, we leverage the latest technologies and industry best practices to deliver a seamless and captivating mobile experience.''',
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
