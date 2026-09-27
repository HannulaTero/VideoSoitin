/// @desc INITIALIZE.

self.surface = undefined;


// Open the video as normally.
video_open("video_example.mp4");
video_enable_loop(true);


// Create video playback listener.
// You can chain up the method calls.
// Here the playback-surface reference is stored, so it can be used later.
// The playback-surface is managed/ownership is with library 
// -> Therefore you shouldn't try free it yourself.
self.videoListener = new VideoSoitinListener()
  .SetLabel("Video Playback")
  .SetContext(self)
  .SetOnError(function(_context, _playback)
  {
    show_debug_message("Error happened.");
  })
  .SetOnRemove(function(_context, _playback)
  {
    show_debug_message("Listener removed.");
  })
  .SetOnVideoStart(function(_context)
  {
    show_debug_message("Video start.");
  })
  .SetOnVideoEnd(function(_context)
  {
    show_debug_message("Video end.");
  })
  .SetOnStatusClosed(function(_context, _playback)
  {
    show_debug_message("Status closed.");
  })
  .SetOnStatusPaused(function(_context, _playback)
  {
    show_debug_message("Status paused.");
  })
  .SetOnStatusPreparing(function(_context, _playback)
  {
    show_debug_message("Status preparing.");
  })
  .SetOnStatusPlaying(function(_context, _playback)
  {
    show_debug_message("Status playing.");
    _context.surface = _playback;
  });
  