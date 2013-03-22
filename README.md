UIActivityANE
=============

UIActivity Native Extension for Adobe AIR

This Native Extension require iOS6+ and Adobe AIR 3.5+!!

##Usage
	import net.nodera.ane.UIActivityANE;

	var bmd:BitmapData = new BitmapData(800, 600);
	bmd.draw(bitmap);

	var activity:UIActivityANE = new UIActivityANE();
	if(activity.isSupported()) {		activity.send("message", "http://example.com/", bmd);	}


