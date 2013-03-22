SIGNING_OPTIONS=/Users/kazutoyo/Documents/Flash/nodera.p12
DEST_ANE=UIActivityANE.ane
EXTENSION_XML=extension.xml

LIBRARY_SWC=UIActivityANE.swc

adt -package -storetype pkcs12 -keystore $SIGNING_OPTIONS -target ane $DEST_ANE $EXTENSION_XML -swc $LIBRARY_SWC -platform iPhone-ARM -C platform/iphone . -platform iPhone-x86 -C platform/iphone-simulator . -platform default -C platform/default .