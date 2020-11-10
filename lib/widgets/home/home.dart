import 'dart:math';

import 'package:audio_story/extension/color.dart';
import 'package:audio_story/extension/dot_indicator.dart';
import 'package:audio_story/model/story_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  PageController _pageController;
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  final _kArrowColor = Colors.black.withOpacity(0.8);

  List<StoryHome> stories = [];

  List<StoryHome> storyHighlight = [
    StoryHighlightModel(
        storyName: "Thánh Gióng - Truyện cổ tích",
        storyType: "Truyện cổ tích",
        storyViews: 1511),
    StoryHighlightModel(
        storyName: "Truyện Kiều",
        storyType: "Truyện cổ tích",
        storyViews: 1511),
    StoryHighlightModel(
        storyName: "Lục Vân Tiên",
        storyType: "Truyện cổ tích",
        storyViews: 1511)
  ];

  List<StoryHome> storyNews = [
    StoryNewModel(
        storyName: "Lọ Lem", storyType: "Truyện cổ tích", storyViews: 1511),
    StoryNewModel(
        storyName: "Bạch Tuyết và bảy chú lùm",
        storyType: "Truyện cổ tích",
        storyViews: 1511),
    StoryNewModel(
        storyName: "Cô bé bán diêm",
        storyType: "Truyện cổ tích",
        storyViews: 1511)
  ];

  List<StoryHome> storyTypes = [
    StoryTypeModel(storyType: "Truyện cổ tích Việt Nam"),
    StoryTypeModel(storyType: "Truyện cổ tích thế giới"),
    StoryTypeModel(storyType: "Truyện cổ tích Việt Nam"),
    StoryTypeModel(storyType: "Truyện cổ tích thế giới"),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    List<StoryHome> highlightHeader = [StoryHighlightHeader()];
    List<StoryHome> newHeader = [StoryViewHeader()];
    List<StoryHome> typeHeader = [StoryTypeHeader()];
    stories = highlightHeader +
        storyHighlight +
        newHeader +
        storyNews +
        typeHeader +
        storyTypes;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _fetchPage(int pageNumber, int pageSize) async {
    await Future.delayed(Duration(seconds: 1));

    return List.generate(pageSize, (index) {
      return {
        'name': 'product $index of page $pageNumber',
        'price': Random().nextInt(100)
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        titleSpacing: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              width: 40,
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  _globalKey.currentState.openDrawer();
                },
              ),
            ),
            Expanded(
                child: Container(
              height: 35,
              margin: EdgeInsets.only(right: 10),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.all(Radius.circular(25)),
                border: Border.all(
                  width: 1,
                  color: HexColor.fromHex("#1E562A"),
                ),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: 'Tìm Kiếm Truyện',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )),
          ],
        ),
        actions: [
          Center(
            child: Container(
              width: 36,
              height: 36,
              margin: EdgeInsets.only(right: 18),
              decoration: new BoxDecoration(
                color: HexColor.fromHex("#FFBE15"),
                borderRadius: new BorderRadius.all(Radius.circular(36)),
                border: Border.all(
                  width: 1,
                  color: HexColor.fromHex("#CE7419"),
                ),
              ),
              child: Center(
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                      width: 1,
                      color: HexColor.fromHex("#FDD920"),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "VIP",
                      style: TextStyle(
                          color: HexColor.fromHex("#CE7419"), fontSize: 12),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 250,
              child: Stack(
                children: [
                  PageView(
                    controller: _pageController,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Image(
                          image: AssetImage("assets/images/home_page.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Image(
                          image: AssetImage("assets/images/home_page.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Image(
                          image: AssetImage("assets/images/home_page.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                  new Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: new Container(
                      // color: Colors.grey[800].withOpacity(0.5),
                      padding: const EdgeInsets.only(top: 0),
                      child: new Center(
                        child: new DotsIndicator(
                          controller: _pageController,
                          color: HexColor.fromHex("#AB3611"),
                          itemCount: 3,
                          onPageSelected: (int page) {
                            _pageController.animateToPage(
                              page,
                              duration: _kDuration,
                              curve: _kCurve,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: new ListView.builder(
                    itemCount: stories.length,
                    itemBuilder: (BuildContext context, int index) {
                      var story = stories[index];
                      if (story is StoryHighlightHeader) {
                        return Container(
                          height: 30,
                          child: Text(
                            "Truyện nổi bật",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        );
                      } else if (story is StoryHighlightModel ||
                          story is StoryNewModel) {
                        String storyName = "";
                        String storyType = "";
                        int storyViews = 0;
                        if (story is StoryHighlightModel) {
                          storyName = story.storyName;
                          storyType = story.storyType;
                          storyViews = story.storyViews;
                        } else if (story is StoryNewModel) {
                          storyName = story.storyName;
                          storyType = story.storyType;
                          storyViews = story.storyViews;
                        }
                        return Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 80,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "0$index",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: HexColor.fromHex("#BF8877")),
                                      ),
                                      Container(
                                        width: 20,
                                        height: 1,
                                        color: HexColor.fromHex("#BF8877"),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 70,
                                  height: 70,
                                  child: Image(
                                    image: AssetImage(
                                        "assets/images/story_image.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "$storyName",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Image(
                                              image: AssetImage(
                                                  "assets/images/trophy_icon.png"))
                                        ],
                                      ),
                                      Text(
                                        "Thể loại: $storyType",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        "Lượt nghe: $storyViews",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ))
                              ],
                            ),
                            Divider(color: HexColor.fromHex("#B5BEB7"))
                          ],
                        );
                      } else if (story is StoryViewHeader ||
                          story is StoryTypeHeader) {
                        String storyMore = "";
                        String storyType = "";
                        if (story is StoryViewHeader) {
                          storyMore = story.textMore;
                          storyType = story.storyNewTitle;
                        } else if (story is StoryTypeHeader) {
                          storyMore = story.textMore;
                          storyType = story.storyNewTitle;
                        }
                        return Container(
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  "$storyMore",
                                  style: TextStyle(
                                      color: HexColor.fromHex("1E562A"),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(height: 50),
                              Text(
                                "$storyType",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        );
                      } else if (story is StoryTypeModel) {
                        String storyType = story.storyType;
                        return Container(
                          height: 40,
                          color: HexColor.fromHex("#D4F1CF").withOpacity(0.34),
                          margin: EdgeInsets.only(top: 2, bottom: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 2,
                                    color: HexColor.fromHex("#1E562A"),
                                    margin: EdgeInsets.only(left: 5, right: 5),
                                  ),
                                  Text(
                                    "$storyType",
                                    style: TextStyle(
                                        color: HexColor.fromHex("1E562A"),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 15,color: Colors.black.withOpacity(0.54),)
                            ],
                          ),
                        );
                      }
                      return null;
                    }),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(List page) {
    return ListView(
        shrinkWrap: true,
        primary: false,
        children: page.map((productInfo) {
          return ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text(productInfo['name']),
            subtitle: Text('price: ${productInfo['price']}USD'),
          );
        }).toList());
  }
}
