


/**
* 
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitin}
*/ 
function __VideoSoitin__SetOnError(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnError = _Callback;
  return self;
}