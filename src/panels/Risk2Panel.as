package panels {
	
	import com.Hero;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;

	
	
	public class Risk2Panel extends PanelBase {
		
		
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
				case this["mouseTf"]:
					Main.ins.removeChild(this);
					Main.ins.addChildAt(WarPanel.getIns(),0);
					WarPanel.getIns().setReport("遇到地鼠一只");
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
