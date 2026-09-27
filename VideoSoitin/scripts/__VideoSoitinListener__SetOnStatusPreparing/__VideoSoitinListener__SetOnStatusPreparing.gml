


/**
* Set the Callback-function, which is called when video-status is preparing.
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitinListener}
*/ 
function __VideoSoitinListener__SetOnStatusPreparing(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnStatusPreparing = _Callback;
  return self;
}