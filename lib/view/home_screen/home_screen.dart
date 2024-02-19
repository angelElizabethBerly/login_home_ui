import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> myList = [
      {
        "name": "NIKE SHOP",
        "date": "17 Oct",
        "price": "-62,94",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-1CpvJIbZlSZsnDyVVXmNMAJih8MylT8ElosYOUt9teXxI-2wfUi-CEOc0A&s"
      },
      {
        "name": "STARBUCKS",
        "date": "17 Oct",
        "price": "-6,00",
        "image":
            "https://i.pinimg.com/564x/fa/16/ec/fa16ec19e6212b6c68daeea1b06f4a52.jpg"
      },
      {
        "name": "Anna Johnson",
        "date": "14 Oct",
        "price": "50,00",
        "image":
            "https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8"
      },
      {
        "name": "From SAVINGS",
        "date": "3 Oct",
        "price": "25,00",
        "image":
            "https://images.pexels.com/photos/7009864/pexels-photo-7009864.jpeg?auto=compress&cs=tinysrgb&w=600"
      }
    ];
    List<Map> myList2 = [
      {
        "name": "McDonald's",
        "date": "17 Oct",
        "price": "- 12,37",
        "image":
            "https://media.designrush.com/inspiration_images/134933/conversions/_1511456189_555_McDonald's-preview.jpg"
      },
      {
        "name": "NIKE SHOP",
        "date": "17 Oct",
        "price": "-62,94",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-1CpvJIbZlSZsnDyVVXmNMAJih8MylT8ElosYOUt9teXxI-2wfUi-CEOc0A&s"
      }
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Home", style: TextStyle(fontWeight: FontWeight.w500)),
          actions: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?auto=compress&cs=tinysrgb&w=600"),
            ),
            SizedBox(width: 20),
            Icon(Icons.list),
            SizedBox(width: 20),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Main Account"),
                    Icon(Icons.arrow_drop_down_sharp)
                  ],
                ),
                Text(
                  "13.458 \$",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Row(
                  children: [
                    Icon(Icons.remove_red_eye_outlined),
                    SizedBox(width: 5),
                    Text("Current balance")
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                      style: ButtonStyle(
                          // elevation: MaterialStatePropertyAll(20),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.purple.shade100),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)))),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.arrow_forward_outlined),
                      style: ButtonStyle(
                          // elevation: MaterialStatePropertyAll(50),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.purple.shade100),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)))),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Split a purchase",
                          style: TextStyle(fontSize: 15),
                        ),
                        style: ButtonStyle(
                            // elevation: MaterialStatePropertyAll(50),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 45, vertical: 15)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.purple.shade50),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text("Recent events"),
                SizedBox(height: 10),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: myList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      leading: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(myList[index]["image"]))),
                        height: 50,
                        width: 50,
                      ),
                      title: Text(myList[index]["name"]),
                      subtitle: Text(myList[index]["date"]),
                      trailing: index < 2
                          ? Text("${myList[index]["price"]} \$",
                              style: TextStyle(fontSize: 18))
                          : TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.purple.shade50)),
                              onPressed: () {},
                              child: Text(
                                "${myList[index]["price"]} \$",
                                style: TextStyle(fontSize: 15),
                              )),
                      shape: BeveledRectangleBorder(
                          side: BorderSide(width: 0.5, color: Colors.black26)),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                ),
                SizedBox(height: 10),
                Text("Recent events"),
                SizedBox(height: 10),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: myList2.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(myList2[index]["image"]))),
                        height: 50,
                        width: 50,
                      ),
                      title: Text(myList2[index]["name"]),
                      subtitle: Text(myList2[index]["date"]),
                      trailing: Text("${myList2[index]["price"]} \$",
                          style: TextStyle(fontSize: 18)),
                      shape: BeveledRectangleBorder(
                          side: BorderSide(width: 0.5, color: Colors.black26)),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.comment), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_none_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: ""),
            ],
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            elevation: 20));
  }
}
