

/**
* Creates video playback listener -handle.
*/ 
function VideoSoitinListener() constructor
{
  //=============================================================
  // 
  #region PUBLIC : STATIC METHODS.
  
  
  static Remove               = __VideoSoitinListener__Remove;
  static SetCallback          = __VideoSoitinListener__SetCallback;
  static SetContext           = __VideoSoitinListener__SetContext;
  static SetLabel             = __VideoSoitinListener__SetLabel;
  static SetOnError           = __VideoSoitinListener__SetOnError;
  static SetOnRemove          = __VideoSoitinListener__SetOnRemove;
  static SetOnStatusClosed    = __VideoSoitinListener__SetOnStatusClosed;
  static SetOnStatusPaused    = __VideoSoitinListener__SetOnStatusPaused;
  static SetOnStatusPlaying   = __VideoSoitinListener__SetOnStatusPlaying;
  static SetOnStatusPreparing = __VideoSoitinListener__SetOnStatusPreparing;
  static SetOnTimeOut         = __VideoSoitinListener__SetOnTimeOut;
  static SetOnVideoEnd        = __VideoSoitinListener__SetOnVideoEnd;
  static SetOnVideoStart      = __VideoSoitinListener__SetOnVideoStart;
  static SetTimeOut           = __VideoSoitinListener__SetTimeOut;
  
  
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
    
    
  // Called whenever any other listener related callback is also called.
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
  self.OnVideoStart = VideoSoitin_SignatureCallback;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : HANDLE CONSTRUCTING.
  
  
  // Add self to the listeners..
  var _context = __VideoSoitin_Context();
  var _listeners = _context.listeners;
  array_push(_listeners, self);
  
  
  // Ensure manager exists.
  __VideoSoitin_EnsureManager();
  
  
  #endregion
  // 
  //=============================================================
}