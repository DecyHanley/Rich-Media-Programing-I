﻿package {
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	
	import starling.core.Starling;
	
	import feathers.system.DeviceCapabilities;

	public class FeathersDC extends Sprite {
		private var starling:Starling;

		public function FeathersDC() {
			this.stage.align = StageAlign.TOP_LEFT;
			this.stage.scaleMode = StageScaleMode.NO_SCALE;

			DeviceCapabilities.dpi = 96;
			DeviceCapabilities.screenPixelWidth = 270;
			DeviceCapabilities.screenPixelHeight = 480;

			this.stage.addEventListener(Event.RESIZE, stageResized);
			Starling.handleLostContext = true;
			starling = new Starling(AppController, this.stage);
			starling.start();
		}
		private function stageResized(e: Event): void {
			starling.stage.stageWidth = this.stage.stageWidth;
			starling.stage.stageHeight = this.stage.stageHeight;
			const viewPort: Rectangle = starling.viewPort;
			viewPort.width = this.stage.stageWidth;
			viewPort.height = this.stage.stageHeight;
			starling.viewPort = viewPort;
		}
		
	}
	
}
