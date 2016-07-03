package com {
	
	import flash.display.MovieClip;
	
	import panels.PanelBase;
	
	
	public class TopMenu extends PanelBase {
		
		
		public function TopMenu() {
			// constructor code
			this["nickTf"].text=Hero.getIns().nick;
			this["coinTf"].text=Hero.getIns().coin;
		}
		
		
		
		//获取单例
		private static var ins:TopMenu;
		public static function getIns():TopMenu{
			if(!TopMenu.ins){
				TopMenu.ins=new TopMenu();
			}
			return TopMenu.ins;
		}

	}
	
}
