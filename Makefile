
default:
	@echo align
	@echo clean
	@echo compile
	@echo decompile
	@echo emulator
	@echo fromsource: compile sign align install
	@echo help
	@echo install
	@echo kill
	@echo reboot
	@echo sign
	@echo uninstall

decompile:
	apktool d -r -f qqmusic_2005000180.apk -o smali
#               |  |  |
#               |  |  +--- force
#               |  +--- no resources
#               +--- decompile

compile:
	cd upgrades; rsync -vIr smali ..
#       ^^   first copy all modified code over original
	apktool b -f --use-aapt2 smali -o qqmusic_2005000180.unaligned.apk
#               |  |
#               |  +--- force
#               +--- build
#
# now take care of resources
	rm -rf original.u
	mkdir -p original.u
	cd original.u; unzip ../qqmusic_2005000180.apk
	rm -rf compiled.u 
	mkdir -p compiled.u
	cd compiled.u; unzip ../qqmusic_2005000180.unaligned.apk
#
# upgrade existing resources to new version
	cd art/r; copy_to_upgrades.sh
	cd original.u; rsync -vIr r ../compiled.u
#                      ^^^^^   add missing resources to unzipped (because used -d in decompile)
	cd upgrades; rsync -vIr r ../compiled.u
#       ^^  update icons and logos
	rm -f qqmusic_2005000180.unaligned.fixed.apk
	cd compiled.u; zip -r ../qqmusic_2005000180.unaligned.fixed.apk *

sign: keystore
	jarsigner -verbose -sigalg MD5withRSA -digestalg SHA1 -keystore keystore -storepass super_secret_password qqmusic_2005000180.unaligned.fixed.apk keys

keystore:
	keytool -genkey -keystore keystore -alias keys  -keyalg RSA -keysize 2048 -validity 10000

align:
	rm -f qqmusic_2005000180.signed.aligned.apk
	zipalign -v 4 qqmusic_2005000180.unaligned.fixed.apk qqmusic_2005000180.signed.aligned.apk

fromsource: compile sign align install
	@echo OK
	
install:
	adb install qqmusic_2005000180.signed.aligned.apk

uninstall:
	adb shell pm uninstall com.tencent.qqmusic
	adb shell "cd /storage/emulated/0; rm -rf qqmusic* tencent* Android/data/com.tencent.qqmusic-ext"

clean:
	rm -rf qqmusic_2005000180.signed.aligned.apk qqmusic_2005000180.unaligned.apk qqmusic_2005000180.unaligned.fixed.apk
	rm -rf original.u compiled.u
	apktool empty-framework-dir --force

reboot:
	adb reboot

emulator:
	~/Android/Sdk/emulator/emulator -avd Nexus_S_API_28 &

kill:
	for i in $$(adb shell ps | grep qq | awk '{print $$2}'); do echo $$i;  ~/Android/Sdk/platform-tools/adb shell kill $$i; done

