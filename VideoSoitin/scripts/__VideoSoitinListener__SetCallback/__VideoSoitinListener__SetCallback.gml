


/**
* Set the Callback-function.
* 
* @context VideoSoitinListener
* @returns {Struct.VideoSoitinListener}
*/ 
function __VideoSoitinListener__SetCallback(_Callback=VideoSoitin_SignatureCallback)
{
  self.Callback = _Callback;
  return self;
}