package com
{
	public class Tools
	{
		public static function getHurt(attack:int,defens:int):int{
			var hurt:Number=attack-defens;
			//伤害至少为1
			if(hurt<=0){
				return 1;
			}
			//伤害0.6-1.4倍
			return Math.ceil((6 + Math.random()*8)/10);
		}
	}
}