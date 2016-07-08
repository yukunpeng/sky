package com {
	
	import flash.display.MovieClip;
	
	
	public class MonsterItem extends MovieClip {
		//怪物id
		public var id:String;
		//怪物pos
		public var pos:int;
		
		
		
		public function setTxt(str:String):void {
			this["tf"].text=str;
		}
		
		
		public function MonsterItem() {
			// constructor code
			this.mouseChildren=false;
		}
	}
	
}
