


/**
* Set the callback-function, which is called when request is removed.
* Removal can happen by user, timing out.
* 
* @context VideoSoitin
* @returns {Struct.VideoSoitinListener}
*/ 
function __VideoSoitinListener__SetOnRemove(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnRemove = _Callback;
  return self;
}