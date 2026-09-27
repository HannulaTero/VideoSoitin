


/**
* Removes the requester.
* 
* @context VideoSoitinCameraRequest
* @returns {Undefined}
*/ 
function __VideoSoitinCameraRequest__Remove()
{
  if (self.isRemoved == true)
  {
    return undefined;
  }
  
  
  self.isRemoved = true;
  self.listener.Remove();
  self.OnRemove(self.context, undefined);
  
  return undefined;
}