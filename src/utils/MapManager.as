package utils
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class MapManager
	{
		public var data:Object;
		
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