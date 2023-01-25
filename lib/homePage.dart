import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/secondPage.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtadd = TextEditingController();
  TextEditingController txtexp = TextEditingController();
  TextEditingController txtcom = TextEditingController();
  TextEditingController txtexper = TextEditingController();
  TextEditingController txt10 = TextEditingController();
  TextEditingController txt12 = TextEditingController();
  TextEditingController txthob = TextEditingController();
  TextEditingController txtint = TextEditingController();

  String gen = "Male";
  String data = "Surat";
  bool lan1 = true;
  bool lan2 = false;
  bool lan3 = false;

  var FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: FormKey,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Resume Builder"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "      Required Info",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Personal Info",
                    style: TextStyle(),
                  ),
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: txtName,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Name";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter name",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: txtPhone,
                        validator: (value) {
                          if (value!.length != 10) {
                            return "Enter valid number";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter Phone Number",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: txtadd,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Address";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter Address",
                        ),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  textColor: Colors.black,
                  leading: Icon(
                    Icons.contact_mail,
                    color: Colors.black54,
                  ),
                  title: Text(
                    "Professional Info",
                  ),
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: txtexp,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Experience";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter Experience",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: txtexper,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Proffesssion";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter Proffesssion",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: txtcom,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Last Company";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter Last Company",
                        ),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  onExpansionChanged: (value) {},
                  title: Text(
                    "Education",
                  ),
                  leading: Icon(
                    Icons.school,
                    color: Colors.black54,
                  ),
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: txt10,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Information";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter 10th percentage",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: txt12,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Information";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter 12th percentage",
                        ),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  onExpansionChanged: (value) {},
                  leading: Icon(
                    Icons.location_city,
                    color: Colors.black54,
                  ),
                  title: Text("City"),
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      child: DropdownButton(
                        isExpanded: true,
                        items: [
                          DropdownMenuItem(
                            child: Text("Surat"),
                            value: "Surat",
                          ),
                          DropdownMenuItem(
                            child: Text("Africa"),
                            value: "Africa",
                          ),
                          DropdownMenuItem(
                            child: Text("vadodara"),
                            value: "vadodara",
                          ),
                          DropdownMenuItem(
                            child: Text("dubai"),
                            value: "dubai",
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            data = value!;
                          });
                        },
                        value: data,
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  onExpansionChanged: (value) {},
                  leading: Icon(
                    Icons.language,
                    color: Colors.black54,
                  ),
                  title: Text("Language"),
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: lan1,
                            onChanged: (value) {
                              setState(() {
                                lan1 = value!;
                              });
                            }),
                        Text(
                          "Hindi",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: lan2,
                            onChanged: (value) {
                              setState(() {
                                lan2 = value!;
                              });
                            }),
                        Text(
                          "Gujarati",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: lan3,
                            onChanged: (value) {
                              setState(() {
                                lan3 = value!;
                              });
                            }),
                        Text(
                          "English",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 14),
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.black54,
                              width: 2,
                            )),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.add,
                              color: Colors.black54,
                              size: 15,
                            )),
                        Text(" ADD"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text("Gender"),
                  leading: Icon(
                    Icons.female_outlined,
                    color: Colors.black54,
                  ),
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: "Male",
                            groupValue: gen,
                            onChanged: (value) {
                              setState(() {
                                gen = value!;
                              });
                            }),
                        Text(
                          "Male",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: "Female",
                            groupValue: gen,
                            onChanged: (value) {
                              setState(() {
                                gen = value!;
                              });
                            }),
                        Text(
                          "Female",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: "Other",
                            groupValue: gen,
                            onChanged: (value) {
                              setState(() {
                                gen = value!;
                              });
                            }),
                        Text(
                          "Other",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(
                    Icons.photo_camera_outlined,
                    color: Colors.black54,
                  ),
                  title: Text("Photo"),
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 14),
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.black54,
                              width: 2,
                            )),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.add,
                              color: Colors.black54,
                              size: 15,
                            )),
                        Text(" ADD"),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "      Additional Info",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ExpansionTile(
                  textColor: Colors.black,
                  leading: Icon(
                    Icons.library_add,
                    color: Colors.black54,
                  ),
                  title: Text(
                    "Hobby",
                  ),
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: txthob,
                        decoration: InputDecoration(
                          hintText: "Enter Your Hobby",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (FormKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context)!.showSnackBar(SnackBar(
                        content: Text("Data Received 😊"),
                        duration: Duration(seconds: 1),
                      ));
                    }
                  },
                  child: InkWell(onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Second(),));
                    });
                  },child: Text("Submit")),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
