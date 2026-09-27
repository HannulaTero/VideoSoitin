


/**
* Set the callback-function, which is called when request is removed.
* Removal can happen by user or timing out.
* 
* @context VideoSoitinCameraRequest
* @returns {Undefined}
*/ 
function __VideoSoitinCameraRequest__SetOnRemove(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnRemove = _Callback;
  return self;
}