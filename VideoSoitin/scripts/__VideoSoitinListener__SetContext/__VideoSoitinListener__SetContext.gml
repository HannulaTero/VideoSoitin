


/**
* Set the context, which is provided as argument in the callbacks.
* 
* @context VideoSoitin
* @param {Any} _context
* @returns {Struct.VideoSoitinListener}
*/ 
function __VideoSoitinListener__SetContext(_context={ })
{
  self.context = _context;
  return self;
}