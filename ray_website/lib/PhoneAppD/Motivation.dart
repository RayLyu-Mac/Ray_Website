import 'package:flutter/material.dart';
import 'package:ray_website/Teacher/style.dart';

class Motivation extends StatefulWidget {
  Motivation({Key? key}) : super(key: key);

  @override
  _MotivationState createState() => _MotivationState();
}

class _MotivationState extends State<Motivation> {
  double titleF = 9;
  double contF = 20;
  double contTiSpace = 17;
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title(content: "Motivation", fontSize: _screenH / 20),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.yellow.shade100,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 10, color: Colors.grey.shade200)),
          margin: EdgeInsets.symmetric(
              horizontal: _screenWidth / 18, vertical: _screenH / 20),
          padding: EdgeInsets.symmetric(
              horizontal: _screenWidth / 20, vertical: _screenH / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              title(content: "Background", fontSize: _screenH / titleF),
              SizedBox(
                height: _screenH / contTiSpace,
              ),
              content(
                  contents:
                      "    I knew flutter this program from my friend Bill, a second-year electric eng student. At that time, he made a small app for clocks and alarms.\n\n    After that, we participated in Delta Hack VII. In that competition, we used flutter as the UI for a health consultant app. In that competition, I was responsible for constructing the neural network for the app, which trained on fake data so when the patient input their profile, they can get the result generated from this model. (From what I see now, this is unnecessary because we need to show the result and using AI in this field may be dangerous because the misdiagnosis will cause misdirection to the prescription. This process will need a considerable amount of data and supervision). Anyway, the UI my friend, made doesn’t appeal to me, triggering the thought that I should learn it and design the UI myself. Therefore, from that on, I started to learn this language in my free time.",
                  fontSize: _screenH / contF),
              SizedBox(
                height: _screenH / 7,
              ),
              title(content: "First Project", fontSize: _screenH / titleF),
              SizedBox(
                height: _screenH / contTiSpace,
              ),
              content(
                  contents:
                      "    My first project is a course calculator. Due to the heavy and repetitive calculations we perform in one class, I decided to design something that can do those calculations. After I followed the YouTube video for three small projects, I started to gain some ideas and knowledge on designing the UI. Therefore, I started on that project. I was pretty confident at that time because I already have the program working in python. It shouldn’t be too tricky to remake one in another language.\n\n    At that time, I used almost all my time designing the UI, and I started to realize that this will be quite hard to remake the program in python to flutter because python is a data analysis program while flutter is dedicated to user interface design. (I introduce the function in the final version of the app). \n\n    But this app should account as my first phone app, since it actually comes to my phone and work. Additionally, this project also let me find out that there is need to replace the heavy calculation by using app, which makes me start to think the possible need in another field. ",
                  fontSize: _screenH / contF),
              SizedBox(
                height: _screenH / 7,
              ),
              title(content: "Inspiration", fontSize: _screenH / titleF),
              SizedBox(
                height: _screenH / contTiSpace,
              ),
              content(
                  contents:
                      "    The first draft of the idea is about equipment management. At that time, I was having lots of interviews, and one of them is required for creating the instruction for the equipment. I am a person who hates to read long paragraphs and find myself hard to follow them, so I prefer videos or pictures that provide a better visualization for the reader to follow the instructions. However, for pictures, even you printed them out, it will waste lots of paper and quickly damage, and for video, it is impossible to have a hard copy, and if you put them into the website, without proper method, it will be tough to find.\n\n    Therefore, I thought one popular method they used in the scene in China used QR codes to access the information of the historical stuff. When you are entering the scene, you can pay for guidance or a small electronic device with an earpiece, and the staff put a QR code on each historical part, and the visitor can scan that and access the story or the information for this. The same theory can be applied to a factory where we put a QR code on the equipment, and the operator can scan the QR code and access the information of the equipment.\n\n    At first, I feel the information like the instruction and maintenance record can be put into this. That’s the reason why I called it equipment management. Then I found this could be useful for the university because I recall one of my graduate TA, who comes from America and has no idea about the faculty. (I can imagine that he has no idea how to find the equipment, lab and how to use them). During one tutorial, he was supposed to show us how to use the ICP-OES and since he is new in town and has no idea how to use this. What’s more, since he is a Ph.D. candidate, the prevalence idea on them is “they should figure out themselves.” Therefore, the TA has to look over the files and frankly speaking, the ICP-OES is a highly complex machine, and one step wrong may cause permanent damage to the machine. Therefore, an app like this can help the new coming student get familiar with the faculty and help them forget how to operate those machines.",
                  fontSize: _screenH / contF),
              SizedBox(
                height: _screenH / 7,
              ),
              title(
                  content: "Prototype and Start", fontSize: _screenH / titleF),
              SizedBox(
                height: _screenH / contTiSpace,
              ),
              content(
                  contents:
                      "    With those in mind, I started to create my prototype, which make me stop making the app for course calculator. Actually, that’s a very annoying time, because its close to the final exam and I still can’t find my coop. somehow, I found doing this can help me to find my values again (showing that I am not totally useless). I was going for simple UI design, therefore I draw almost all the UI and put them into flutter.\n\n    The first prototype of the app, only have 6 interfaces, including the log in, floor plan, floor I layout, mechanical lab layout, UTM machine interface and main menu, but should be sufficiently enough to show how the app works. At that time, I haven’t got chance to think about how should I integrate the video into the app so I left that blanked as well as the QR code function.\n\n    At first I was thinking introducing a post system, which professor or graduate student can post some easy task. This idea is inspired by the work I done last summer, literally speaking the professor doesn’t need to wait till the summer and hire someone do the data analysis, he can just post this and connect with some undergrad with this. Besides, we need to bond the prof and the undergrad, because one thing that troubles the undergrad is that we are not fully understand what’s the prof do in our department. \n\n    Anyway, the prototype of this app is quite coarse, which mean it doesn’t look that good, but the function is complete. Therefore, I sent an email to the chair of the department, and we arrange a meeting. I was not hoping he will pay me for this but less than 30 minutes, I got fund from him. Then, I found two guys from second year to help me and we formally start this project. ",
                  fontSize: _screenH / contF)
            ],
          ),
        ),
      ),
    );
  }
}
