


/**
* Set the Callback-function, which is called when camera request has timed out.
* 
* @context VideoSoitinCameraRequest
* @returns {Undefined}
*/ 
function __VideoSoitinCameraRequest__SetOnTimeOut(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnTimeOut = _Callback;
  return self;
}