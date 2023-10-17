import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/icons/A2G.png"),
          ),
          //
          // Center(
          //   child: AnimatedContainer(
          //     height: 180,
          //     width: 400,
          //     duration: Duration(milliseconds: 200),
          //     child: ListView(
          //       scrollDirection: Axis.vertical,
          //       children: [

          //       ],
          //     ),
          //   ),
          // ),
          DrawerListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Dashboard",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                
              ],
            ),
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {}, 
            items: [
            
            ], height: 0,
          ),
          DrawerListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Venture",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.white,
                )
              ],
            ),
            svgSrc: "assets/icons/menu_task.svg",
            press: () {}, 
            items: [
              PagesName(id: 1, name: "Venture add"),
              PagesName(id: 1, name: "Venture list"),
            ], height: 70,
          ),
          DrawerListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Team",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.white,
                )
              ],
            ),
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
            items: [
              PagesName(id: 1, name: "Team add"),
              PagesName(id: 1, name: "Team List"),
            ],
            height: 70,
          ),
          DrawerListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "User",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.white,
                )
              ],
            ),
            svgSrc: "assets/icons/menu_store.svg",
            press: () {}, items: [
              PagesName(id: 1, name: "User add"),
              PagesName(id: 1, name: "User List"),
            ],
            height: 70,
          ),
          DrawerListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Client",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.white,
                )
              ],
            ),
            height: 70,
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {}, items: [
              PagesName(id: 1, name: "Client add"),
              PagesName(id: 1, name: "Client List"),
            ],
          ),
          DrawerListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Orders",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.white,
                )
              ],
            ),
            height: 100,
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {}, items: [
              PagesName(id: 1, name: "Order add"),
              PagesName(id: 1, name: "Order List"),
              PagesName(id: 1, name: "Order chat"),
            ],
          ),
          // DrawerListTile(
          //   title: "Profile",
          //   svgSrc: "assets/icons/menu_profile.svg",
          //   press: () {},
          // ),
          // DrawerListTile(
          //   title: "Settings",
          //   svgSrc: "assets/icons/menu_setting.svg",
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatefulWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
    required this.items,
    required this.height,
  }) : super(key: key);

  final String svgSrc;
  final List<PagesName> items;
  final VoidCallback press;
  final double height;
  final Widget title;

  @override
  State<DrawerListTile> createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<DrawerListTile> {
  bool height = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
              onTap: (){ 
                setState(() {
                   height = !height;
                });
              },
              horizontalTitleGap: 0.0,
              leading: SvgPicture.asset(
                widget.svgSrc,
                colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                height: 16,
              ),
              title: widget.title),
          AnimatedContainer(

            height: height? widget.height : 0,
            duration: Duration(milliseconds: 100),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.items.length,
              itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(widget.items[index].name, style: TextStyle(
                      color: Colors.white54,
                      fontSize: 13
              
                    ),)
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

class PagesName{
   final int id;
   final String name;

  PagesName({required this.id, required this.name});
}