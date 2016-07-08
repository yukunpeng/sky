package com
{
	import flash.events.Event;
	import flash.events.EventDispatcher;

	public class Enemy extends EventDispatcher{		
		public var nick:String;
		
		public var attack:int=20;//攻击
		public var defens:int=10;//防御
		public var life:int=30;//当前生命
		public var totalLife:int=100;//总生命
		
		public var coin:int=0;//掉落金币
		public var exp:int=0;//掉落经验
				
		
		
		
		public function Enemy(){
		}
		
		//获取单例
		private static var ins:Enemy;
		public static function getIns():Enemy{
			if(!Enemy.ins){
				Enemy.ins=new Enemy();
			}
			return Enemy.ins;
		}
	}
}