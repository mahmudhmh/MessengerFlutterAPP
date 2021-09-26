import 'package:flutter/material.dart';
class messengerpage extends StatelessWidget {
  const messengerpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 20,
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.black,
        title: Row(
          children:[
            CircleAvatar(
            radius: 22,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/54104161?s=400&u=b466ac0b7be97eb85abd2d0bc6dcadf637c9f4ba&v=4'),
              backgroundColor: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),
            ),
          ],
        ),
        actions: [
         IconButton(
           splashRadius: 25,
             color: Colors.white,
             icon: CircleAvatar(
               backgroundColor: Colors.grey[900],
               radius: 25,
               child: Icon(
                 Icons.camera_alt_rounded,
                 size:15,
                 color: Colors.white,
               ),
             ),
             onPressed: (){}
             ),
         IconButton(
              icon: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey[900],
                child: Icon(
                  Icons.edit,
                  size:15,
                  color: Colors.white,
                ),
              ),
              onPressed: (){}
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      10
                  ),
                  color: Colors.grey[900],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Search',
                         style: TextStyle(
                        color: Colors.white,
                           fontSize: 20,
                           fontWeight: FontWeight.normal,
                    ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return BuildStoryItem();
                  },
                    separatorBuilder: (context,index) => SizedBox(
                        width: 20,
                      ),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index){
                  return buildChatItem();
                },
                separatorBuilder: (context,index) => SizedBox(
                  height: 15,
                ),
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children:[
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/54104161?s=400&u=b466ac0b7be97eb85abd2d0bc6dcadf637c9f4ba&v=4'),
            backgroundColor: Colors.black,
          ),
          CircleAvatar(
            radius: 8,
            backgroundColor: Colors.black,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end:3.0
            ),
            child: CircleAvatar(
              radius: 7,
              backgroundColor: Colors.green,
            ),
          ),
        ],

      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mahmoud Hussien',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Hello My Name Is Mahmoud Hussien',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '9:11 PM',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    ],
  );
  Widget BuildStoryItem() => Container(
    width: 60,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children:[
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/54104161?s=400&u=b466ac0b7be97eb85abd2d0bc6dcadf637c9f4ba&v=4'),
              backgroundColor: Colors.black,
            ),
            CircleAvatar(
              radius: 8,
              backgroundColor: Colors.black,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end:3.0
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,
              ),
            ),
          ],

        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Mahmoud Hussien',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w200,
            fontSize: 13,

          ),

        ),
      ],
    ),
  );
}
