package com {
	
	import flash.display.MovieClip;
	
	
	public class LevelItem extends MovieClip {
		//关卡
		public var level:int;
		
		
		
		public function setTxt(str:String):void {
			this["tf"].text=str;
		}
		
		public function LevelItem() {
			// constructor code
			this.mouseChildren=false;
		}
	}
	
}
