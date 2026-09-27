


/**
* 
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitinListener}
*/ 
function __VideoSoitinListener__SetOnError(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnError = _Callback;
  return self;
}