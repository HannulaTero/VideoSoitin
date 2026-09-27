/// @desc DRAW THE RESULT.

if (surface_exists(self.surface) == false)
{
  exit;
}


draw_surface_stretched(self.surface, 128, 128, 640, 360);