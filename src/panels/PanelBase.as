package panels
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class PanelBase extends Sprite
	{
		public function PanelBase()
		{
			super();
			addEventListener(MouseEvent.CLICK,onHanel);
		}
		
		protected function onHanel(e:MouseEvent):void{
			
		}
	}
}