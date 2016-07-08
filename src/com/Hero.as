package com
{
	import flash.events.Event;
	import flash.events.EventDispatcher;

	public class Hero extends EventDispatcher{
		public static var coinNotify:String="coinNotify";
		public static var nickNotify:String="nickNotify";
		public static var expNotify:String="expNotify";
		public static var gradeNotify:String="gradeNotify";
		
		private var _nick:String;//昵称
		private var _coin:int=0;//金币
		
		public var attack:int=10;//攻击
		public var defens:int=3;//防御
		
		public var life:int=100;//当前生命
		public var totalLife:int=100;//总生命
		
		public var curLevel:int;//当前进行的关卡，0开始
		public var unlockLevel:int=0;//当前解锁的最高关卡，0开始
		
		public var curMonsterPos:int=0;//当前进行的怪物，0开始
		public var unlockMonsterPos:int=2;//解锁最高关卡的最高怪物，0开始
		
		private var _curGrade:int=0;//英雄当前等级，0开始
		public var gradeExpArr:Array;//升级需要的经验值
		private var _exp:int=0;//英雄当前经验
		
		
		//伤害=敌人攻击-英雄防御
		
		
		public function Hero(){
		}
		
		//读写curGrade
		public function set curGrade(value:int):void{
			_curGrade=value;
			dispatchEvent(new Event(Hero.gradeNotify));
		}
		public function get curGrade():int{
			return _curGrade;
		}
		//读写exp
		public function set exp(value:int):void{
			_exp=value;
			dispatchEvent(new Event(Hero.expNotify));
		}
		public function get exp():int{
			return _exp;
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