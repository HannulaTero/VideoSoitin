/// @desc DRAW THE VIDEO.


// Sanity check.
if (self.context.videoAccessible == false)
|| (array_length(self.listeners) <= 0)
{
  exit;
}


// Check the video status first.
switch(video_get_status())
{
  case video_status_closed : {
    array_foreach(self.listeners, function(_listener, _index)
    {
      _listener.Callback(_listener.context, undefined);
      _listener.OnStatusClosed(_listener.context, undefined);
    });
    exit;
  }
  
  case video_status_preparing : {
    array_foreach(self.listeners, function(_listener, _index)
    {
      _listener.Callback(_listener.context, undefined);
      _listener.OnStatusPreparing(_listener.context, undefined);
    });
    exit;
  }
  
  case video_status_paused : {
    array_foreach(self.listeners, function(_listener, _index)
    {
      _listener.Callback(_listener.context, undefined);
      _listener.OnStatusPaused(_listener.context, undefined);
    });
    exit;
  }
}


// Video should be playable, try to draw it.
var _data = video_draw();
var _status = _data[0];
var _source = _data[1];


// Met unexpected error while trying to play the video.
if (_status == -1)
|| (surface_exists(_source) == false)
{
  array_foreach(self.listeners, function(_listener, _index)
  {
    _listener.Callback(_listener.context, undefined);
    _listener.OnError(_listener.context, undefined);
  });
  exit;
}


// Handle YUV video, transform to regular RGBA.
if (video_get_format() == video_format_yuv)
{
  // Ensure the chroma exists.
  var _chroma = _data[2];
  if (surface_exists(_chroma) == false)
  {
    array_foreach(self.listeners, function(_listener, _index)
    {
      _listener.Callback(_listener.context, undefined);
      _listener.OnError(_listener.context, undefined);
    });
    exit;
  }
  
  
  // Preparations.
  // Ensure helper surface exists, where RGBA result is stored.
  // This surface is managed by VideoSoitin context.
  var _helper = self.context.helperSurface;
  var _w = surface_get_width(_source);
  var _h = surface_get_height(_source);
  
  if (surface_exists(_helper) == true)
  {
    if (_w != surface_get_width(_helper))
    || (_h != surface_get_height(_helper))
    {
      surface_free(_helper);
    }
  }
  
  if (surface_exists(_helper) == false)
  {
    _helper = surface_create(_w, _h);
    self.context.helperSurface = _helper;
  }
  
  
  // Get the uniforms.
  var _textureChroma = surface_get_texture(_chroma);
  var _FSH_SamplerChroma = shader_get_sampler_index(__SHD_VideoSoitin_YUV, "FSH_SamplerChroma");
  
  
  // Transform YUV to RGBA.
  gpu_push_state();
  gpu_set_state(__VideoSoitin_GPUState());
  shader_set(__SHD_VideoSoitin_YUV);
  texture_set_stage(_FSH_SamplerChroma, _textureChroma);
  surface_set_target(_helper);
  draw_surface_stretched(_source, 0, 0, _w, _h);
  surface_reset_target();
  shader_reset();
  gpu_pop_state();
  
  
  // Update the source to be the helper content.
  _source = _helper;
}


// Now can call playback-methods.s
self.surface = _source;
array_foreach(self.listeners, function(_listener, _index)
{
  _listener.Callback(_listener.context, self.surface);
  _listener.OnStatusPlaying(_listener.context, self.surface);
});






