

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
  static SetCallback      = __VideoSoitinCameraRequest__SetCallback;
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
    
    
  // Called either way whenever request id fires async event.
  // -> Listenere is fired before requests.
  // @ignore
  self.Callback = VideoSoitin_SignatureCallback;
    
    
  // Executed when listener is removed.
  // @ignore
  self.OnRemove = VideoSoitin_SignatureCallback;
    
    
  // Executed for given video status.
  // @ignore
  self.OnStatusClosed = VideoSoitin_SignatureCallback;
    
    
  // Executed for given video status.
  // @ignore
  self.OnStatusPaused = VideoSoitin_SignatureCallback;
    
    
  // Executed for given video status.
  // @ignore
  self.OnStatusPlaying = VideoSoitin_SignatureCallback;
    
    
  // Executed for given video status.
  // @ignore
  self.OnStatusPreparing = VideoSoitin_SignatureCallback;
    
    
  // Executed whenever video playback has timed out.
  // @ignore
  self.OnTimeOut = VideoSoitin_SignatureCallback;
    
    
  // Executed for whenever video ends.
  // @ignore
  self.OnVideoEnd = VideoSoitin_SignatureCallback;
    
    
  // Executed for whenever video starts.
  // @ignore
  self.OnVideoEnd = VideoSoitin_SignatureCallback;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : HANDLE CONSTRUCTING.
  
  
  // Open camera feed.
  video_open(json_stringify(_contraints));
  
  
  #endregion
  // 
  //=============================================================
}