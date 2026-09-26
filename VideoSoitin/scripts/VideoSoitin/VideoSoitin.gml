

/**
* Creates video playback listener -handle.
*/ 
function VideoSoitin() constructor
{
  //=============================================================
  // 
  #region PUBLIC : STATIC METHODS.
  
  
  static Remove               = __VideoSoitin__Remove;
  static SetCallback          = __VideoSoitin__SetCallback;
  static SetContext           = __VideoSoitin__SetContext;
  static SetLabel             = __VideoSoitin__SetLabel;
  static SetOnError           = __VideoSoitin__SetOnError;
  static SetOnRemove          = __VideoSoitin__SetOnRemove;
  static SetOnStatusClosed    = __VideoSoitin__SetOnStatusClosed;
  static SetOnStatusPaused    = __VideoSoitin__SetOnStatusPaused;
  static SetOnStatusPlaying   = __VideoSoitin__SetOnStatusPlaying;
  static SetOnStatusPreparing = __VideoSoitin__SetOnStatusPreparing;
  static SetOnTimeOut         = __VideoSoitin__SetOnTimeOut;
  static SetOnVideoEnd        = __VideoSoitin__SetOnVideoEnd;
  static SetOnVideoStart      = __VideoSoitin__SetOnVideoStart;
  static SetTimeOut           = __VideoSoitin__SetTimeOut;
  
  
  
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
    
    
  // Called either way whenever request id fires async event.
  // -> Listenere is fired before requests.
  // @ignore
  self.Callback = VideoSoitin_SignatureCallback;
    
    
  // Executed whenever error is met with video playback.
  // @ignore
  self.OnError = VideoSoitin_SignatureCallback;
    
    
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
  
  
  // Add self to the listeners..
  var _context = __VideoSoitin_Context();
  var _listeners = _context.listeners;
  array_push(_listeners, self);
  
  
  #endregion
  // 
  //=============================================================
}