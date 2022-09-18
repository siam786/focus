import 'package:circle_app/screens/signUpComplete.dart';
import 'package:circle_app/widgets/reuseable_text_field.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUpComplete(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";

  String? _selectedValue;
  List<String> listOfValue = ['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.arrow_back),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height / 15,
            ),
            const Text(
              "Let’s create your\naccount",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700),
            ),
            ReuseableTextField(
              textHint: "Enter Your Email",
              textEditingController: emailController,
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.emailAddress,
            ),
            ReuseableTextField(
              textHint: "Enter Your Age",
              textEditingController: emailController,
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.number,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: "Enter Your Ethenicity",
                  suffix: PopupMenuButton(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      iconSize: 18,
                      icon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      itemBuilder: (context) => const [
                            PopupMenuItem(
                                value: 1,
                                child: Text(
                                  "New group",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )),
                            PopupMenuItem(
                                value: 2,
                                child: Text(
                                  "New broadcast",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )),
                          ])),
              textInputAction: TextInputAction.next,
            ),
            SelectState(
              onCountryChanged: (value) {
                setState(() {
                  countryValue = value;
                });
              },
              onStateChanged: (value) {
                setState(() {
                  stateValue = value;
                });
              },
              onCityChanged: (value) {
                null;
              },
            ),
            DropdownButtonFormField(
              value: _selectedValue,
              hint: const Text('choose one'),
              isExpanded: true,
              onChanged: (value) {
                setState(() {
                  _selectedValue = _selectedValue;
                });
              },
              onSaved: (value) {
                setState(() {
                  _selectedValue = _selectedValue;
                });
              },
              validator: (String? value) {
                if (value!.isEmpty) {
                  return "can't empty";
                } else {
                  return null;
                }
              },
              items: listOfValue.map((String val) {
                return DropdownMenuItem(
                  value: val,
                  child: Text(val),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
