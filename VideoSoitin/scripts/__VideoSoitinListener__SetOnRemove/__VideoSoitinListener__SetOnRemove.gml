


/**
* Set the callback-function, which is called when listener is removed.
* Removal can happen by user or timing out.
* 
* @context VideoSoitinListener
* @returns {Struct.VideoSoitinListener}
*/ 
function __VideoSoitinListener__SetOnRemove(_Callback=VideoSoitin_SignatureCallback)
{
  self.OnRemove = _Callback;
  return self;
}