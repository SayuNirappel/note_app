import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_app/view/add+_note_screen/add_note_screen.dart';
import 'package:note_app/view/note_detail_screen/note_detail_screen.dart';

void main() {}

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        elevation: 10,
        onPressed: () {
          Navigator.push((context),
              MaterialPageRoute(builder: (context) => AddNoteScreen()));
        },
        child: Icon(
          Icons.add,
          size: 45,
        ),
      ),
      drawer: Drawer(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: CircleAvatar(),
        title: Text("Hi Professor"),
      ),
      body: Column(
        spacing: 20,
        children: [
          Text(
            "My Notes",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
          ),
          // Center(
          //   child: TabBar(
          //       tabAlignment: TabAlignment.center,
          //       isScrollable: true,
          //       indicator: BoxDecoration(
          //           borderRadius: BorderRadius.circular(100),
          //           color: Colors.greenAccent),
          //       indicatorSize: TabBarIndicatorSize.tab,
          //       dividerHeight: 0,
          //       //indicatorPadding: EdgeInsets.zero,
          //       tabs: [
          //         Tab(
          //           text: "All",
          //           height: 30,
          //         ),
          //         Tab(
          //           text: "T1",
          //           height: 30,
          //         ),
          //         Tab(
          //           text: "T2",
          //           height: 30,
          //         ),
          //         Tab(
          //           text: "T3",
          //           height: 30,
          //         )
          //       ]),
          // ),
          Expanded(
            child: MasonryGridView.builder(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                            (context),
                            MaterialPageRoute(
                                builder: (context) => NoteDetailScreen()));
                      },
                      child: Container(
                        height: index * 100,
                        color: Colors.blueGrey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 5,
                          children: [
                            Text(
                              "Note Title",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              "The golden rays of the morning sun filtered through the dense canopy, casting dappled shadows on the forest floor. Birds chirped in harmony, their melodies blending with the rustling of leaves as a gentle breeze whispered through the ancient trees. A narrow dirt path wound its way between towering trunks, leading deeper into the heart of the wilderness. The air was rich with the scent of damp earth and blooming flowers, a reminder of nature’s quiet resilience. Every step forward felt like an invitation into a world untouched by time, where the whispers of the past lingered in the rustling leaves and the distant call of unseen creatures.",
                              textAlign: TextAlign.justify,
                              maxLines: index + 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.calendar_month),
                                Text(
                                  "Last Updated",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
