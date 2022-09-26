import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_ui/list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey.shade100,
              height: 500,
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Icon(Icons.arrow_back), Icon(Icons.sort)],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(80)),
                      child: const CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage('https://i.pinimg.com/564x/49/2d/ae/492dae7f6f51d09c8d1407066ef93de8.jpg'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png")),
                          CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://blog.hubspot.com/hubfs/image8-2.jpg")),
                          CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://about.twitter.com/content/dam/about-twitter/en/brand-toolkit/brand-download-img-1.jpg.twimg.1920.jpg")),
                          CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/LinkedIn_icon_circle.svg/2048px-LinkedIn_icon_circle.svg.png")),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'chromicle',
                          style: GoogleFonts.cabin(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '@amFOSS',
                          style: GoogleFonts.cabin(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Mobile App Developer and Open \n             source enthusiastic',
                          style: GoogleFonts.cabin(fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  ListDetails(icon1: Icons.privacy_tip_outlined, text: 'Privacy'),
                  ListDetails(icon1: Icons.history ,text: 'Purchase History'),
                  ListDetails(icon1: Icons.help, text: 'Help & Support'),
                  ListDetails(icon1: Icons.settings, text: 'Settings'),
                  ListDetails(icon1: Icons.add, text: 'Invite a Friend')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
