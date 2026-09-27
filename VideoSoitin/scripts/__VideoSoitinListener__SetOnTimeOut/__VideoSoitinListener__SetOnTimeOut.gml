


/**
* Set the Callback-function, which is called when listener has been timed out.
* 
* @context VideoSoitinListener
* @returns {Struct.VideoSoitinListener}
*/ 
function __VideoSoitinListener__SetOnTimeOut(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnTimeOut = _Callback;
  return self;
}