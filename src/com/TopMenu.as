package com {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	import panels.PanelBase;
	
	
	public class TopMenu extends PanelBase {
		
		
		public function TopMenu() {
			coinChange(null);
			nickChange(null);
			expChange(null);
			gradeChange(null);
			// constructor code
			Hero.getIns().addEventListener(Hero.coinNotify,coinChange);
			Hero.getIns().addEventListener(Hero.nickNotify,nickChange);
			Hero.getIns().addEventListener(Hero.expNotify,expChange);
			Hero.getIns().addEventListener(Hero.gradeNotify,gradeChange);
		}
		
		//等级改变
		private function gradeChange(e:Event):void{
			this["gradeTf"].text=Hero.getIns().curGrade+1;
		}
		//金币改变
		private function coinChange(e:Event):void{
			this["coinTf"].text=Hero.getIns().coin;
		}
		//昵称改变
		private function nickChange(e:Event):void{
			this["nickTf"].text=Hero.getIns().nick;
		}
		//经验改变
		private function expChange(e:Event):void{
			var needExp:int=Hero.getIns().gradeExpArr[Hero.getIns().curGrade];
			this["expTf"].text=Hero.getIns().exp+"/"+needExp;
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
