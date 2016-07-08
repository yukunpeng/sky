package utils
{
	import com.Hero;
	
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class MapManager
	{
		public var data:Object;
		
		//获取最高关卡
		public function getMaxLevel():int{
			return this.data.length-1;
		}
		//获取关卡中最高怪物pos
		public function getMaxMonsterPos(level:int):int{
			return this.data[level]["monsterArr"].length-1;
		}
		
		//根据当前关卡获取怪物列表
		public function getMonsterArr():Array{
			return data[Hero.getIns().curLevel]["monsterArr"];
		}
		
		//获取所有的地图列表
		public function getMapArr():Array{
			var arr:Array=[];
			for(var i:int=0;i<data.length;i++){
				arr.push(data[i]);
			}
			
			return arr;
		}
		
		//获取单例
		private static var ins:MapManager;
		public static function getIns():MapManager{
			if(!MapManager.ins){
				MapManager.ins=new MapManager();
			}
			return MapManager.ins;
		}
	}
}