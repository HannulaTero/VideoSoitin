


/**
* Set the Callback-function, which is called when video has started.
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitinListener}
*/ 
function __VideoSoitinListener__SetOnVideoStart(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnVideoStart = _Callback;
  return self;
}