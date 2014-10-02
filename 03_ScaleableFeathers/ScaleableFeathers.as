﻿package  {
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import starling.core.Starling;	
	import feathers.system.DeviceCapabilities;
	
	public class ScaleableFeathers extends MovieClip {
		private var starling:Starling;
		public function ScaleableFeathers() {
			this.stage.align = StageAlign.TOP_LEFT;
			this.stage.scaleMode.NO_SCALE;
			DeviceCapabilities.dpi = 432;
			DeviceCapabilities.screenPixelWidth = 1080;
			DeviceCapabilities.screenPixelHeight = 1920;
			this.stage.addEventListener(Event.RESIZE, stageResized);
			Starling.handleLostContext = true;
			starling = new Starling(Main,this.stage);
			starling.start();
		}
		private function
	}
	
}
