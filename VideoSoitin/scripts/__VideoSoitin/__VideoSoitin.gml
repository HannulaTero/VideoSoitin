

/**
* The context for VideoSoitin manager.
* This is singleton, and should be accessed with "__VideoSoitin_Context"
* 
* @ignore PRIVATE
*/ 
function __VideoSoitin() constructor
{
  //=============================================================
  // 
  #region STRUCT INSTANCE VARIABLES.
  
  
  // Whether video is accessible or not.
  self.videoAccessible = false;
  
  
  // Timesource, which ensures manager always exists.
  self.timeSource = undefined;
  
  
  // Helper surface for storing RGBA data for YUV videos.
  self.helperSurface = undefined;
  
  
  // All video playback listeners.
  self.listeners = [ ];
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region HANDLE INITIALIZATING TIME-SOURCE.
  
  
  // This is meant to keep manager alive, no matter what.
  // -> User might accidently deactivate/destroy the manager.
  self.timeSource = call_later(time_source_units_frames, 1, function()
  {
    // If exists, no worries then.
    if (instance_exists(__OBJ_VideoSoitin_Manager) == true)
    {
      return;
    }
      
    // Try reactivating first.
    if (instance_exists(__OBJ_VideoSoitin_Manager) == false)
    {
      instance_activate_object(__OBJ_VideoSoitin_Manager);
    }
      
    // If failed, then create it.
    if (instance_exists(__OBJ_VideoSoitin_Manager) == false)
    {
      instance_create_depth(0, 0, 0, __OBJ_VideoSoitin_Manager);
    }
      
  }, true);
  
  
  #endregion
  // 
  //=============================================================
}