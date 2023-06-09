import 'package:chatapp/config/app_images.dart';
import 'package:chatapp/main.dart';
import 'package:flutter/material.dart';
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.pinkAccent,
      //   title: Text('Chat App'),
      // ),
      body: FirstScreenSTF(
      ),
    );
  }
}
class FirstScreenSTF extends StatefulWidget {
  const FirstScreenSTF({Key? key}) : super(key: key);

  @override
  State<FirstScreenSTF> createState() => _FirstScreenSTFState();
}

class _FirstScreenSTFState extends State<FirstScreenSTF> {

   late double width;
   late double height;


   final TextEditingController _searchController = TextEditingController();
   List storyList = [
     {
       "name": "Novac",
       "imageUrl": "<https://randomuser.me/api/portraits/men/31.jpg>",
       "isOnline": true,
       "hasStory": true,
     },
     {
       "name": "Derick",
       "imageUrl": "<https://randomuser.me/api/portraits/men/81.jpg>",
       "isOnline": false,
       "hasStory": false,
     },
     {
       "name": "Mevis",
       "imageUrl": "<https://randomuser.me/api/portraits/women/49.jpg>",
       "isOnline": true,
       "hasStory": false,
     },
     {
       "name": "Emannual",
       "imageUrl": "<https://randomuser.me/api/portraits/men/35.jpg>",
       "isOnline": true,
       "hasStory": true,
     },
     {
       "name": "Gracy",
       "imageUrl": "<https://randomuser.me/api/portraits/women/56.jpg>",
       "isOnline": false,
       "hasStory": false,
     },
     {
       "name": "Robert",
       "imageUrl": "<https://randomuser.me/api/portraits/men/36.jpg>",
       "isOnline": false,
       "hasStory": true,
     }
   ];

