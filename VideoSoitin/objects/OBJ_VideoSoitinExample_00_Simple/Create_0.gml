/// @desc INITIALIZE.


// Own surface.
self.surface = undefined;


// Open the video as normally.
video_open("video_example.mp4");


// Create video playback listener.
self.videoListener = new VideoSoitinListener()


// Define what happens when video is played.
// This copies the playback-surface explicitly to other surface.
// The methods are created in instance, so bound to it (can use "self").
self.videoListener.SetOnStatusPlaying(function(_context, _playback)
{
  // Create target surface if doesn't exist.
  if (surface_exists(self.surface) == false)
  {
    self.surface = surface_create(640, 360);
  }
  
  // Copy over the surface.
  // Commented way doesn't handle the aspect ratio - stretched to fit.
  /*
  surface_set_target(self.surface);
  draw_surface_stretched(_playback, 0, 0, 640, 360);
  surface_reset_target();
  */
  
  
  // Alternatively, you may copy suface with resize&crop 
  // using following provided convenience function.
  VideoSoitin_CopyCroppedResize(self.surface, _playback);
});
  