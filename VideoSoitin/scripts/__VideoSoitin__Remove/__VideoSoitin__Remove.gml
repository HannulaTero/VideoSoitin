


/**
* Removes the video playback -listener.
* 
* @context VideoSoitin
* @returns {Undefined}
*/ 
function __VideoSoitin__Remove()
{
  static context    = __VideoSoitin_Context();
  static listeners  = context.listeners; 
  
  
  if (self.isRemoved == true)
  {
    return undefined;
  }
  
  
  self.isRemoved = true;
  self.OnRemove(self.context, undefined);
  
  
  // Remove itself from the listener-list.
  var _index = array_get_index(listeners, self);
  if (_index >= 0)
  {
    array_delete(listeners, _index, 1);
  }
  
  
  // Check whether was last one, 
  // if so, helper surface is not needed anymore.
  if (surface_exists(context.helperSurface) == true)
  && (array_length(listeners) == 0)
  {
    surface_free(context.helperSurface);
  }
  
  return undefined;
}