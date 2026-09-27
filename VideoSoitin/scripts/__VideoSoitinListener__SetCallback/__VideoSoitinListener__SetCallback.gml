


/**
* Set the Callback-function.
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitinListener}
*/ 
function __VideoSoitinListener__SetCallback(_Callback=VideoSoitin_SignatureCallback)
{
  self.Callback = _Callback;
  return self;
}