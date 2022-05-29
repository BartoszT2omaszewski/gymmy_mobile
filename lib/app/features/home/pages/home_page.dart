import 'package:flutter/material.dart';

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
              icon: const Icon(Icons.format_line_spacing),
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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Treningi',
                    textScaleFactor: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 89.0),
                    child: IconButton(
                      icon: const Icon(Icons.sort),
                      iconSize: 48,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: IconButton(
                      icon: const Icon(Icons.thumbs_up_down),
                      iconSize: 48,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 200,
                child: ListView(
                  children: [
                    Container(
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
                              height: 40,
                              width: 100,
                              child: Row(children: const [
                                Text(
                                  'Push',
                                  style: TextStyle(fontSize: 24),
                                ),
                              ]),
                            ),
                            SizedBox(
                              height: 60,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Ostatnio: 3 dni temu',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Wrap(
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.draw),
                                          iconSize: 40,
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.play_arrow),
                                          iconSize: 40,
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: 50,
                              width: 130,
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.menu),
                                    iconSize: 32,
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
