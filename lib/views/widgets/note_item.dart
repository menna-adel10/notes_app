import 'package:flutter/material.dart';
import 'edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.push(context,MaterialPageRoute(builder: (context){
           return const EditNotesView();
         }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end ,
          children: [
            ListTile(
              title:  const Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0,
                    bottom: 16),
                child: Text(
                  'Build your career with Tharwat Samy',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18 ,

                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {

                },
                icon: const Icon(Icons.delete,
                    size: 30),
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text('May21, 2022',
                style: TextStyle(color: Colors.black.withOpacity(.4),
                    fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
