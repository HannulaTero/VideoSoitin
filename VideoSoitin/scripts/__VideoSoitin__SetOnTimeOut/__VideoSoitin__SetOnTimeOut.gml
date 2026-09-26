


/**
* Set the Callback-function, which is called when listener has been timed out.
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitin}
*/ 
function __VideoSoitin__SetOnTimeOut(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnTimeOut = _Callback;
  return self;
}