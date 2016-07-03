package panels {
	
	import com.Hero;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;

	
	
	public class Risk1Panel extends PanelBase {
		
		
		public function Risk1Panel() {
			// constructor code
		}
		
		override protected function onHanel(e:MouseEvent):void
		{
			switch(e.target){
				case this["backTf"]:
					Main.ins.removeChild(this);
					Main.ins.addChildAt(HomePanel.getIns(),0);
					break;
				case this["grassTf"]:
					Main.ins.removeChild(this);
					Main.ins.addChildAt(Risk2Panel.getIns(),0);
					break;
			}
		}
		//获取单例
		private static var ins:Risk1Panel;
		public static function getIns():Risk1Panel{
			if(!Risk1Panel.ins){
				Risk1Panel.ins=new Risk1Panel();
			}
			return Risk1Panel.ins;
		}

	}
	
}
