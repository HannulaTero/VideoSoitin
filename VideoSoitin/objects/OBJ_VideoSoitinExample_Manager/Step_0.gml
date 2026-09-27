/// @desc SELECT EXAMPLE.


// Destroy the example.
if (keyboard_check_pressed(vk_delete) == true)
{
  instance_destroy(PAR_VideoSoitinExample);
}


// Start new example only if video has stopped.
if (keyboard_check_pressed(vk_anykey) == true)
&& (video_get_status() == video_status_closed)
{
  switch(keyboard_key)
  {
    case ord("Q") : {
      instance_destroy(PAR_VideoSoitinExample);
      instance_create_depth(0, 0, 0, OBJ_VideoSoitinExample_00_Simple);
      break;
    }
    case ord("W") : {
      instance_destroy(PAR_VideoSoitinExample);
      instance_create_depth(0, 0, 0, OBJ_VideoSoitinExample_01_FluentInterface);
      break;
    }
    case ord("E") : {
      instance_destroy(PAR_VideoSoitinExample);
      instance_create_depth(0, 0, 0, OBJ_VideoSoitinExample_02_CameraRequest);
      break;
    }
  }
}
