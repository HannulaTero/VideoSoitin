


/**
* Set the Callback-function, which is called when video-status is paused.
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitinListener}
*/ 
function __VideoSoitinListener__SetOnStatusPaused(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnStatusPaused = _Callback;
  return self;
}