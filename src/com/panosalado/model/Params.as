/*
Copyright 2010 Zephyr Renner.

This file is part of PanoSalado.

PanoSalado is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

PanoSalado is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with PanoSalado.  If not, see <http://www.gnu.org/licenses/>.
*/
package com.panosalado.model
{

import com.panosalado.model.ViewData;

/**
* Params object used by PanoSalado.loadPanorama(params:Params) to specify the path for the new panorama,
* as well as any view data values to use for it.  Unspecified values will be untouched.
*/
public class Params
{
	public var path:String;
	public var pan:Number;
	public var tilt:Number;
	public var fov:Number;
	public var tierThreshold:Number;

	public var boundsWidth:Number;
	public var boundsHeight:Number;
	
	public var minFov:Number;
 	public var maxFov:Number;
 	public var minPan:Number;
 	public var maxPan:Number;
 	public var minTilt:Number;
 	public var maxTilt:Number;
	public var minVerticalFov:Number;
	public var maxVerticalFov:Number;

	public function Params(
		path:String, 
		pan:Number = NaN,
		tilt:Number = NaN,
		fov:Number = NaN
	) {
		this.path = path;
		this.pan = pan;
		this.tilt = tilt;
		this.fov = fov;
		
		this.minVerticalFov = NaN;
		this.maxVerticalFov = NaN;
	}
	
	public function clone():Params {
		var result:Params = new Params(path, pan, tilt, fov); 
		result.tierThreshold = tierThreshold;
		result.boundsWidth = boundsWidth;
		result.boundsHeight = boundsHeight;
		result.minFov = minFov;
		result.maxFov = maxFov;
		result.minPan = minPan;
		result.maxPan = maxPan;
		result.minTilt = minTilt;
		result.maxTilt = maxTilt;
		result.minVerticalFov = minVerticalFov;
		result.maxVerticalFov = maxVerticalFov;
		return result;
	}
	
	/**
	* @private
	*/
	public function copyInto(viewData:ViewData):ViewData {
		if (path != null) viewData.path = path;
		
		var secondaryViewData:DependentViewData = viewData.secondaryViewData;
		if (!isNaN(pan)) secondaryViewData.pan = viewData.pan - pan;
		if (!isNaN(tilt)) secondaryViewData.tilt = viewData.tilt - tilt;
		if (!isNaN(fov)) secondaryViewData.fieldOfView = viewData.fieldOfView - fov;
		//if (!isNaN(tierThreshold)) secondaryViewData.tierThreshold = viewData.tierThreshold - tierThreshold;
		
		if (!isNaN(pan)) viewData.pan = pan;
		if (!isNaN(tilt)) viewData.tilt = tilt;
		if (!isNaN(fov)) viewData.fieldOfView = fov;
		if (!isNaN(tierThreshold)) viewData.tierThreshold = tierThreshold;
	
		if (!isNaN(boundsWidth)) viewData.boundsWidth = boundsWidth;
		if (!isNaN(boundsHeight)) viewData.boundsHeight = boundsHeight;
		
		if (!isNaN(minFov)) viewData.minimumFieldOfView = minFov;
		if (!isNaN(maxFov)) viewData.maximumFieldOfView = maxFov;
		if (!isNaN(minPan)) viewData.minimumPan = minPan;
		if (!isNaN(maxPan)) viewData.maximumPan = maxPan;
		if (!isNaN(minTilt)) viewData.minimumTilt = minTilt;
		if (!isNaN(maxTilt)) viewData.maximumTilt = maxTilt;
		
		if (!isNaN(minVerticalFov)) viewData.minimumVerticalFieldOfView = minVerticalFov;
		if (!isNaN(maxVerticalFov)) viewData.maximumVerticalFieldOfView = maxVerticalFov;
		return viewData;
	}
}
}