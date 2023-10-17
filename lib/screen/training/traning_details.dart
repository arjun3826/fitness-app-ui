import 'package:fitness/review/review_screen.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';

class TrainingDetailScreen extends StatefulWidget {
  const TrainingDetailScreen({super.key});

  @override
  State<TrainingDetailScreen> createState() => _TrainingDetailScreenState();
}

class _TrainingDetailScreenState extends State<TrainingDetailScreen> {
  bool tongle = true;

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      ),
    );

    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  changePlayback() {
    setState(() {
      tongle = !tongle;
      // If the video is playing, pause it.
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        // If the video is paused, play it.
        _controller.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _controller.value.isPlaying ? Icons.pause : Icons.play_arrow;
    return Scaffold(
      backgroundColor: Color(0xffF2F6F9),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          "Training",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      changePlayback();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23)),
                      clipBehavior: Clip.antiAlias,
                      child: FutureBuilder(
                        future: _initializeVideoPlayerFuture,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            );
                          } else {
                            return CircularProgressIndicator();
                          }
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: tongle ? Colors.white : Colors.transparent),
                    child: IconButton(
                      onPressed: () {
                        changePlayback();
                      },
                      icon: tongle
                          ? Icon(
                              Icons.play_arrow,
                              color: Color(0xff7047EB),
                            )
                          : SizedBox.shrink(),
                    ),
                  )
                ],
              ),
              SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Deep Amrap Burnet",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                  icon_done("125kcl", "120min")
                ],
              ),
              SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ReviewScreen()));
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 11, top: 11, right: 11, bottom: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recommeded",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  )),
              SizedBox(height: 20),
              recommended("Deep Butt Sculp",
                  AssetImage("assets/images/Rectangle 129.png")),
              SizedBox(height: 14),
              recommended("Lower Body Amrap",
                  AssetImage("assets/images/Rectangle 126.png")),
              SizedBox(height: 14),
              recommended(
                "Flat Abs Barrer",
                AssetImage("assets/images/Rectangle 121.png"),
              ),
              SizedBox(height: 14),
              recommended("Flat Abs Barrer",
                  AssetImage("assets/images/Rectangle 121.png")),
              SizedBox(height: 14),
              recommended("Deep Butt Sculp",
                  AssetImage("assets/images/Rectangle 129.png")),
              SizedBox(height: 14),
            ],
          ),
        ),
      ),
    );
  }
}

icon_done(String text, String type) {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          const Icon(
            Icons.local_fire_department,
            color: Color(0xff1FA755),
            size: 17,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
          )
        ],
      ),
      SizedBox(width: 10),
      Row(
        children: [
          const Icon(
            Icons.watch_later_rounded,
            color: Color(0xff1FA755),
            size: 17,
          ),
          SizedBox(width: 5),
          Text(
            type,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
          )
        ],
      ),
    ],
  );
}

recommended(String text, ImageProvider image) {
  return Container(
    width: double.infinity,
    height: 64,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(5)),
    child: Padding(
      padding: EdgeInsets.only(left: 8, top: 8, right: 11, bottom: 8),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            width: 50,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Image(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 26),
          Column(
            children: [
              Text(text),
              SizedBox(height: 5),
              Row(
                children: [icon_done("125kcl", "120min")],
              )
            ],
          ),
          Spacer(),
          Text("start"),
        ],
      ),
    ),
  );
}
