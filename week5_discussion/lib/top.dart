import 'package:flutter/material.dart';
import 'chips.dart';
import 'screen2.dart';
import 'screen3.dart';

class TopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          alignment: Alignment(-1.0, 1.0),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/773371/pexels-photo-773371.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        'Sewe Mjano',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        '25 years old . Anxiety . Takes Meds',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Text(
                      '11 Feb 2021 16:00 - 17:00',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.green[500],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Complaints',
              style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 20,
                color: Colors.black,
              )),
        ),
        const MyStatefulWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Information',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 20,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Medicine',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 20,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Diagnosis',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 20,
                    color: Colors.black,
                  )),
            )
          ],
        ),
         Section2(),
        //  Section3()
      ],
    );
  }
}
