package panels {
	
	import com.Enemy;
	import com.Hero;
	import com.TopMenu;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	import utils.MapManager;
	
	
	public class WinPanel extends PanelBase {
		
		public function reset():void{
			//获得的经验和金币
			this["expTf"].text=Enemy.getIns().exp;
			this["coinTf"].text=Enemy.getIns().coin;
			//怪物的昵称
			this["enemyNickTf"].text=Enemy.getIns().nick;
			//解锁下一个怪
			unLockNext();
		}
		
		private function unLockNext():void{
			//是否解锁下一个怪
			if(Hero.getIns().curLevel!=Hero.getIns().unlockLevel){
				return;
			}
			//当前不在解锁怪物里面
			if(Hero.getIns().curMonsterPos!=Hero.getIns().unlockMonsterPos){
				return;
			}
			//解锁下一个怪物
			if(Hero.getIns().curMonsterPos+1<=MapManager.getIns().getMaxMonsterPos(Hero.getIns().curLevel)){
				//下一个怪物存在，解锁之
				Hero.getIns().unlockMonsterPos=Hero.getIns().curMonsterPos+1;
			}else{
				//下一个怪物不存在
				if(Hero.getIns().curLevel+1<=MapManager.getIns().getMaxLevel()){
					//下一个关卡存在，解锁之
					Hero.getIns().unlockLevel+=1;
					//下一个怪物pos是0
					Hero.getIns().unlockMonsterPos=0;
				}
			}
		}
		
		
		public function WinPanel() {
			// constructor code
		}
		
		override protected function onHanel(e:MouseEvent):void
		{
			switch(e.target){
				case this["okTf"]:
					//切换页面
					Main.ins.removeChild(this);
					Main.ins.addChildAt(Risk2Panel.getIns(),0);
					//重置关卡数据
					Risk2Panel.getIns().resetData();
					break;
			}
		}
		//获取单例
		private static var ins:WinPanel;
		public static function getIns():WinPanel{
			if(!WinPanel.ins){
				WinPanel.ins=new WinPanel();
			}
			return WinPanel.ins;
		}
		
	}
	
}
