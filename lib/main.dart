import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context){
        return MaterialApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            home:hotel ());
      }));
}

class hotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Stack(children: [
              Image(
                  image: NetworkImage(
                      'https://media.istockphoto.com/id/1453413359/photo/beach-view-from-kannur-kerala.jpg?s=2048x2048&w=is&k=20&c=ChYfWzutdbmnqEgu4qtSawizhKbAAGao3J3cbTihNCs=')),
              Positioned(
                  left: 40,
                  top: 150,
                  child: Text(
                    'Peral white\nThalashery Kerala',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  left: 40,
                  top: 200,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '8.4/85 reviews',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
              Positioned(
                  left: 460,
                  top: 240,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellowAccent),
                          Icon(Icons.star, color: Colors.yellowAccent),
                          Icon(Icons.star, color: Colors.yellowAccent),
                          Icon(Icons.star, color: Colors.yellowAccent),
                          Icon(Icons.star),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            Icon(Icons.location_on),
                            Text('4 km  from Thalashery'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          '\-2000',
                          style: TextStyle(color: Colors.purple, fontSize: 20),
                        ),
                        Text('/per day')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.purple),
                  onPressed: () {},
                  child: Text('Book Now')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'BEACHES IN  KANNUR',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
              'White Shell is situated on the beachfront in Kannur, 12 km from '
                  'Kannur Railway Station and 13 km from Thalassery Railway Station.'
                  ' Boasting room service, this property also has a restaurant and'
                  ' a terrace. Free WiFi is available and Vadakara Railway Station is 36 km away'

             ' At the resort, the rooms have a wardrobe. Featuring a private'
                  ' bathroom with a shower and free toiletries, rooms at White '
                  'Shell also feature a sea view. The nicest beach in Kerala, '
                  'may be in India (forgett Goa)! Our host Prince was very'
                  ' helpful and super kind. They also have'
                  ' very delicious & authentic food (the breakfast was'
                  ' awesome!). The staff is kind,'
                  ' polite and attentative. The room was super clean '
                  'and for a little extra we got the corner'
                  ' room with beach view. Aircon, Ventilators, Lights,'
                  ' Plugs and Water-Heater (turn on 15 '
                  'min before shower) were all working flawlessly.'
                  ' We could even use their rooftop area to dry our'
                  ' loundry. The evening (also nights & mornings) were all quiet and you can chill & talk with fellow'
                  ' travelers and may have a beer. All in all: can very recommend, especially also for "western" tourists! '
                  'If we are ever nearby, we will come again in a heartbeat',),

          Text(
    ' polite and attentative. The room was super clean '
    'and for a little extra we got the corner'
    ' room with beach view. Aircon, Ventilators, Lights,'
    ' Plugs and Water-Heater (turn on 15 '
    'min before shower) were all working flawlessly.'
    ' We could even use their rooftop area to dry our'
    ' loundry. The evening (also nights & mornings) were all quiet and you can chill & talk with fellow'
    ' travelers and may have a beer. All in all: can very recommend, especially also for "western" tourists! '
    'If we are ever nearby, we will come again in a heartbeat')
        ],
      ),
      bottomNavigationBar:
      NavigationBar(selectedIndex: 0, height: 50, destinations: [
        Column(
          children: [
            Icon(
              Icons.search,
              color: Colors.pink,
            ),
            Text('search', style: TextStyle(color: Colors.pink))
          ],
        ),
        Column(
          children: [Icon(Icons.favorite), Text('favorite')],
        ),
        Column(
          children: [Icon(Icons.settings), Text('setting')],
        )
      ]),
    );
  }
}