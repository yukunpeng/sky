package panels {
	
	import com.Enemy;
	import com.Hero;
	import com.TopMenu;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class WinPanel extends PanelBase {
		
		public function reset():void{
			this["expTf"].text=Enemy.getIns().exp;
			this["coinTf"].text=Enemy.getIns().coin;
			this["enemyNickTf"].text=Enemy.getIns().nick;
		}
		
		public function WinPanel() {
			// constructor code
		}
		
		override protected function onHanel(e:MouseEvent):void
		{
			switch(e.target){
				case this["okTf"]:
					Main.ins.removeChild(this);
					Main.ins.addChildAt(Risk2Panel.getIns(),0);
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
