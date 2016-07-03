package panels {
	
	import com.Hero;
	import com.TopMenu;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class HomePanel extends PanelBase {
		
		
		public function HomePanel() {
			// constructor code
		}
		
		override protected function onHanel(e:MouseEvent):void
		{
			switch(e.target){
				case this["riskTf"]:
					Main.ins.removeChild(this);
					Main.ins.addChildAt(Risk1Panel.getIns(),0);
					break;
			}
		}
		//获取单例
		private static var ins:HomePanel;
		public static function getIns():HomePanel{
			if(!HomePanel.ins){
				HomePanel.ins=new HomePanel();
			}
			return HomePanel.ins;
		}
		
	}
	
}
