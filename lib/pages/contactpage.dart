import 'package:flutter/material.dart';
import 'package:ivline_e3c6c/const.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import '../widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _inquiryController = TextEditingController();

  Future<void> _sendEmail(BuildContext context) async {
    final String email = 'support@codon.co.za';
    final String subject = 'Contact Inquiry';
    final String body = 'Name: ${_nameController.text}\n'
        'Email: ${_emailController.text}\n'
        'Phone: ${_phoneController.text}\n'
        'Inquiry: ${_inquiryController.text}';

    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {
        'subject': subject,
        'body': body,
      },
    );

    try {
      await launch(emailUri.toString());
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Unable to send email. Please try again later.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(slivers: [
          ResponsiveBreakpoints.of(context).equals(MOBILE)
              ? SliverAppBar(
                  backgroundColor: Colors.black,
                  iconTheme: IconThemeData(color: Colors.white),
                )
              : WebAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ResponsiveBreakpoints.of(context).equals(MOBILE)
                    ? Center(
                        child: Container(
                          color: Colors.black,
                          height: MediaQuery.of(context).size.height,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 50.0),
                                      child: Text(
                                        '''We'd love to hear from you!''',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 28),
                                      ),
                                    ),
                                    SizedBox(height: 50.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.email,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 20.0),
                                        Container(
                                          width: 200,
                                          child: SelectableText(
                                            'support@codon.co.za',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.phone,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 20.0),
                                        Container(
                                          width: 200,
                                          child: SelectableText(
                                            '078 538 1332',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage('whatsapp.png'),
                                          height: 30,
                                          width: 30,
                                        ),
                                        SizedBox(width: 20.0),
                                        Container(
                                          width: 200,
                                          child: SelectableText(
                                            '078 538 1332',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Container(
                                      child: Text(
                                        'Our aim is to get you an estimated quote within 24h',
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Text(
                                      '''We're more than happy to discuss any queries you may have.\nPlease feel free to request a non-discloure agreement if you require one.''',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Image.asset(
                                      'codonLogo.png',
                                      height: 150,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Center(
                        child: Container(
                          color: Colors.black,
                          // height: MediaQuery.of(context).size.height * 0.8,
                          //width: MediaQuery.of(context).size.width * 0.9,
                          child: Row(
                            children: [
                              Flexible(
                                  fit: FlexFit.tight,
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 50.0),
                                          child: Center(
                                            child: Text(
                                              '''We'd love to hear from you!''',
                                              style: kPageHeading(context),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 50.0),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 100.0),
                                          child: Card(
                                            color: Colors.grey[900],
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      50.0, 20, 20, 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Icon(
                                                        Icons.email,
                                                        size: 30,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(width: 20.0),
                                                      Container(
                                                        child: Flexible(
                                                          child: SelectableText(
                                                            'support@codon.co.za',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 20.0),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Icon(
                                                        Icons.phone,
                                                        size: 30,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(width: 20.0),
                                                      Container(
                                                        child: Flexible(
                                                          child: SelectableText(
                                                            '078 538 1332',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 20.0),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Image(
                                                        image: AssetImage(
                                                            'whatsapp.png'),
                                                        height: 30,
                                                        width: 30,
                                                      ),
                                                      SizedBox(width: 20.0),
                                                      Container(
                                                        child: Flexible(
                                                          child: SelectableText(
                                                            '078 538 1332',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Container(
                                          child: Text(
                                            'Our aim is to get you an estimated quote within 24h',
                                            style:
                                                TextStyle(color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Text(
                                          '''We're more than happy to discuss any queries you may have.\nPlease feel free to request a non-discloure agreement if you require one.''',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Image.asset(
                                          'codonLogo.png',
                                          height: 100,
                                        ),
                                      ],
                                    ),
                                  )),
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                  ),
                                  padding: const EdgeInsets.all(16.0),
                                  child: Center(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 50.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 50, 0, 50),
                                              child: Text(
                                                'Contact Us',
                                                style: TextStyle(
                                                    fontSize: 28,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            TextField(
                                              controller: _nameController,
                                              decoration: const InputDecoration(
                                                  labelText: 'Name',
                                                  border: OutlineInputBorder()),
                                            ),
                                            SizedBox(height: 16.0),
                                            TextField(
                                              controller: _emailController,
                                              decoration: const InputDecoration(
                                                  labelText: 'Email',
                                                  border: OutlineInputBorder()),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                            ),
                                            SizedBox(height: 16.0),
                                            TextField(
                                              controller: _phoneController,
                                              decoration: const InputDecoration(
                                                  labelText: 'Phone',
                                                  border: OutlineInputBorder()),
                                              keyboardType: TextInputType.phone,
                                            ),
                                            SizedBox(height: 16.0),
                                            TextField(
                                              controller: _inquiryController,
                                              decoration: const InputDecoration(
                                                  labelText: 'Brief Inquiry',
                                                  border: OutlineInputBorder()),
                                              maxLines: 4,
                                            ),
                                            SizedBox(height: 25.0),
                                            Container(
                                              width: double.infinity,
                                              height: 40,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.black)),
                                                onPressed: () =>
                                                    _sendEmail(context),
                                                child: const Text('Submit'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                BottomBar()
              ],
            ),
          ),
        ]));
  }
}
