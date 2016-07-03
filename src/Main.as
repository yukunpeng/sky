package
{
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	
	import panels.NickPanel;
	
	public class Main extends Sprite
	{
		public static var ins:Main;
		
		public function Main(){
			Main.ins=this;
			stage.scaleMode=StageScaleMode.SHOW_ALL;
			
			addChild(NickPanel.getIns());
		}
	}
}