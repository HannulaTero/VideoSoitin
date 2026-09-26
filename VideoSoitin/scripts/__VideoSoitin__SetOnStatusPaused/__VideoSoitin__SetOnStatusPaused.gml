


/**
* Set the Callback-function, which is called when video-status is paused.
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitin}
*/ 
function __VideoSoitin__SetOnStatusPaused(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnStatusPaused = _Callback;
  return self;
}