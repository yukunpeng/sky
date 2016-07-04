package com
{
	import flash.events.Event;
	import flash.events.EventDispatcher;

	public class Hero extends EventDispatcher{
		public static var coinNotify:String="coinNotify";
		public static var nickNotify:String="nickNotify";
		
		private var _nick:String;
		private var _coin:int=222;
		public var attack:int=10;//攻击
		public var defens:int=3;//防御
		
		public var life:int=30;//当前生命
		public var totalLife:int=100;//总生命
		
		
		//伤害=敌人攻击-英雄防御
		
		
		public function Hero(){
		}
		
		//读写nick
		public function set nick(value:String):void{
			_nick=value;
			dispatchEvent(new Event(Hero.nickNotify));
		}
		public function get nick():String{
			return _nick;
		}
		//读写coin
		public function set coin(value:int):void{
			_coin=value;
			dispatchEvent(new Event(Hero.coinNotify));
		}
		public function get coin():int{
			return _coin;
		}
		//获取单例
		private static var ins:Hero;
		public static function getIns():Hero{
			if(!Hero.ins){
				Hero.ins=new Hero();
			}
			return Hero.ins;
		}
	}
}