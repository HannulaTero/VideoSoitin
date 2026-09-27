


/**
* Set the timeout period, after it will be removed.
* Setting timeout to undefined will disable timeout.
* 
* @context VideoSoitinCameraRequest
* @returns {Undefined}
*/ 
function __VideoSoitinCameraRequest__SetTimeOut(_seconds=undefined)
{
  if (self.timeOut != undefined)
  {
    call_cancel(self.timeOut);
  }
  
  
  if (_seconds == undefined)
  {
    self.timeOut = undefined;
    return self;
  }
  
  
  self.timeOut = call_later(_seconds, time_source_units_seconds, function()
  {
    self.OnTimeOut(self.context, undefined);
    self.Remove();
  });
  
  
  return self;
}