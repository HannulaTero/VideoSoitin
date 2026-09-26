


/**
* Set the Callback-function, which is called when video-status is preparing.
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitin}
*/ 
function __VideoSoitin__SetOnStatusPreparing(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnStatusPreparing = _Callback;
  return self;
}