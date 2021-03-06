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
package com.panozona.player.manager.data.actions {
	
	/**
	 * Stores function description: function owner, function name and function arguments.
	 * Owner can be either SaladoPlayer or some module.
	 * For instance: owner.name(arguments)
	 */
	public class FunctionData {
		
		public var args:Array = new Array();
		
		protected var _owner:String;
		protected var _name:String;
		
		public function FunctionData(owner:String, name:String){
			_owner = owner;
			_name = name;
		}
		
		public function get owner():String {
			return _owner;
		}
		
		public function get name():String {
			return _name;
		}
	}
}