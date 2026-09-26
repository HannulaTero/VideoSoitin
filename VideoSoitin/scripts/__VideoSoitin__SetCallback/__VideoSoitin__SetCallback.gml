


/**
* Set the Callback-function.
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitin}
*/ 
function __VideoSoitin__SetCallback(_Callback=VideoSoitin_SignatureCallback)
{
  self.Callback = _Callback;
  return self;
}