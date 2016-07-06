package
{
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	
	import panels.NickPanel;
	
	import utils.LoadManager;
	import utils.MapManager;
	import utils.MonsterManager;
	
	public class Main extends Sprite
	{
		public static var ins:Main;
		
		public function Main(){
			Main.ins=this;
			stage.scaleMode=StageScaleMode.SHOW_ALL;
			//加载地图
			LoadManager.loadTxt("asset/mapData.json",loadMapCom);
		}
		
		//加载地图数据
		private function loadMapCom(obj:Object):void{
			MapManager.getIns().data=obj;
			//加载怪
			LoadManager.loadTxt("asset/monsterData.json",loadMonsterCom);
		}
		
		//加载怪数据
		private function loadMonsterCom(obj:Object):void{
			MonsterManager.getIns().data=obj;
			enterGame();
		}
		
		//进入游戏
		private function enterGame():void{
			addChild(NickPanel.getIns());
		}
	}
}