package panels {
	
	import com.Enemy;
	import com.Hero;
	import com.MonsterItem;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	import utils.MapManager;
	import utils.MonsterManager;

	
	
	public class Risk2Panel extends PanelBase {
		
		//重置怪物数据
		public function resetData():void{
			var monsterArr:Array=MapManager.getIns().getMonsterArr();
			hideAllMonster();
			for(var i:int=0;i<monsterArr.length;i++){
				//显示解锁的怪物
				if(Hero.getIns().curLevel==Hero.getIns().unlockLevel && i==Hero.getIns().unlockMonster+1){
					return;
				}
				var monsterItem:MonsterItem=this["monster"+i] as MonsterItem;
				monsterItem.visible=true;
				//获取怪物数据
				var monster:Object=MonsterManager.getIns().getMonsterObj(monsterArr[i]);
				//显示怪物名字
				monsterItem.setTxt(monster["name"]);
				//保存怪物id
				monsterItem.id=monsterArr[i];
			}
		}
		
		private function hideAllMonster():void{
			for(var i:int=0;i<10;i++){
				this["monster"+i].visible=false;
			}
		}
		
		public function Risk2Panel() {
			// constructor code
		}
		
		override protected function onHanel(e:MouseEvent):void
		{
			switch(e.target){
				case this["backTf"]:
					Main.ins.removeChild(this);
					Main.ins.addChildAt(Risk1Panel.getIns(),0);
					break;
				case this["monster0"]:
				case this["monster1"]:
				case this["monster2"]:
				case this["monster3"]:
				case this["monster4"]:
				case this["monster5"]:
				case this["monster6"]:
				case this["monster7"]:
				case this["monster8"]:
				case this["monster9"]:
					//获取怪物数据模型
					var monsterItem:MonsterItem=e.target as MonsterItem;
					var monsterObj:Object=MonsterManager.getIns().getMonsterObj(monsterItem.id);
					//初始化敌人数据
					Enemy.getIns().nick=monsterObj["name"];//昵称
					Enemy.getIns().attack=monsterObj["attack"];//攻击
					Enemy.getIns().defens=monsterObj["defens"];//防御
					Enemy.getIns().life=monsterObj["life"];//当前生命
					Enemy.getIns().totalLife=monsterObj["life"];//总生命
					//掉落金币
					if(monsterObj["coin"]){
						Enemy.getIns().coin=monsterObj["coin"];
					}else{
						Enemy.getIns().coin=0;
					}
					//掉落经验
					if(monsterObj["exp"]){
						Enemy.getIns().exp=monsterObj["exp"];
					}else{
						Enemy.getIns().exp=0;
					}
										
					WarPanel.getIns().resetData();
					//切换页面
					Main.ins.removeChild(this);
					Main.ins.addChildAt(WarPanel.getIns(),0);
					break;
			}
		}
		//获取单例
		private static var ins:Risk2Panel;
		public static function getIns():Risk2Panel{
			if(!Risk2Panel.ins){
				Risk2Panel.ins=new Risk2Panel();
			}
			return Risk2Panel.ins;
		}

	}
	
}
