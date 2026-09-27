/// @desc INITIALIZE.

self.surface = undefined;


// Open the video as normally.
video_open("video_example.mp4");
video_enable_loop(true);


// Create video playback listener.
// You can chain up the method calls.
// Here the surface reference is stored, so it can be used later.
// The ownership
self.videoListener = new VideoSoitinListener()
  .SetLabel("Video Playback")
  .SetContext(self)
  .SetOnVideoStart(function(_context)
  {
    show_debug_message("Video start.");
  })
  .SetOnVideoEnd(function(_context)
  {
    show_debug_message("Video end.");
  })
  .SetOnStatusPlaying(function(_context, _playback)
  {
    _context.surface = _playback;
  });
  