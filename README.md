---
# VIDEOSOITIN
<img width="128" height="128" align="right" alt="icon-VideoSoitin-Prefab" src="https://github.com/user-attachments/assets/4546600d-3cb3-419c-9d44-ee210cefc31d" />

#### Video playback listener.

#### Tero Hannula 27.9.2026

---

### GENERAL INFORMATION

---
https://github.com/HannulaTero/VideoSoitin

https://terohannula.itch.io/videosoitin

VideoSoitin handles listening video playback, and calling callbacks at right moments.
It also handles YUV-video conversion for you, so surface is always RGBA videodata.
You can make several video playback listeners, and define their callbacks for different status etc.

Function callbacks always follow function signature,
which is shown in `VideoSoitin_SignatureCallback`.
First argument is "context", the data user has given for the listener.
Second argument is "surface", video playback result. Only available in `OnStatusPlaying`-callback.
-> Ownership/management of this surface is within VideoSoitin, you don't need to manually remove it.

Within `OnStatusPlaying`-callback, you can copy the given surface to another surface,
alternatively you can just store the reference, but then remember the ownership.
There is utility function `VideoSoitin_CopyCroppedResize` to copy over surface,
which retains the aspect ratio, but fills the destination surface.

VideoSoitin -handles supports fluent interface, 
therefore you can chain method calls to set properties.
For example `handle.SetLabel(...).SetOnStatusPlaying(...).SetOnRemove(...)`

Camera request is wrapper for waiting opening the camera (only for GX export).
Mostly for allowing timing out request, and redoing that if required.

---

### HOW TO USE EXAMPLE

---
```gml

// Start video play.
video_open("example.mp4");

// Storing surface indexes.
self.playback = undefined;
self.surface = undefined;

// Make new video-playback listener.
self.videoListener = new VideoSoitin()
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
    // Either store the surface reference to use elsewhere.
    _context.playback = _playback;
    
    // Or optionally copy it expliclity.
    if (surface_exists(_context.surface) == false)
    {
      _context.surface = surface_create(320, 180);
    }
    VideoSoitin_CopyCroppedResize(_context.surface, _playback);
  });
  
```
---
