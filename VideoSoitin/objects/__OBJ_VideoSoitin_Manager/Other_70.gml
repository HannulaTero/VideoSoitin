/// @desc CAMERA STATUS.


var _type = async_load[? "type"];


if (_type == "video_start")
{
  self.context.videoAccessible = true;
  array_foreach(self.listeners, function(_listener, _index)
  {
    _listener.Callback(_listener.context, undefined);
    _listener.OnVideoStart(_listener.context, undefined);
  });
  exit;
}


if (_type == "video_end")
{
  self.context.videoAccessible = false;
  array_foreach(self.listeners, function(_listener, _index)
  {
    _listener.Callback(_listener.context, undefined);
    _listener.OnVideoEnd(_listener.context, undefined);
  });
  exit;
}