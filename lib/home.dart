import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String image =
      'https://www.cdc.gov/coronavirus/2019-ncov/images/prevent-getting-sick/323556-Cleaning-Disenfecting-Home-Graphics-wear_mask.png';
  List<String> menus = [
    'Recent',
    'Friends',
    'Newbies',
  ];

  String _selectedMenu = '';
  String get selectedMenu => _selectedMenu;
  set selectedMenu(String selectedMenu) {
    setState(() {
      _selectedMenu = selectedMenu;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'About\n Life',
                      style: GoogleFonts.cookie(
                        textStyle: theme.textTheme.headline5,
                        height: 0.9,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.apps),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 20, left: 5),
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Hello YiBo! 😍',
                      style: theme.textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text('Whtat\'s bodering you?'),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Share anything you want',
                        filled: true,
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Story(image: image, title: 'You', you: true),
                  Story(image: image, title: 'Philp'),
                  Story(image: image, title: 'Clurry'),
                  Story(image: image, title: 'Grace'),
                  Story(image: image, title: 'Raiy'),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey[100]!,
                    width: 0.5,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: menus
                        .map(
                          (e) => Container(
                            margin: EdgeInsets.all(2),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                primary: Theme.of(context).primaryColor,
                                onPrimary: Colors.white,
                              ),
                              onPressed: () {
                                this.selectedMenu = e;
                              },
                              child: Text(e),
                            ),
                          ),
                        )
                        .toList()),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Mark Kyle'),
                              SizedBox(height: 10),
                              Text(
                                '20 secs ago',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey[100]!,
                                width: 0.5,
                                style: BorderStyle.solid,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 20,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 4,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 6),
                                Container(
                                  width: 4,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Row(
                          children: [
                            Icon(Icons.favorite),
                            SizedBox(width: 10),
                            Text('10'),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.grey[100]!,
                                  width: 0.5,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: Text('unfollow'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: Text(
                          'I miss my parents too much and I have not talk to them in 2 years',
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black.withOpacity(0.2),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.circle),
                                  SizedBox(width: 10),
                                  Text('30 Comments')
                                ],
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  const Story(
      {Key? key, required this.image, required this.title, this.you = false})
      : super(key: key);
  final bool you;
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 7),
          height: 60,
          width: 60,
          clipBehavior: Clip.antiAlias,
          decoration: you
              ? BoxDecoration()
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(
                    width: 2,
                    color: Colors.red,
                  ),
                ),
          child: Stack(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.all(5),
                clipBehavior: Clip.antiAlias,
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: !you
                      ? null
                      : LinearGradient(
                          colors: [
                            Color(0xFFF953C6).withOpacity(0.8),
                            Color(0xFFB91D73).withOpacity(0.8),
                          ],
                        ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              if (you)
                Container(
                  alignment: Alignment.center,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_circle_rounded)),
                )
            ],
          ),
        ),
        SizedBox(height: 7),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: you ? Colors.white54 : Colors.white,
              ),
        ),
      ],
    );
  }
}
