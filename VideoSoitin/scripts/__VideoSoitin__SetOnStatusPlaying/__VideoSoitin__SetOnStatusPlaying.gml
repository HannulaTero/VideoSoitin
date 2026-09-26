


/**
* Set the Callback-function, which is called when video-status is playing.
* The second argument should be surface contiaing RGBA data of the video.
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitin}
*/ 
function __VideoSoitin__SetOnStatusPlaying(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnStatusPlaying = _Callback;
  return self;
}