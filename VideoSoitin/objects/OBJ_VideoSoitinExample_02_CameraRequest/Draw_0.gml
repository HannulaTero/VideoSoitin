/// @desc DRAW THE RESULT.


if (surface_exists(self.surface) == false)
{
  self.surface = surface_create(640, 360);
}


draw_surface(self.surface, 128, 160);