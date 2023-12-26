## Getting Started
/*--- SIZE ANY  WIDGET --*/
GlobalKey key = GlobalKey();
 YourWidget(
  key: key,
  // other widget properties
)
 onPressed: () {
            // Access the RenderBox and get the size
            RenderBox renderBox = key.currentContext.findRenderObject() as RenderBox;
            Size size = renderBox.size;
            print("Widget size: $size");
          },
------------ Firebase database   ----- 
 cloud_firestore: ^3.5.1
/*-------- Add Data  -----*/
Future addPlaceData() async {
    final docData = FirebaseFirestore.instance.collection('register').doc();

    final json = RegisterModel(
       id: docData.id,
      email: email.text,
      password: password.text,
    );
    await docData.set(json.toJson());
  }
  }
 
 ==> get Database 
  Future<void> getData() async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('register');
    QuerySnapshot snapshot = await collectionReference.get();
    registerModel = snapshot.docs
        .map((e) => RegisterModel.fromJson(e.data() as Map<String, dynamic>))
        .toList();
    print(registerModel.length);
    print(registerModel[0].password);
  }

  /*---  check  value */
   for (int i = 0; i < registerModel.length; i++) {
          if (registerModel[i].email != email.text) {
            Fluttertoast.showToast(msg: "Your EmailAddress is Wrong.");
          } else if (registerModel[i].password != password.text) {
            Fluttertoast.showToast(msg: "Your Password is Wrong.");
          } else {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const WelcomeView()),
                (route) => false);
          }
        }

 
