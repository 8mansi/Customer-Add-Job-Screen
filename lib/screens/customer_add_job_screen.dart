import 'dart:io';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class CustomerAddJobScreen extends StatefulWidget {
  static const routeName = '/customerAddJobScreen';

  @override
  State<CustomerAddJobScreen> createState() => _CustomerAddJobScreenState();
}

class _CustomerAddJobScreenState extends State<CustomerAddJobScreen> {
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();

  //Job image path
  XFile? _imageFile;

  var jobDetails = {
    'jobImagePath': '',
    'jobTitle': '',
    'jobDescription': '',
    'jobExpectedBudget': '',
    'jobLocation': '',
    'jobSkill': '',
    'jobExpectedStartDate': '',
    'jobExpectedEndDate': '',
  };

  final ImagePicker _picker = ImagePicker();

  final _formKey = GlobalKey<FormState>();

  List<String> budgetItems = <String>[
    "< Rs. 5000",
    "Rs. 5000 - Rs. 10000",
    "Rs. 10000 - Rs. 20000",
    "Rs. 20000 - Rs. 40000",
    "Rs. 40000 - Rs. 80000",
    "Rs. 80000 - Rs. 150000",
    "Rs. 150000 - Rs. 300000",
    "> Rs. 300000"
  ];
  String? budgetDropdownValue;

  List<String> skillTagItems = <String>[
    "Plumber",
    "Carpenter",
    "Painter",
    "Mason",
    "Cook",
    "Electrician"
  ];
  String? skillTagDropdownValue;

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  Widget addImage() {
    return Container(
        height: 125, // MediaQuery.of(context).size.height,
        width: 500, // MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            const Text("Choose profile image"),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromRGBO(10, 25, 49, 1))),
                    onPressed: () {
                      takePhoto(ImageSource.camera);
                    },
                    icon: const Icon(Icons.camera),
                    label: const Text("Camera")),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromRGBO(10, 25, 49, 1))),
                    onPressed: () {
                      takePhoto(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.image),
                    label: const Text("Gallery")),
              ],
            )
          ],
        ));
  }

  Widget imageProfile() {
    return Center(
      child: Stack(
        children: [
          SizedBox(
            height: 264,
            width: 264,
            child: _imageFile == null
                ? Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 211, 209, 209)),
                    child: const Center(
                      child: Text(
                        "Add image",
                      ),
                    ),
                  ) //AssetImage("assests/img.jpg")
                : Image.file(File(_imageFile!.path)),
          ),
          Positioned(
            bottom: 0,
            width: 264,
            child: Builder(
                builder: (context) => InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: ((context) => addImage()),
                          isDismissible: true,
                        );
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(10, 25, 49, 1)),
                        child: const Icon(Icons.camera_alt_rounded,
                            color: Colors.white, size: 28),
                      ),
                    )),
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    await _picker.pickImage(source: source).then((XFile? file) async {
      if (mounted) {
        CroppedFile? croppedImage = await ImageCropper().cropImage(
          sourcePath: file!.path,
          aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
          aspectRatioPresets: [CropAspectRatioPreset.square],
        );
        setState(() {
          _imageFile = XFile(croppedImage!.path);
          jobDetails['jobImagePath'] = _imageFile!.path;
        });
      }
    });
  }

  Widget textBox(String textLabel, String text) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return; // "Enter";
        }
        return null;
      },
      onSaved: (value) {
        jobDetails[text] = value!;
      },
      decoration: InputDecoration(
        labelText: textLabel.toString(),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.close,
          ),
          onPressed: () {},
        ),
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Add Job"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Column(children: [
              Container(
                child: imageProfile(),
              ),

              const SizedBox(height: 20),

              textBox("Add job title", 'jobTitle'),
              const SizedBox(
                height: 20,
              ),

              textBox("Add job description", 'jobDescription'),
              const SizedBox(
                height: 20,
              ),

              //Budget
              DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 146, 146, 146)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                        hint: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("Choose budget"),
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            budgetDropdownValue = newValue!;
                            jobDetails['jobExpectedBudget'] =
                                budgetDropdownValue!;
                          });
                        },
                        value: budgetDropdownValue,
                        items: budgetItems.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  value,
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      )))),

              const SizedBox(
                height: 20,
              ),

              //Location
              textBox("Add location", 'jobLocation'),

              const SizedBox(
                height: 20,
              ),

              //Skill Tags
              DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 146, 146, 146)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                        hint: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("Choose skill tag"),
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            skillTagDropdownValue = newValue!;
                            //skillTagController = skillTagDropdownValue;
                            jobDetails['jobSkill'] = skillTagDropdownValue!;
                          });
                        },
                        value: skillTagDropdownValue,
                        items: skillTagItems.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  value,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      )))),

              const SizedBox(
                height: 20,
              ),

              //Start date
              Container(
                height: 50,
                child: TextField(
                  controller: startDateController,
                  readOnly: true,
                  onTap: () async {
                    DateTime? startDatepicked = await showDatePicker(
                        context: context,
                        initialDate: _startDate,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2100));

                    if (startDatepicked != null) {
                      setState(() {
                        startDateController.text = DateFormat('dd-MM-yyyy')
                            .format(startDatepicked)
                            .toString();

                        if (_endDate.isBefore(startDatepicked)) {
                          _endDate = startDatepicked;
                        }

                        jobDetails['jobExpectedStartDate'] =
                            DateFormat('dd-MM-yyyy')
                                .format(startDatepicked)
                                .toString();
                      });
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Start date",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //End Date
              Container(
                height: 50,
                child: TextField(
                  controller: endDateController,
                  readOnly: true,
                  onTap: () async {
                    DateTime? endDatepicked = await showDatePicker(
                        context: context,
                        initialDate: _endDate,
                        firstDate: _endDate,
                        lastDate: DateTime(2100));

                    if (endDatepicked != null) {
                      setState(() {
                        endDateController.text = DateFormat('dd-MM-yyyy')
                            .format(endDatepicked)
                            .toString();

                        jobDetails['jobExpectedEndDate'] =
                            DateFormat('dd-MM-yyyy')
                                .format(endDatepicked)
                                .toString();
                      });
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "End date",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    primary: Theme.of(context).accentColor,
                  ),
                  child: const Text("Post",
                      style: TextStyle(color: Color.fromRGBO(10, 25, 49, 1))),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

