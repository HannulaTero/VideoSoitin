


/**
* Set the Callback-function, which is called when video-status is closed.
* 
* @context VideoSoitinListener
* @returns {Struct.VideoSoitinListener}
*/ 
function __VideoSoitinListener__SetOnStatusClosed(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnStatusClosed = _Callback;
  return self;
}