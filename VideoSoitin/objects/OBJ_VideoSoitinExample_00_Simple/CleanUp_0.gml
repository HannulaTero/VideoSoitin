/// @desc CLEAN-UP.

if (video_get_status() != video_status_closed)
{
  video_close();
}

self.videoListener.Remove();

if (surface_exists(self.surface) == true)
{
  surface_free(self.surface);
}