


/**
* Set the Callback-function, which is called when video hase ended.
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitin}
*/ 
function __VideoSoitin__SetOnVideoEnd(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnVideoEnd = _Callback;
  return self;
}