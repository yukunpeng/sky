package panels {
	
	import com.Hero;
	import com.LevelItem;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	import utils.MapManager;

	
	
	public class Risk1Panel extends PanelBase {
		
		public function resetData():void{
			var mapArr:Array=MapManager.getIns().getMapArr();
			hideAllLevel();
			for(var i:int=0;i<mapArr.length;i++){
				if(i>Hero.getIns().unlockLevel){
					return;
				}
				var levelItem:LevelItem=this["level"+i] as LevelItem;
				levelItem.visible=true;
				levelItem.level=i;
				levelItem.setTxt(mapArr[i]["levelName"]);
			}
		}
		
		public function Risk1Panel() {
			// constructor code
		}
		
		private function hideAllLevel():void{
			for(var i:int=0;i<10;i++){
				this["level"+i].visible=false;
			}
		}
		
		override protected function onHanel(e:MouseEvent):void
		{
			switch(e.target){
				case this["backTf"]:
					Main.ins.removeChild(this);
					Main.ins.addChildAt(HomePanel.getIns(),0);
					break;
				case this["level0"]:
				case this["level1"]:
				case this["level2"]:
				case this["level3"]:
				case this["level4"]:
				case this["level5"]:
				case this["level6"]:
				case this["level7"]:
				case this["level8"]:
				case this["level9"]:
					//设置当前进行的关卡
					var levelItem:LevelItem=e.target as LevelItem;
					Hero.getIns().curLevel=levelItem.level;
					//重置关卡数据
					Risk2Panel.getIns().resetData();
					//切换页面
					Main.ins.removeChild(this);
					Main.ins.addChildAt(Risk2Panel.getIns(),0);
					break;
			}
		}
		//获取单例
		private static var ins:Risk1Panel;
		public static function getIns():Risk1Panel{
			if(!Risk1Panel.ins){
				Risk1Panel.ins=new Risk1Panel();
			}
			return Risk1Panel.ins;
		}

	}
	
}
