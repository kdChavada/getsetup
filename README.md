## Getting Started

/*Short*/
var nlist = [11,4,2,1,5];
nlist.sort();
print(nlist); // [1, 2, 4, 5, 11] 
-----------------------------------------------------
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
----------------------------------        
/*TIMER*/
"${h.toString().padLeft(2, '0')} : ${m.toString().padLeft(2, '0')} : ${s.toString().padLeft(2, '0')}",
  late Timer _timer;
  int s = 1;
  int m = 00;
  int h = 00;

  startUserTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        s += 1;
        if (s == 59) {
          s = 1;
          m += 1;
        }
        if (m == 59) {
          h += 1;
        }
      });
    });
  }

 
