/// @desc DRAW THE RESULT.

draw_text(64, 64, "Look the source code of example.");


if (surface_exists(self.surface) == false)
{
  exit;
}


draw_surface_stretched(self.surface, 128, 128, 640, 360);