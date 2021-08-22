import 'package:flutter/material.dart';
import 'style.dart';

class Paragraph extends StatefulWidget {
  Paragraph({Key? key}) : super(key: key);

  @override
  _ParagraphState createState() => _ParagraphState();
}

class _ParagraphState extends State<Paragraph> {
  double _screenWidth = 0;
  double _screenH = 0;
  double contentFontSize = 25;
  double dis = 10;

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
        title: title(content: "Comments", fontSize: _screenH / 17),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        height: _screenH * 1.1,
        width: _screenWidth,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.4), BlendMode.dstATop),
                image: AssetImage("assest/back3.png"),
                fit: BoxFit.cover)),
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: _screenWidth / 15, vertical: _screenH / 20),
          padding: EdgeInsets.symmetric(
              horizontal: _screenWidth / 14, vertical: _screenH / 20),
          decoration: BoxDecoration(
              color: Colors.blueGrey.withAlpha(89),
              border: Border.all(width: 5, color: Colors.grey.shade100),
              borderRadius: BorderRadius.circular(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: _screenH / 22,
                ),
                title(content: "Overall", fontSize: _screenH / 12),
                SizedBox(
                  height: _screenH / 30,
                ),
                content(
                    contents:
                        "  I have been working as an educator for about three years. I enjoy teaching and helping others and considering this as my future career, specifically as a professor teaching and leading grad students doing research. That will be my dream job",
                    fontSize: _screenH / contentFontSize),
                SizedBox(
                  height: _screenH / dis,
                ),
                title(
                    content: "Work as Class Manager/Teacher",
                    fontSize: _screenH / 12),
                SizedBox(
                  height: _screenH / 30,
                ),
                content(
                    contents:
                        "  Start on the summer that I graduate from high school. Since I got a good mark on IETS, I am eligible to teach younger students English and back to the place where I took the course when I was young. However, I was responsible for teaching a twin who is fourteen years old math. From what I see now, I may not be a great teacher back then because I was not teaching in an organized way, which may lead them hard to understand the stuff I taught. At that time, I devoted myself to finding as much practice for each topic they assigned me to teach and help them solve those problems, which I found very useful when I studied, but unfortunately didn't work for them. During that experience, I found that the teacher needs to be respected, or it will be hard to enforce the teaching process. During that time, the students are very naughty in the class and hardly finish the homework. I assigned them all those that lead to insufficient understanding of the content and fail the final exam.  However, on the other hand, this may vary among different students. Some of them, if you are friendly, may become more efficient in learning.\n\n  In the night, I was responsible for managing the class and helped them to remember words. Nothing too much worth mentioning. Just follow the instruction and do the work.",
                    fontSize: _screenH / contentFontSize),
                SizedBox(
                  height: _screenH / dis,
                ),
                title(content: "Volunteer Experience", fontSize: _screenH / 12),
                SizedBox(
                  height: _screenH / 30,
                ),
                content(
                    contents:
                        "  For my first year in university, I joined the 'Let us talk science' volunteer group, in which we are grouped to give a presentation on local schools for science experiments. It's my first time going to a local school, and I was pretty nervous all the time. After several sessions, I start to gain some confidence in talking to the crowd.",
                    fontSize: _screenH / contentFontSize),
                SizedBox(
                  height: _screenH / dis,
                ),
                title(
                    content: "Working as Teaching Assistant",
                    fontSize: _screenH / 12),
                SizedBox(
                  height: _screenH / 30,
                ),
                content(
                    contents:
                        "  The experience I had before aren’t strictly a teacher but more of student who tried to learn how to teach. After those gone through this, I started my part time job, teaching assistant, on my third year. \n\n  I took the position for Phy 1D/1E 03 in McMaster University, and frankly speaking, I did not get full marks when I took the course but thankfully, I was just responsible for student’s lab work which does not require you to be a master in those courses.\n\n  Sometimes not until you become a teacher will you understand how difficult the teachers are. When I taught the naughty twins, I realize the trouble I brought to my teacher when I was young, and here I realize how a student who graduates from high school may be a pain to the professor or the teaching assistant. Since no one is perfect and it is a considerable step from high school to university, all those are understandable, and that is why we are here: to help them adapt to the university and prepare them for the coming challenge.",
                    fontSize: _screenH / contentFontSize),
                SizedBox(
                  height: _screenH / dis,
                ),
                title(
                    content: "Tips to first year student",
                    fontSize: _screenH / 12),
                SizedBox(
                  height: _screenH / 30,
                ),
                content(
                    contents:
                        "  The first thing that can be reflected in their work is a lack of professionalism. I learned from my academic career that there is a standard for doing things in academics. For example, the answer students provided for the short answer, the central part of the student will jump to the conclusion, which is somewhat confusing because we will not know how you get this conclusion. Students should list all possible reasons they think this conclusion stands and link to the lecture content, if possible because the lab is an extension of lecture content. Besides, if you list those theorems, it is essential to put them into bullet point form so the people who mark can see them all.\n\n  Additionally, the format for the plot should be completed with title, label unit(name), legend (if applicable) and zoom in figure (if applicable). The reader needs to get all the content from the plot and not spend time reading the data table for any left-out information. Zoom in the figure is essential for the plot whose lines are close to each other, and we cannot distinguish them in the region we are interested in without them.\n\n  Furthermore, for the lab report, it is necessary to quantify the result rather than comment on the qualitative result. For example, when we conclude that there is no difference between two slopes, we should use the actual percentage difference to show the result (Use essential statistic tool will be more favourable, but for a first-year student, percentage difference will be a good start). The same reason applies to a number that is larger/smaller than the other. A percentage difference will help the reader to visualize the difference better.",
                    fontSize: _screenH / contentFontSize),
                SizedBox(
                  height: _screenH / dis,
                ),
                title(
                    content: "How a good educator will do",
                    fontSize: _screenH / 12),
                SizedBox(
                  height: _screenH / 30,
                ),
                content(
                    contents:
                        "  Each lab report is worth around 4% for the grade of the course, which is not that much, and students can afford the mark that is lower than they expect (around 65-75). Therefore, I believe the teaching assistant for this course should focus on helping students find their problems on their report and help/ teach them the right way to do it so they will not make the same mistake on the further report. It is also essential to connect with the student rather than just gave them a bad mark and hoping they can fix those on their own. As for students, I hope they could have the mind that 'I am here to study the new knowledge and learn the technical writing' rather than stick to their mark and as I said, the report is only worth 4%, which relatively affordable compared to the midterm or the final exam.\n\n  A bad educator will be those who can not give constructive suggestions and gave students lousy marks. The two TAs I met in the summer are good examples of this. The assignment they marked was worth 12%, which is quite expensive, and I also put lots of effort into it. However, the TAs only stick to the rubric, which is stubborn and inflexible, because the rubric can not be correct all the time, and some answers may look reasonable to the question. As an educator, you need to think about how the student thinks, understand why I wrote those answers and give some marks rather than just took them all. Besides, when those marks are released, there is no helpful information to improve the assignment for next time. All those will cause the student to feel bad, and the mark will never improve, in which the TA becomes the killer of the students' dream. Again, the TA's job is not just to stick to the rubric and mark student work, but to help the student understand and give them a suggestion on how they should improve and somehow understand the student and give them support.\n\n  Additionally, for an educator in the engineering field, applying the theory will be critical to trigger students' interest in learning the stuff in the field. Admittedly, most scientific knowledge is dry, but engineering is the study of how we should apply science in real life. For example, how should we build a nice sword? We need to use a different type of steel for different parts of the sword. For the blade, we need to use high carbon steel, which is more rigid and can cur through the armour, but for the sword's body, if we use that material, the whole world will be easy to break because of the low ductility. Therefore, the body should use low carbon steel so it can handle the shock. All those are involved in how the microstructure changed to affect the material properties and what heat treatment methods we should use to achieve those goals.  ",
                    fontSize: _screenH / contentFontSize),
                SizedBox(
                  height: _screenH / dis,
                ),
                title(content: "Conclusion", fontSize: _screenH / 12),
                SizedBox(
                  height: _screenH / 30,
                ),
                content(
                    contents:
                        "  To sum up, it is difficult to be a good teacher, one thing should always stick to an educator’s mind is you should help and guide the student and help them as much as you can, rather than just finish your work and give them mark, which will not help student improve themselves in anyway. Additionally, for an educator in engineering field, it is necessary to help student connect the real life application to the theory in class, which can help them better visual how those work in real life and trigger their interest in those dry knowledge. ",
                    fontSize: _screenH / contentFontSize)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
