package panels {
	
	import com.Hero;
	import com.TopMenu;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class NickPanel extends PanelBase {
		
		
		public function NickPanel() {
			// constructor code
		}
		
		override protected function onHanel(e:MouseEvent):void
		{
			switch(e.target){
				case this["okBtn"]:
					Hero.getIns().nick=this["nickTf"].text;
					Main.ins.removeChild(this);
					Main.ins.addChild(HomePanel.getIns());
					Main.ins.addChild(TopMenu.getIns());
					break;
			}
		}
		//获取单例
		private static var ins:NickPanel;
		public static function getIns():NickPanel{
			if(!NickPanel.ins){
				NickPanel.ins=new NickPanel();
			}
			return NickPanel.ins;
		}
		
	}
	
}
