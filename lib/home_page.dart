import 'package:blue_sensor/discover.dart';
import 'package:blue_sensor/selected_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var hi = MediaQuery.of(context).size.height;
    var wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text('Smart Class Record'),
      ),
      body: SizedBox(
        height: hi,
        width: wi,
        child: Column(
          children: <Widget>[
            Container(
              height: hi * 0.05,
              width: wi,
              decoration: BoxDecoration(
                // color: Colors.blue,
                color: Colors.grey[300],
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 2.3,
                  ),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'BT status:',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Not Connected',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: hi * 0.01,
            ),
            Container(
              height: hi * 0.05,
              width: wi,
              decoration: BoxDecoration(
                // color: Colors.blue,
                color: Colors.grey[300],
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 2.3,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  CustomButton(
                      text: 'Scan',
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DiscoveryPage()));
                      },
                      height: hi * 0.04,
                      width: wi * 0.2,
                      color: Colors.deepPurpleAccent,
                      textColor: Colors.white),
                  SizedBox(
                    width: 5,
                  ),
                  CustomButton(
                      text: 'Connect',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SelectBondedDevicePage()));
                      },
                      height: hi * 0.04,
                      width: wi * 0.2,
                      color: Colors.green,
                      textColor: Colors.white),
                  SizedBox(
                    width: 5,
                  ),
                  CustomButton(
                      text: 'Disconnect',
                      onPressed: () {},
                      height: hi * 0.04,
                      width: wi * 0.22,
                      color: Colors.red,
                      textColor: Colors.white),
                  SizedBox(
                    width: 5,
                  ),
                  CustomButton(
                      text: 'Reboot',
                      onPressed: () {},
                      height: hi * 0.04,
                      width: wi * 0.22,
                      color: Colors.grey.shade400,
                      textColor: Colors.red),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: hi * 0.01,
            ),
            Container(
              height: hi * 0.05,
              width: wi,
              decoration: BoxDecoration(
                // color: Colors.blue,
                color: Colors.grey[300],
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 2.3,
                  ),
                ),
              ),
              child: Center(
                  child: Text(
                'View Log Data',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
            ),
            SizedBox(
              height: hi * 0.01,
            ),
            Container(
                height: hi * 0.05,
                width: wi,
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  color: Colors.grey[300],
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: Colors.black,
                      width: 2.3,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    CustomButton(
                        text: 'Select Course ID',
                        onPressed: () {},
                        height: hi * 0.04,
                        width: wi * 0.4,
                        color: Colors.amber,
                        textColor: Colors.black87),
                    SizedBox(
                      width: 5,
                    ),
                    CustomButton(
                        text: 'Update Log Files',
                        onPressed: () {},
                        height: hi * 0.04,
                        width: wi * 0.4,
                        color: Colors.amber,
                        textColor: Colors.black87),
                  ],
                )),
            SizedBox(
              height: hi * 0.01,
            ),
            Container(
              height: hi * 0.05,
              width: wi,
              decoration: BoxDecoration(
                // color: Colors.blue,
                color: Colors.grey[300],
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 2.3,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: hi * 0.01,
            ),
            Container(
                height: hi * 0.05,
                width: wi,
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  color: Colors.grey[300],
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: Colors.black,
                      width: 2.3,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    CustomButton(
                        text: 'Select Course ID',
                        onPressed: () {},
                        height: hi * 0.04,
                        width: wi * 0.4,
                        color: Colors.amber,
                        textColor: Colors.black87),
                    SizedBox(
                      width: 5,
                    ),
                    CustomButton(
                        text: 'Delete course',
                        onPressed: () {},
                        height: hi * 0.04,
                        width: wi * 0.4,
                        color: Colors.amber,
                        textColor: Colors.black87),
                  ],
                )),
            SizedBox(
              height: hi * 0.01,
            ),
            Container(
              height: hi * 0.05,
              width: wi,
              decoration: BoxDecoration(
                // color: Colors.blue,
                color: Colors.grey[300],
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 2.3,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: hi * 0.01,
            ),
            Container(
              height: hi * 0.05,
              width: wi,
              decoration: BoxDecoration(
                // color: Colors.blue,
                color: Colors.grey[300],
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 2.3,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  // add a input field
                  SizedBox(
                    width: wi * 0.4,
                    height: hi * 0.04,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'Enter Course ID',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomButton(
                      text: 'Add Course',
                      onPressed: () {},
                      height: hi * 0.04,
                      width: wi * 0.4,
                      color: Colors.grey.shade400,
                      textColor: Colors.black87),
                ],
              ),
            ),
            SizedBox(
              height: hi * 0.01,
            ),
            Container(
              height: hi * 0.05,
              width: wi,
              decoration: BoxDecoration(
                // color: Colors.blue,
                color: Colors.grey[300],
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 2.3,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: hi * 0.01,
            ),
            Container(
              height: hi * 0.05,
              width: wi,
              decoration: BoxDecoration(
                // color: Colors.blue,
                color: Colors.grey[300],
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 2.3,
                  ),
                ),
              ),
              child: Center(
                  child: Text(
                'Sync Data',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
            ),
            SizedBox(
              height: hi * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}

//a custom button widget
class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double height;
  final double width;
  final Color color;
  final Color textColor;

  const CustomButton({
    required this.text,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
