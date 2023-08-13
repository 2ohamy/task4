void main() {
  Map<String, dynamic> myAccount = {
    "post1": {
      "title": "Flutter",
      "content":
          "Flutter is a framework by Google for building multi-platform applications from a single codebase.",
      "date": "2/6/2023",
      "Likes": {
        "Ahmed": {
          "since": 27,
          "info": {
            "name": "Ahmed",
            "age": 22,
            "address": "cairo",
            "email": "ahmed22@gmail.com",
            "friends": ["Khalid", "ashraf", "youssef"]
          }
        },
        "Ali": {
          "since": 8,
          "info": {
            "name": "Ali",
            "age": 31,
            "address": "Alex",
            "email": "ali31@gmail.com",
            "friends": ["Osama", "Mohamed", "yasser"]
          }
        },
        "mohamed": {
          "since": 35,
          "info": {
            "name": "Mohamed",
            "age": 28,
            "address": "October",
            "email": "mohamed28@gmail.com",
            "friends": ["Ahmed", "islam", "ashraf"]
          }
        },
      },
      "Share": {
        "Osama": {"name": "Osama", "email": "osama19@gmail.com"},
        "Ahmed": {"name": "Ahmed", "email": "ahmed25@gmail.com"},
        "Mohamed": {"name": "Mohamed", "email": "mohamed28@gmail.com"}
      }
    },
    "post2": {
      "title": "AI",
      "content":
          "AI is a wide-ranging branch of computer science concerned with building smart machines capable of performing tasks that typically require human intelligence.",
      "date": "1/4/2023",
      "Likes": {
        "Khalid": {
          "since": 24,
          "info": {
            "name": "Khalid",
            "age": 20,
            "address": "Giza",
            "email": "khalid20@gmail.com",
            "friends": ["Ashraf", "Youssef", "Mohamed"]
          }
        },
        "Ahmed": {
          "since": 45,
          "info": {
            "name": "Ahmed",
            "age": 41,
            "address": "Alex",
            "email": "ahmed41@gmail.com",
            "friends": ["Yasser", "Ashraf", "Hassan"]
          }
        },
        "mohamed": {
          "since": 35,
          "info": {
            "name": "Mohamed",
            "age": 28,
            "address": "October",
            "email": "mohamed28@gmail.com",
            "friends": ["Ahmed", "islam", "ashraf"]
          }
        },
      },
      "Share": {
        "Hassan": {"name": "Hassan", "email": "hassan19@gmail.com"},
        "Mohamed": {"name": "Mohamed", "email": "mohamed28@gmail.com"},
        "Yasser": {"name": "Yasser", "email": "yasser33@gmail.com"}
      }
    }
  };
// //-------------------------task1---------------------------------
//   String firstLiker = myAccount["post1"]["Likes"].keys.first;
//   print("The first person who liked post 1 is: $firstLiker");
//   print("Info:\n${myAccount["post1"]["Likes"][firstLiker]["info"]}");

//   //-----------------------task2----------------------------------
//    Map<String, dynamic> likes = myAccount["post1"]["Likes"];
//   Map<String, dynamic> sh = myAccount["post1"]["Share"];
//   var pe = "";
//   for (var person in likes.keys) {
//     for (var p in sh.keys) {
//         if (myAccount["post1"]["Likes"][person]["info"]["email"] ==
//             myAccount["post1"]["Share"][p]["email"]) {
//           pe = person;
//           break;
//         }
//     }
//   }
//   print("\nThe person who liked and shared post 1 is: ${pe}");
//   print("Email: ${myAccount["post1"]["Likes"][pe]["info"]["email"]}");
  //------------------------task3--------------------------------------
  // Map<String, dynamic> likess = myAccount["post1"]["Likes"];
  // List<String> fri = [];
  // likess.forEach((person, value) {
  //   if (value['info']['friends'].contains('ashraf')) {
  //     fri.add(person);
  //   }
  // });
  // print('\nPeople who liked post 1 and have a friend named \'ashraf\':');
  // for (var person in fri) {
  //   print('Name: ${myAccount['post1']['Likes'][person]['info']['name']}');
  //   print('Friends: ${myAccount['post1']['Likes'][person]['info']['friends']}');
  // }
  //-----------------------task4--------------------------------------
  // Map<String, dynamic> likes = myAccount["post1"]["Likes"];
  // Map<String, dynamic> sh = myAccount["post1"]["Share"];
  // Map<String, dynamic> likes2 = myAccount["post2"]["Likes"];
  // Map<String, dynamic> sh2 = myAccount["post2"]["Share"];
  // var pe = "";
  // for (var person1 in likes.keys) {
  //   for (var person2 in sh.keys) {
  //     for (var person3 in likes2.keys) {
  //       for (var person4 in sh2.keys) {
  //         if ((myAccount["post1"]["Likes"][person1]["info"]["email"] ==
  //                 myAccount["post1"]["Share"][person2]["email"]) ==
  //             (myAccount["post2"]["Likes"][person3]["info"]["email"] ==
  //                 myAccount["post2"]["Share"][person4]["email"])) {
  //           pe = person1;
  //           break;
  //         }
  //       }
  //     }
  //   }
  // }
  // print(pe);
  //---------------------------------task5-----------------------------------
  Map<String, dynamic> likesOfPost1 = myAccount["post1"]["Likes"];
  int maxPost1 = 0;
  Map<String, dynamic> likesOfPost2 = myAccount["post2"]["Likes"];
  int maxPost2 = 0;
  for (var person1 in likesOfPost1.keys) {
    if ((myAccount["post1"]["Likes"][person1]["info"]["age"]) > maxPost1) {
      maxPost1 = myAccount["post1"]["Likes"][person1]["info"]["age"];
    }
  }
  for (var person1 in likesOfPost2.keys) {
    if ((myAccount["post2"]["Likes"][person1]["info"]["age"]) > maxPost1) {
      maxPost2 = myAccount["post2"]["Likes"][person1]["info"]["age"];
    }
  }
  if (maxPost1 > maxPost2) {
    print(
        "title is ${myAccount["post1"]["title"]} content is ${myAccount["post1"]["content"]} date is ${myAccount["post1"]["date"]}");
  } else {
    print(
        "title is ${myAccount["post2"]["title"]} content is ${myAccount["post2"]["content"]} date is ${myAccount["post2"]["date"]}");
  }
}
