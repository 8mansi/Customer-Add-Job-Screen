
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../providers/auth.dart';


class OtpScreen extends StatefulWidget {
  static const routeName = '/otp';

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).splashColor,
            ),
            onPressed: () {},
          ),
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(30, 50, 30, 0),
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "OTP Verification",
                    style: TextStyle(
                        fontSize: 26,
                        fontFamily: "outfit",
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    "Enter the OTP sent on your Mobile number",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "outfit",
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(109, 119, 133, 1)),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 40),

                  //OTP boxes
                  OtpForm(context),

                  const SizedBox(height: 60),
                  ElevatedButton(
                      onPressed: () {
                        debugPrint(concatenateControllerValues());

                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('OTP'),
                              content: Text("OTP -- "+concatenateControllerValues().toString()),
                              actions: [
                                TextButton(
                                  child: Text('Close'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );



                      },
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).accentColor,
                      ),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "outfit",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                          textAlign: TextAlign.left,
                        ),
                      )),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Haven’t received the OTP yet? '),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'RESEND CODE',
                          style: TextStyle(
                              color: Theme.of(context).splashColor,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ]),
          ),
        ));
  }
}





late List<FocusNode?> _focusNodes=List.generate(6, (_) => FocusNode());
late List<TextEditingController?> _textControllers=List.generate(6, (_) => TextEditingController());


String concatenateControllerValues() {
  String otp='';
  for (int i=0;i<6;i++) {
    String value = _textControllers[i]!.text.toString();
    if (value.isNotEmpty) {
      otp += value;
    }
  }
  return otp;
}





Widget OtpForm(BuildContext context)
{
  return Form(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OtpBox(0,context),
        OtpBox(1,context),
        OtpBox(2,context),
        OtpBox(3,context),
        OtpBox(4,context),
        OtpBox(5,context),
      ],
    ),);
}


Widget OtpBox(int index,BuildContext context)
{
  return Container(
    decoration: BoxDecoration(color: Colors.white,),
    height: 45,
    width: 45,
    alignment: Alignment.center,
    child: TextFormField(
      autofocus: index == 0,
      focusNode: _focusNodes[index],
      decoration: const InputDecoration(border: OutlineInputBorder(),fillColor: Colors.white),
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.center,
      controller: _textControllers[index],
      style: TextStyle(fontSize: 26,),
      keyboardType: TextInputType.number,
      inputFormatters: [LengthLimitingTextInputFormatter(1,),],

      onChanged: (value) {
        if (value.length == 1)
        {
          if (index < 5) {
            FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
          }
          else {
            _focusNodes[index]?.unfocus();
          }
        }
        else
        {
            FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
        }
      },

    ),
  );
}

