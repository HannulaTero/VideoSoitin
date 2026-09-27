/// @desc INITIALIZE.

self.surface = undefined;


// Try opening the camera feed.
self.cameraRequest = new VideoSoitinCameraRequest({
  audio : false,
  video : {
    facingMode : "environment",
    height : 360,
  }, 
})
  .SetLabel("Camera Request")
  .SetContext(self)
  .SetTimeOut(10.0)
  .SetOnTimeOut(function(_context)
  {
    show_debug_message("Timed out!");
    instance_destroy(_context);
  })
  .SetOnVideoEnd(function(_context)
  {
    show_debug_message("Camera feed ended!");
    instance_destroy(_context);
  })
  .SetOnVideoStart(function(_context)
  {
    show_debug_message("Camera feed started!");
  });


// Practically same things as previous example.
self.videoListener = new VideoSoitinListener()
  .SetLabel("Camera Video-Feed Playback")
  .SetContext(self)
  .SetOnVideoStart(function(_context)
  {
    show_debug_message("Camera Video-Feed Start.");
  })
  .SetOnVideoEnd(function(_context)
  {
    show_debug_message("Camera Video-Feed End.");
  })
  .SetOnStatusPlaying(function(_context, _playback)
  {
    _context.surface = _playback;
  });
  