package utils
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class MonsterManager
	{
		public var data:Object;
		
		
		
		public function getMonsterObj(id:String):Object{
			return data[id];
		}
		
		//获取单例
		private static var ins:MonsterManager;
		public static function getIns():MonsterManager{
			if(!MonsterManager.ins){
				MonsterManager.ins=new MonsterManager();
			}
			return MonsterManager.ins;
		}
	}
}