     ///stories content
   _stories() {
     return SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child: Row(
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.only(right: 20),
             child: Column(
               children: <Widget>[
                 Container(
                   width: 60,
                   height: 60,
                   decoration: const BoxDecoration(
                       shape: BoxShape.circle, color: Color(0xFFe9eaec)),
                   child: const Center(
                     child: Icon(
                       Icons.add,
                       size: 33,
                     ),
                   ),
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 const SizedBox(
                   width: 75,
                   child: Align(
                       child: Text(
                         'Your Story',
                         overflow: TextOverflow.ellipsis,
                       )),
                 )
               ],
             ),
           ),
           Row(
               children: List.generate(storyList.length, (index) {
                 return Padding(
                   padding: const EdgeInsets.only(right: 20),
                   child: Column(
                     children: <Widget>[
                       Container(
                         width: 60,
                         height: 60,
                         child: Stack(
                           children: <Widget>[
                             storyList[index]['hasStory']
                                 ? Container(
                               decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   border: Border.all(
                                       color: Colors.blueAccent, width: 3)),
                               child: Padding(
                                 padding: const EdgeInsets.all(3.0),
                                 child: Container(
                                   width: 75,
                                   height: 75,
                                   decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       image: DecorationImage(
                                           image: NetworkImage(
                                               storyList[index]['imageUrl']),
                                           fit: BoxFit.cover)),
                                 ),
                               ),
                             )
                                 : Container(
                               width: 70,
                               height: 70,
                               decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   image: DecorationImage(
                                       image: NetworkImage(
                                           storyList[index]['imageUrl']),
                                       fit: BoxFit.cover)),
                             ),
                             storyList[index]['isOnline']
                                 ? Positioned(
                               top: 38,
                               left: 42,
                               child: Container(
                                 width: 20,
                                 height: 20,
                                 decoration: BoxDecoration(
                                     color: Color(0xFF66BB6A),
                                     shape: BoxShape.circle,
                                     border: Border.all(
                                         color: Color(0xFFFFFFFF), width: 3)),
                               ),
                             )
                                 : Container()
                           ],
                         ),
                       ),
                       const SizedBox(
                         height: 10,
                       ),
                       SizedBox(
                         width: 75,
                         child: Align(
                             child: Text(
                               storyList[index]['name'],
                               overflow: TextOverflow.ellipsis,
                             ),),
                       ),
                     ],
                   ),
                 );
               })),
         ],
       ),
     );
   }
   ///conversation list
   List conversationList = [
     {
       "name": "Novac",
       "imageUrl": "<https://randomuser.me/api/portraits/men/31.jpg>",
       "isOnline": true,
       "hasStory": true,
       "message": "Where are you?",
       "time": "5:00 pm"
     },
     {
       "name": "Derick",
       "imageUrl": "<https://randomuser.me/api/portraits/men/81.jpg>",
       "isOnline": false,
       "hasStory": false,
       "message": "It's good!!",
       "time": "7:00 am"
     },
     {
       "name": "Mevis",
       "imageUrl": "<https://randomuser.me/api/portraits/women/49.jpg>",
       "isOnline": true,
       "hasStory": false,
       "message": "I love You too!",
       "time": "6:50 am"
     },
     {
       "name": "Emannual",
       "imageUrl": "<https://randomuser.me/api/portraits/men/35.jpg>",
       "isOnline": true,
       "hasStory": true,
       "message": "Got to go!! Bye!!",
       "time": "yesterday"
     },
     {
       "name": "Gracy",
       "imageUrl": "<https://randomuser.me/api/portraits/women/56.jpg>",
       "isOnline": false,
       "hasStory": false,
       "message": "Sorry, I forgot!",
       "time": "2nd Feb"
     },
     {
       "name": "Robert",
       "imageUrl": "<https://randomuser.me/api/portraits/men/36.jpg>",
       "isOnline": false,
       "hasStory": true,
       "message": "No, I won't go!",
       "time": "28th Jan"
     },
     {
       "name": "Lucy",
       "imageUrl": "<https://randomuser.me/api/portraits/women/56.jpg>",
       "isOnline": false,
       "hasStory": false,
       "message": "Hahahahahaha",
       "time": "25th Jan"
     },
     {
       "name": "Emma",
       "imageUrl": "<https://randomuser.me/api/portraits/women/56.jpg>",
       "isOnline": false,
       "hasStory": false,
       "message": "Been a while!",
       "time": "15th Jan"
     }
   ];
   ///conversation content
   _conversations(BuildContext context) {
     return SingleChildScrollView(
       child: Column(
         children: List.generate(conversationList.length, (index) {
           return InkWell(
             child: Padding(
               padding: const EdgeInsets.only(bottom: 20),
               child: Row(
                 children: <Widget>[
                   Container(
                     width: 60,
                     height: 60,
                     child: Stack(
                       children: <Widget>[
                         conversationList[index]['hasStory'] ?
                         Container(
                           decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border:
                               Border.all(color: Colors.blueAccent, width: 3)),
                           child: Padding(
                             padding: const EdgeInsets.all(3.0),
                             child: Container(
                               width: 75,
                               height: 75,
                               decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   image: DecorationImage(
                                       image: NetworkImage(
                                           conversationList[index]['imageUrl']),
                                       fit: BoxFit.cover)),
                             ),
                           ),
                         )
                             : Container(
                           width: 70,
                           height: 70,
                           decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               image: DecorationImage(
                                   image: NetworkImage(
                                       conversationList[index]['imageUrl']),
                                   fit: BoxFit.cover)),
                         ),
                         conversationList[index]['isOnline']
                             ? Positioned(
                           top: 38,
                           left: 42,
                           child: Container(
                             width: 20,
                             height: 20,
                             decoration: BoxDecoration(
                                 color: Color(0xFF66BB6A),
                                 shape: BoxShape.circle,
                                 border: Border.all(color: Color(0xFFFFFFFF), width: 3)),
                           ),
                         )
                             : Container()
                       ],
                     ),
                   ),
                   SizedBox(
                     width: 20,
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text(
                         conversationList[index]['name'],
                         style:
                         TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                       ),
                       SizedBox(
                         height: 5,
                       ),
                       SizedBox(
                         width: MediaQuery.of(context).size.width - 135,
                         child: Text(
                           conversationList[index]['message'] +
                               " - " +
                               conversationList[index]['time'],
                           style: TextStyle(
                               fontSize: 15, color: Color(0xFF000000).withOpacity(0.7)),
                           overflow: TextOverflow.ellipsis,
                         ),
                       )
                     ],
                   )
                 ],
               ),
             ),
           );
         }),
       ),
     );
   }








  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width*0.12,
                height: width*0.12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                        AppImages.girl2Image,
                    ),
                ),
              ),
              const Text('Chats',style: TextStyle(
                fontSize: 23.0,
              ),),
              const Icon(Icons.edit,size: 30.0,)
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: width*0.9,
            height: 45,
            decoration: BoxDecoration(
                color: const Color(0xFFe9eaec),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              cursorColor: const Color(0xFF000000),
              controller: _searchController,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF000000).withOpacity(0.5),
                  ),
                  hintText: "Search",
                  border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _stories(),
          SizedBox(
            height: 20,
          ),
        Expanded(child: _conversations(context)),


        ],
      ),
    );
  }
}

