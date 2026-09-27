

/**
* Copies given surface to another by resizing it, 
* but keeping the original aspect ratio.
* This is good to handle odd aspect ratios between destination and source.
* 
* If the aspect ratios do not match, then source is cropped.
* The cropping aligment can be defined with third argument.
* -> By default it is in middle [ 0.5, 0.5 ]
* 
* @param {Id.Surface}   _dst
* @param {Id.Surface}   _src
* @param {Array<Real>}  _alignment
* @returns {Undefined}
*/ 
function VideoSoitin_CopyCroppedResize(_dst, _src, _alignment=[ 0.5, 0.5 ])
{
  // Sanity checks.
  if (surface_exists(_dst) == false)
  || (surface_exists(_src) == false)
  {
    return undefined;
  }
  
  
  // Get the destination data.
  var _dstW = surface_get_width(_dst);
  var _dstH = surface_get_height(_dst);
  var _dstAspect = (_dstW / _dstH);
  
  
  // Get the source data.
  var _srcW = surface_get_width(_src);
  var _srcH = surface_get_height(_src);
  var _srcAspect = (_srcW / _srcH);
  
  
  // Get the offsets and the final sizes.
  var _w = _dstW;
  var _h = _dstH;
  var _x = 0;
  var _y = 0;
  
  if (_dstAspect >= _srcAspect)
  {
    _h = _srcH * (_dstW / _srcW);
    _y = (_dstH - _h) * _alignment[1];
  }
  else
  {
    _w = _srcW * (_dstH / _srcH);
    _x = (_dstW - _w) * _alignment[0];
  }
  
  
  // Copy over the data.
  gpu_push_state();
  gpu_set_state(__VideoSoitin_GPUState());
  surface_set_target(_dst);
  draw_surface_stretched(_src, _x, _y, _w, _h);
  surface_reset_target();
  gpu_pop_state();
  
  
  return undefined;
}