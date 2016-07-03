package panels {
	
	import com.Hero;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;

	
	
	public class WarPanel extends PanelBase {
		
		
		//设置战报
		public function setReport(str:String):void{
			this["reportTf"].text=str;
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
