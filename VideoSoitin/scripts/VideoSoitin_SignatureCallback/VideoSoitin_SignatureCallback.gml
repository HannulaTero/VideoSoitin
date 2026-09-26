

/**
* Method signature for all callbacks for VideoSoitin.
* The first argument is user-provided context, from .SetContext(...)
* The second argument [optional] is RGBA video surface, if one exists.
* -> In practice it's surface when .OnStatusPlaying(...) is called.
* 
* @param {Any}                    _context
* @param {Id.Surface | Undefined} _surface
* @returns {Undefined}
*/ 
function VideoSoitin_SignatureCallback(_context, _surface=undefined)
{
  return undefined;
}