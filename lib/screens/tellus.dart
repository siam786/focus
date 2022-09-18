import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class TellUs extends StatelessWidget {
  const TellUs({super.key});

  @override
  Widget build(BuildContext context) {
    final noteController = TextEditingController();
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Icon(
          Icons.arrow_back,
          color: Color(0xff019DA2),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Would love to have a coffee meeting with...',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
                height: 350,
                child: TextField(
                  minLines: 20,
                  maxLines: 20,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Tell Us',
                      hintStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey)),
                )),
            SizedBox(
              height: size.height / 3,
            ),
            ElevatedButton(
              onPressed: () => () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.4)),
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 15.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
