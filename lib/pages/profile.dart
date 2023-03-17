import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:space_x/notifier.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://instagram.fdel27-4.fna.fbcdn.net/v/t51.2885-19/331095872_166223666188656_752609388349973475_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fdel27-4.fna.fbcdn.net&_nc_cat=100&_nc_ohc=d8ekj_HDEhUAX95wPEB&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfCbQRP7ZaKV2BWKLrHGy1hsJg5yG4gZIjKP0V77N3QJ3g&oe=64181467&_nc_sid=1527a3'),
            radius: 70,
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Abhinav'),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('abhinavfffans@gmail.com'),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'image/insta.svg',
              color: Colors.grey,
              height: 26.8,
            ),
            title: Text('@abhinavvgusainn'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotofier.value = !isDarkModeNotofier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotofier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return Icon(Icons.dark_mode);
            } else {
              return Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
