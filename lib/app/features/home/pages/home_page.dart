import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.sort,
              ),
              iconSize: 32,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.g_mobiledata),
              iconSize: 48,
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: const HomeBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Treningi',
                    style: TextStyle(fontSize: 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 89.0),
                    child: IconButton(
                      icon: const Icon(Icons.filter_alt),
                      iconSize: 36,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: IconButton(
                      icon: const FaIcon(FontAwesomeIcons.sliders),
                      iconSize: 36,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView(
                  children: const [
                    WorkTile(),
                    WorkTile(),
                    WorkTile(),
                    WorkTile(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WorkTile extends StatelessWidget {
  const WorkTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.grey,
              width: 5,
            )),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: 100,
                child: Row(children: const [
                  Text(
                    'Push',
                    style: TextStyle(fontSize: 22),
                  ),
                ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ostatnio: 3 dni temu',
                        style: TextStyle(fontSize: 18),
                      ),
                      Wrap(
                        children: [
                          IconButton(
                            icon: const FaIcon(FontAwesomeIcons.noteSticky),
                            iconSize: 36,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.play,
                            ),
                            iconSize: 36,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
                width: 130,
                child: Row(
                  children: [
                    IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.ellipsis,
                      ),
                      iconSize: 30,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
