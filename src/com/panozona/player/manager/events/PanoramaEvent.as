﻿/*
Copyright 2011 Marek Standio.

This file is part of SaladoPlayer.

SaladoPlayer is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published
by the Free Software Foundation, either version 3 of the License,
or (at your option) any later version.

SaladoPlayer is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty
of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with SaladoPlayer. If not, see <http://www.gnu.org/licenses/>.
*/
package com.panozona.player.manager.events {
	
	import flash.events.*;
	
	public class PanoramaEvent extends Event{
		
		public static const PANORAMA_STARTED_LOADING:String = "panoramaStartedLoading";
		public static const PANORAMA_LOADED:String = "panoramaLoaded";
		public static const TRANSITION_ENDED:String = "transitionEnded";
		public static const HOTSPOTS_LOADED:String = "hotspotsLoaded";
		
		public function PanoramaEvent(type:String) {
			super(type);
		}
	}
}