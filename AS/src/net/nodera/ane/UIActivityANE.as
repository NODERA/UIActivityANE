package net.nodera.ane
{
	import flash.display.BitmapData;
	import flash.external.ExtensionContext;
	import flash.system.Capabilities;
	
	public class UIActivityANE
	{
		private const EXTENSION_ID:String = 'net.nodera.ane.UIActivityANE';
		private var context:ExtensionContext;
		
		public function get isSupported():Boolean
		{
			var result:Boolean = Capabilities.manufacturer.search('iOS') > -1;
			trace('Push notification is'+(result ? ' ' : ' not ')+'supported');
			return result;
		}
		
		public function UIActivityANE()
		{
			context = ExtensionContext.createExtensionContext(EXTENSION_ID, null);
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