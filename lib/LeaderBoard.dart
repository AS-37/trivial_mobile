import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Leaderboard",
              style: TextStyle(fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: SizedBox(
                height: 300,
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://image.noelshack.com/fichiers/2015/44/1446247443-12188304-1733216443565233-1870067640-n.jpg"),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text("xXDarkSasukedu89Xx")
                          ],
                        ),
                        leading: Text("#${index + 1}" ,style: TextStyle(fontWeight: FontWeight.bold),),
                        trailing: Text(
                            "${(200000 / (index + 1)).toString().substring(0, 5)} points",style: TextStyle(fontWeight: FontWeight.bold)),
                      );
                    },
                    separatorBuilder: (context, index) => Divider(thickness: 1,color: Colors.purple,indent: 10,endIndent: 10,),
                    itemCount: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}