/// @desc DRAW THE RESULT.

draw_text(64, 64, "Watch example source to see how to use.");


if (surface_exists(self.surface) == false)
{
  exit;
}


draw_surface_stretched(self.surface, 128, 128, 640, 360);