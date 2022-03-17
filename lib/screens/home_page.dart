import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
                title: Text('Goa', textScaleFactor: 1),
                background: FlutterLogo()),
          ),
          SliverGrid(
            
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1/1.5
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/ne.jpg",
                  ),
                ),
              ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFAB(context),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildHomeBottomButton(context),
            _buildDailyQuestionBottomButton(context),
          ],
        ),
      ),
    );
  }

  FloatingActionButton _buildFAB(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.star_purple500_sharp),
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Container(),
          )),
    );
  }

  IconButton _buildHomeBottomButton(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Container(),
          )),
      icon: const Icon(Icons.home),
    );
  }

  IconButton _buildDailyQuestionBottomButton(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Container(),
          )),
      icon: const Icon(Icons.question_mark),
    );
  }
}
