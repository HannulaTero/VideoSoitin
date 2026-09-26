/// @desc ENSURE ONLY ONE EXISTS.
/*
  Because the manager-instance may be destroyed accidently by user,
  it shouldn't contain any data which may be lost. 
  That's why the context is separately handled.
*/

if (instance_number(object_index) > 1)
{
  instance_destroy();
  exit;
}


// Try to be first things to draw.
self.depth = 10_000;


// For convenience / faster access.
self.context = __VideoSoitin_Context();


// For convenience / faster access.
self.listeners = self.context.listeners;


// Helper reference to hold latest RGBA video data.
// -> This is used to pass information in array_foreach.
self.surface = undefined;
