/// @desc DRAW.

draw_text(16, 16, "Read the comments in example source code.");
draw_text(16, 32, "[Q] Simple example.");
draw_text(16, 48, "[W] Fluent Interface.");
draw_text(16, 64, "[E] Camera Request (GX export only).");
draw_text(16, 80, "[DELETE] Quit example.");


// Tell current example:
with(PAR_VideoSoitinExample)
{
  var _name = object_get_name(object_index);
  _name = string_replace(_name, "OBJ_VideoSoitinExample_", "");
  draw_text(32, 112, $"Current example : {_name}");
}