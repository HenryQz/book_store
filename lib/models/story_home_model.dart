
abstract class StoryHome {

}

abstract class StoryModelHome {
  String _storyName;
  String _storyType;
  int _storyViews;

  String get storyName => _storyName;
  String get storyType => _storyType;
  int get storyViews => _storyViews;

  set storyName(String storyName) {}

}

class StoryHighlightModel extends StoryModelHome implements StoryHome {
  String storyName;
  String storyType;
  int storyViews;

  StoryHighlightModel({String storyName, String storyType, int storyViews}) {
    this.storyName = storyName;
    this.storyType = storyType;
    this.storyViews = storyViews;
  }
}

class StoryHighlightHeader extends StoryHome {
  String text = "Truyện nổi bật";
}

class StoryNewModel extends StoryModelHome implements StoryHome {
  String storyName;
  String storyType;
  int storyViews;

  StoryNewModel({String storyName, String storyType, int storyViews}) {
    this.storyName = storyName;
    this.storyType = storyType;
    this.storyViews = storyViews;
  }
}

class StoryViewHeader extends StoryHome {
  String textMore = "Xem thêm";
  String storyNewTitle = "Truyện mới nhất";
}

class StoryTypeHeader extends StoryHome {
  String textMore = "Xem thêm";
  String storyNewTitle = "Thể loại truyện";
}

class StoryTypeModel extends StoryHome {
  String storyType;
  int type = 0;

  StoryTypeModel({String storyType}) {
    this.storyType = storyType;
  }
}