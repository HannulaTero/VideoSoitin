


/**
* Set the Callback-function, which is called when video-status is playing.
* The second argument should be surface contiaing RGBA data of the video.
* 
* @context VideoSoitinListener
* @returns {Struct.VideoSoitinListener}
*/ 
function __VideoSoitinListener__SetOnStatusPlaying(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnStatusPlaying = _Callback;
  return self;
}