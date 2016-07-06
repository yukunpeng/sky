package panels {
	
	import com.Hero;
	import com.TopMenu;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class FailPanel extends PanelBase {
		
		
		public function FailPanel() {
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
		private static var ins:FailPanel;
		public static function getIns():FailPanel{
			if(!FailPanel.ins){
				FailPanel.ins=new FailPanel();
			}
			return FailPanel.ins;
		}
		
	}
	
}
