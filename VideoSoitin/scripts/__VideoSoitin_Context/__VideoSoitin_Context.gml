

/**
* Returns global context for VideoSoitin.
* This is also used to keep it as singleton.
* 
* @ignore PRIVATE
*/ 
function __VideoSoitin_Context()
{
  static context = new __VideoSoitin();  
  return context;
}