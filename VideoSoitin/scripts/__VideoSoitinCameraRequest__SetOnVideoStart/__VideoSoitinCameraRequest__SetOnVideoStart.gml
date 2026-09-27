


/**
* Set the Callback-function, which is called when camera video-feed has started.
* 
* @context VideoSoitinCameraRequest
* @returns {Undefined}
*/ 
function __VideoSoitinCameraRequest__SetOnVideoStart(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnVideoStart = _Callback;
  return self;
}