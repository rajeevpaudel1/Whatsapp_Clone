import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Customcard extends StatefulWidget {
  const Customcard({super.key});

  @override
  State<Customcard> createState() => _CustomcardState();
}

class _CustomcardState extends State<Customcard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: SvgPicture.asset("assets/groups.svg", height: 36, width: 36,),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              "Abhishek Sharma",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(width: 5,),
                Text("Oee mula phone utha na!", style: TextStyle(fontSize: 13),),
              ],
            ),
            trailing: Text('09:20'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80 ),
            child: Divider(
              thickness: 1,
      
            ),
          ),
        ],
      ),
    );
  }
}
