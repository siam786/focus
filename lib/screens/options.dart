import 'package:circle_app/widgets/reuseable_text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/reuse_textContent.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final ageController = TextEditingController();
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
      body: Column(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height / 15,
                ),
                const Text(
                  'Lets Create Your\naccount',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
                ReuseableTextField(
                  textHint: "Enter Your Name",
                  textEditingController: emailController,
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 15,
                ),
                ReuseableTextField(
                  textHint: "Enter Your age",
                  textEditingController: ageController,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.number,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0)),
            ),
            child: Column(
              children: const [
                Text(
                  'Max out the personality that shines throughon your profile!',
                  style: TextStyle(
                      color: Colors.black, fontSize: 15.0, wordSpacing: 3),
                ),
                SizedBox(
                  height: 10,
                ),
                ReUseTextContent(
                  textHint: 'Would love to have a coffee meetingwith...',
                ),
                SizedBox(
                  height: 10,
                ),
                ReUseTextContent(
                  textHint: 'An unexpected career change for me was...',
                ),
                SizedBox(
                  height: 10,
                ),
                ReUseTextContent(
                  textHint: 'Would love to have a coffee meetingwith...',
                ),
                SizedBox(
                  height: 10,
                ),
                ReUseTextContent(
                  textHint: 'An unexpected career change for me was...',
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
