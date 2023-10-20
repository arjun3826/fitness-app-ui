import 'package:fitness/screen/review/review_screen.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

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
      backgroundColor: const Color(0xffF2F6F9),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text(
          "Training",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            position: PopupMenuPosition.under,
            icon: const Icon(Icons.more_vert),
            onSelected: (newValue) {
              // add this property
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 0,
                child: Row(
                  children: [
                    Image.asset("assets/icons/feedback.png"),
                    const SizedBox(width: 30),
                    const Text("Feedback")
                  ],
                ),
              ),
              PopupMenuItem(
                value: 1,
                child: Row(
                  children: [
                    Image.asset("assets/icons/help.png"),
                    const SizedBox(width: 30),
                    const Text("Help")
                  ],
                ),
              ),
            ],
          ),
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
                            return const CircularProgressIndicator();
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
                          ? const Icon(
                              Icons.play_arrow,
                              color: Color(0xff7047EB),
                            )
                          : const SizedBox.shrink(),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Deep Amrap Burnet",
                    style: TextStyle(fontSize: 16),
                  ),
                  icon_done("125kcl", "120min")
                ],
              ),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ReviewScreen()));
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 11, top: 11, right: 11, bottom: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(
                            fontSize: 16,
                          ),
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
              const SizedBox(height: 35),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recommeded",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )),
              const SizedBox(height: 20),
              recommended("Deep Butt Sculp",
                  const AssetImage("assets/images/girl_workout.png")),
              const SizedBox(height: 14),
              recommended("Lower Body Amrap",
                  const AssetImage("assets/images/back.png")),
              const SizedBox(height: 14),
              recommended(
                "Flat Abs Barrer",
                const AssetImage("assets/images/abs.png"),
              ),
              const SizedBox(height: 14),
              recommended("Flat Abs Barrer",
                  const AssetImage("assets/images/strength.png")),
              const SizedBox(height: 14),
              recommended("Deep Butt Sculp",
                  const AssetImage("assets/images/Yoga.png")),
              const SizedBox(height: 14),
            ],
          ),
        ),
      ),
    );
  }
}

icon_done(String text, String type) {
  return Row(
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
      const SizedBox(width: 10),
      Row(
        children: [
          const Icon(
            Icons.watch_later_rounded,
            color: Color(0xff1FA755),
            size: 17,
          ),
          const SizedBox(width: 5),
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
      padding: const EdgeInsets.only(left: 8, top: 8, right: 11, bottom: 8),
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
          const SizedBox(width: 26),
          Column(
            children: [
              Text(text),
              const SizedBox(height: 5),
              Row(
                children: [icon_done("125kcl", "120min")],
              )
            ],
          ),
          const Spacer(),
          const Text("start"),
        ],
      ),
    ),
  );
}
