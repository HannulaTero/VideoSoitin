


/**
* Set the Callback-function, which is called when video-status is closed.
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitin}
*/ 
function __VideoSoitin__SetOnStatusClosed(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnStatusClosed = _Callback;
  return self;
}