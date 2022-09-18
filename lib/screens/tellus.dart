import 'package:circle_app/widgets/reuseable_text_field.dart';
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
      body: Column(
        children: [
          SingleChildScrollView(
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
                SizedBox(
                  height: size.height / 15,
                  child: ReuseableTextField(
                    textHint: "Tell Us",
                    textEditingController: noteController,
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
