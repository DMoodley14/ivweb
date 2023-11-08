import 'package:flutter/material.dart';
import 'package:ivline_e3c6c/const.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../widgets.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
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
                  child: Padding(
                    padding: EdgeInsets.all(
                        ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                            ? 200
                            : 50),
                    child: Text(
                      '''Our main priority is to build tools that are both intuitive and\nto create significant impact in the lives of all who use them''',
                      style: kPageHeading(context),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            AboutUsBlock(
              num: 1,
              blockText:
                  'Our humble journey begins in the corridors of a state facility. Our founder, Divyan, while working as a medical intern, identified inefficiencies within the hospital which could be ameliorated with simple digital tools. Determined to make a difference, he developed and offered mobile apps to address these needs, free of charge, laying the foundation for our social initiative, Project Baobab.',
              blockImage: 'baobab.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            AboutUsBlock(
                num: 2,
                blockText:
                    'To sustain and expand the impact of Project Baobab, we launched Codon, a venture that combines ingenuity and practicality. Due to an increasing number of medical professionals who have made contact with us seeking to change the status quo with digital tools and apps, we have decided that a way forward with Codon will solve our financial challenge of sustaining Project Baobab while fulfilling our mission to improve the system for all those who use it.',
                blockImage: 'medpc.jpg'),
            SizedBox(
              height: 10,
            ),
            AboutUsBlock(
                num: 1,
                blockText:
                    'We take pride in our track record of assisting numerous clients with digital solutions. By leveraging our expertise in software development, we create tailored websites and mobile apps that not only meet their specific requirements but also enhance operational efficiency. We are dedicated to delivering practical and valuable solutions that make a tangible difference in the healthcare industry.',
                blockImage: 'surgeon.jpg'),
            SizedBox(
              height: 10,
            ),
            AboutUsBlock(
                num: 2,
                blockText:
                    'What sets us apart is our unique blend of skills, with a team comprising talented developers and experienced medical doctors. This powerful combination allows us to understand the intricacies of clinical practice while leveraging cutting-edge technology to drive positive change. Our commitment to developing projects free of charge and scaling up our impact demonstrates our unwavering passion for transforming healthcare practices.',
                blockImage: 'code.jpg'),
            SizedBox(
              height: 10,
            ),
            AboutUsBlock(
                num: 1,
                blockText:
                    'At our core, we believe in the power of innovation, collaboration, and the pursuit of excellence. Through our digital solutions, we aim to bridge gaps in clinical service, enhance provider satisfaction, and improve patient outcomes. Our journey thus far is a testament to our dedication, and we look forward to continuing our mission of revolutionizing healthcare practice.',
                blockImage: 'collaboration.jpg'),
            SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.7),
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(
                      'lightbulb.jpg',
                    ),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Card(
                        color: Color.fromARGB(69, 0, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            '''We invite you to explore our services and discover how we can make a meaningful impact on your organization. Together, let's create a future where healthcare is optimized for the benefit of us all.''',
                            style: kPageSubHeading(context),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomBar()
          ]),
        )
      ]),
    );
  }
}

// ignore: must_be_immutable
class AboutUsBlock extends StatelessWidget {
  late String blockText;
  late String blockImage;
  late int num;
  AboutUsBlock(
      {super.key,
      required this.blockText,
      required this.blockImage,
      required this.num});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).equals(MOBILE)
        ? Container(
            height: 350,
            child: Center(
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Card(
                        color: Colors.grey[900],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            blockText,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      //  height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(blockImage))),
                    ),
                  )
                ],
              ),
            ),
          )
        : Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Center(
              child: num % 2 == 0
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(blockImage))),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(120.0),
                            child: Text(
                              blockText,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(120.0),
                            child: Text(
                              blockText,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(blockImage))),
                          ),
                        )
                      ],
                    ),
            ),
          );
  }
}
