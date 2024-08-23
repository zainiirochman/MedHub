import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(23),
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Profile',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(9, 15, 71, 1),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png'),radius: 30,),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi, Lorem Ipsum!', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                    Text('Welcome to MedHub', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40,),
            _buildButton(Icons.person_outlined, 'Private Account', () { }),
            _divider(),
            _buildButton(Icons.medical_services_outlined, 'My Consults', () { }),
            _divider(),
            _buildButton(Icons.sticky_note_2_outlined, 'My Orders', () { }),
            _divider(),
            _buildButton(Icons.access_time_outlined, 'Billing', () { }),
            _divider(),
            _buildButton(Icons.question_answer_outlined, 'FAQ', () { }),
            _divider(),
            _buildButton(Icons.settings_outlined, 'Settings', () { }),
            _divider(),
          ],
        ),
      ),
    );
  }
}

Widget _buildButton(IconData icon, String text, VoidCallback onPressed){
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.white),
      elevation: MaterialStateProperty.all(0),
      padding: MaterialStateProperty.all(EdgeInsets.all(0)),
    ),
    onPressed: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(icon, color: Color.fromRGBO(0, 165, 155, 1),),
        SizedBox(width: 20,),
        Text(
          text,
          style: TextStyle(
            color: Color.fromRGBO(9, 28, 63, 0.75),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
        Icon(Icons.keyboard_arrow_right_outlined, color: Color.fromRGBO(9, 28, 63, 0.75),)
      ],
    ),
  );
}

Widget _divider(){
  return SizedBox(
    height: 20,
    child: Divider(
      color: Color.fromRGBO(9, 28, 63, 0.08),
      thickness: 1,
    ),
  );
}