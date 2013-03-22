package net.nodera.ane
{
	import flash.display.BitmapData;
	import flash.external.ExtensionContext;
	
	public class UIActivityANE
	{
		private const EXTENSION_ID:String = 'net.nodera.ane.UIActivityANE';
		private var context:ExtensionContext;
		
		public function isSupported():Boolean
		{
			return true;
		}
		
		public function UIActivityANE()
		{
			context = ExtensionContext.createExtensionContext(EXTENSION_ID, "type");
		}
		
		public function send(initText:String = "", linkURL:String = "", bitmapData:BitmapData = null):void {
			context.call("callActivity", initText, linkURL, bitmapData);
		}
		
		public function dispose():void
		{
			return context.dispose();
		}
	}
}