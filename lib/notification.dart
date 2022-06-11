import 'package:flutter/material.dart';
import 'package:in_app_notification/in_app_notification.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InAppNotification(
      child: SafeArea(
     child: Scaffold(
       backgroundColor: const Color(0xff212121),
       body: Center(
         child: ElevatedButton(
           style: ButtonStyle(
             backgroundColor: MaterialStateProperty.resolveWith<Color>(
                   (Set<MaterialState> states) {
                 if (states.contains(MaterialState.pressed)) return const Color(0xffa68966);
                 return const Color(0xffa68966);
               },
             ),
           ),
           child: const Text(
             'Check now',
           ),
           onPressed: () => InAppNotification.show(
               child: Card(
                 color: const Color(0xffeee9d3),
                 child: Padding(
                 padding: const EdgeInsets.all(16),
                   child: Row(
                     children: [
                    Image.asset('images/cup.jpg',
                    width: 88,
                    height: 80,
                    ),
                       Expanded(
                           child: Column(
                             children: const [
                               Text(
                                 'New Arrival!!!!',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                               ),
                               ),
                               Text(
                                 'The new look of our amazing coffee cup.....',
                                 style:  TextStyle(
                                   fontWeight: FontWeight.normal,
                                 ),
                               ),
                               Text(
                                 'Try it now...',
                                 style:  TextStyle(
                                   fontWeight: FontWeight.normal,
                                 ),
                               ),
                             ],
                           )
                       ),
                     ],
                   ),
                 ),
               ),
            context: context,
           ),
         ),
       ),
     ),
      ),
    );
  }
}