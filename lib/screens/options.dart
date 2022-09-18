import 'package:circle_app/widgets/reuseable_text_field.dart';
import 'package:flutter/material.dart';

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
                  'Lets Create Your\n account',
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
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0)),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Max out the personality that shines throughon your profile!',
                    style: TextStyle(
                        color: Colors.black, fontSize: 15.0, wordSpacing: 3),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Would love to have a coffee meeting with...',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
