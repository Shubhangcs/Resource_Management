import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text('Home',
                style: GoogleFonts.varelaRound(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            backgroundColor: Colors.orange),
        drawer: customDrawer(context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 10, right: 10, top: 5, bottom: 10),
              child: Card(
                elevation: 10,
                surfaceTintColor: Colors.transparent,
                child: ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                  ),
                  title: Text(
                    'Shubhang CS',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.varelaRound(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '4AL21CS149',
                    style: GoogleFonts.varelaRound(
                        color: Colors.grey, fontSize: 18),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Events',
                style: GoogleFonts.varelaRound(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Divider(
                        color: Colors.grey.shade300,
                      ),
                      const ListTile(
                        title: Text('Event name'),
                        subtitle: Text('Hello World'),
                        leading: Icon(Icons.notifications_on_rounded),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  );
                },
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orange.shade400,
            ),
            child: Center(child: Image.asset('assets/logo.png')),
          ),
          ListTile(
            leading:const Icon(Icons.school),
            title:const Text('Acadamics'),
            trailing:const Icon(Icons.play_arrow_rounded),
            onTap: () {
              Navigator.pushNamed(context, "/acadamics");
            },
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.pedal_bike_outlined),
            title: Text('Clubs'),
            trailing: Icon(Icons.play_arrow_rounded),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.menu_book_rounded),
            title: Text('Library'),
            trailing: Icon(Icons.play_arrow_rounded),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.business_outlined),
            title: Text('Hostel'),
            trailing: Icon(Icons.play_arrow_rounded),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
