package utils
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class LoadManager
	{
		private static var fun:Function;
		private static var loader:URLLoader;
		
		
		public static function loadTxt(url:String,fun:Function):void{
			LoadManager.fun=fun;
			if(!LoadManager.loader){
				LoadManager.loader=new URLLoader();
				LoadManager.loader.addEventListener(Event.COMPLETE,LoadManager.loadCom);
			}
			LoadManager.loader.load(new URLRequest(url));
		}
		
		public static function loadCom(e:Event):void{
			var data:String=LoadManager.loader.data;
			LoadManager.fun(JSON.parse(data));
		}
	}
}