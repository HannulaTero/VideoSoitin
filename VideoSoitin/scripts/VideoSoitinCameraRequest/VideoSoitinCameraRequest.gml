

/**
* Wraps camera requesting in GX platform.
* 
* Information about constraint objects can read here: 
* https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices/getUserMedia#constraints
* 
* @param {Struct}   _contraints "Constraint object"
*/ 
function VideoSoitinCameraRequest(_contraints) constructor
{
  //=============================================================
  // 
  #region PUBLIC : STATIC METHODS.
  
  
  static Remove           = __VideoSoitinCameraRequest__Remove;
  static SetContext       = __VideoSoitinCameraRequest__SetContext;
  static SetLabel         = __VideoSoitinCameraRequest__SetLabel;
  static SetOnRemove      = __VideoSoitinCameraRequest__SetOnRemove;
  static SetOnTimeOut     = __VideoSoitinCameraRequest__SetOnTimeOut;
  static SetOnVideoStart  = __VideoSoitinCameraRequest__SetOnVideoStart;
  static SetOnVideoEnd    = __VideoSoitinCameraRequest__SetOnVideoEnd;
  static SetTimeOut       = __VideoSoitinCameraRequest__SetTimeOut;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : STRUCT INSTANCE VARIABLES.
  
  
  // For identiying the listener.
  // @ignore
  self.label = __VideoSoitin_GenerateLabel(self);
  
  
  // User-defined context, which is fed as parameter.
  // @ignore
  self.context = { };
  
  
  // Reference to timesource, used to time-out the listener.
  // @ignore 
  self.timeOut = undefined;
  
  
  // Flag whether this has been removed already.
  // @ignore
  self.isRemoved = false;
  
  
  // Video event listener.
  // @ignore
  self.listener = new VideoSoitinListener(); 
    
    
  // Executed when listener is removed.
  // @ignore
  self.OnRemove = VideoSoitin_SignatureCallback;
    
    
  // Executed whenever video playback has timed out.
  // @ignore
  self.OnTimeOut = VideoSoitin_SignatureCallback;
    
    
  // Executed for whenever video ends.
  // @ignore
  self.OnVideoEnd = VideoSoitin_SignatureCallback;
    
    
  // Executed for whenever video starts.
  // @ignore
  self.OnVideoStart = VideoSoitin_SignatureCallback;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : HANDLE CONSTRUCTING.
  
  
  // Open camera feed.
  if (video_get_status() == video_status_closed)
  {
    video_open(json_stringify(_contraints));
  }
  else
  {
    show_debug_message("[VideoSoitin] Video-feed already exists.");
  }
  
  
  // Define the listener.
  self.listener.SetLabel("Camera Request")
    .SetContext(self)
    .SetOnVideoEnd(function(_context) 
    { 
      _context.OnVideoEnd(); 
    })
    .SetOnVideoStart(function(_context) 
    { 
      _context.OnVideoStart(); 
      _context.SetTimeOut(undefined);
    });
  
  
  
  #endregion
  // 
  //=============================================================
}