package panels {
	
	import com.Enemy;
	import com.Hero;
	import utils.Tools;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;

	
	
	public class WarPanel extends PanelBase {
		
		public function resetData(nick:String):void{
			//初始化敌人数据
			Enemy.getIns().nick=nick;
			//初始化英雄数据
			Hero.getIns().life=80;
			
			this["enemyNickTf"].text=nick;
			this["enemyAttackTf"].text=Enemy.getIns().attack;
			this["enemyDefenseTf"].text=Enemy.getIns().defens;
			
			this["heroNickTf"].text=Hero.getIns().nick;
			this["heroAttackTf"].text=Hero.getIns().attack;
			this["heroDefenseTf"].text=Hero.getIns().defens;
			
			setReport("遇到了一只"+nick);
		}
		
		//设置战报
		private function setReport(str:String):void{
			this["reportTf"].text=str;
			
			this["enemyLifeTf"].text=Enemy.getIns().life+"/"+Enemy.getIns().totalLife;
			this["heroLifeTf"].text=Hero.getIns().life+"/"+Hero.getIns().totalLife;
		}
		
		public function WarPanel() {
			// constructor code
		}
		
		override protected function onHanel(e:MouseEvent):void
		{
			switch(e.target){
				case this["escapeTf"]:
					Main.ins.removeChild(this);
					Main.ins.addChildAt(Risk2Panel.getIns(),0);
					break;
				case this["attackTf"]:
					var heroHurt:int=Tools.getHurt(Enemy.getIns().attack,Hero.getIns().defens);
					var enemyHurt:int=Tools.getHurt(Hero.getIns().attack,Enemy.getIns().defens);
					
					Hero.getIns().life -= heroHurt;
					Enemy.getIns().life -= enemyHurt;
					if(Hero.getIns().life<=0){
						Main.ins.removeChild(this);
						Main.ins.addChildAt(FailPanel.getIns(),0);
						return;
					}
					if(Enemy.getIns().life<=0){
						Main.ins.removeChild(this);
						Main.ins.addChildAt(WinPanel.getIns(),0);
						return;
					}
					var report:String=Enemy.getIns().nick+":生命-"+enemyHurt+"\n";
					report+=Hero.getIns().nick+":生命-"+heroHurt;
					setReport(report);
					break;
				
			}
		}
		//获取单例
		private static var ins:WarPanel;
		public static function getIns():WarPanel{
			if(!WarPanel.ins){
				WarPanel.ins=new WarPanel();
			}
			return WarPanel.ins;
		}

	}
	
}
