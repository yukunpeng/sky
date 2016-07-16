package panels {
	
	import com.Hero;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class RolePanel extends PanelBase {
		
		public function reset():void{
			this["nickTf"].text=Hero.getIns().nick;
			this["lifeTf"].text=Hero.getIns().totalLife;
			this["attackTf"].text=Hero.getIns().attack;
			this["defensTf"].text=Hero.getIns().defens;
			this["coinTf"].text=Hero.getIns().coin;
			
			this["expTf"].text=Hero.getIns().exp+"/"+Hero.getIns().gradeExpArr[Hero.getIns().curGrade];
			this["gradeTf"].text=Hero.getIns().curGrade+1;
		}
		
		public function RolePanel() {
			// constructor code
		}
		
		override protected function onHanel(e:MouseEvent):void
		{
			switch(e.target){
				case this["okTf"]:
					Main.ins.removeChild(this);
					Main.ins.addChildAt(HomePanel.getIns(),0);
					break;
			}
		}
		
		//获取单例
		private static var ins:RolePanel;
		public static function getIns():RolePanel{
			if(!RolePanel.ins){
				RolePanel.ins=new RolePanel();
			}
			return RolePanel.ins;
		}

	}
	
	
	
}
